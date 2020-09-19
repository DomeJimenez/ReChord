package controlador;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.Usuario;

/**
 * @author Alex Ricardo Aguacondo Tapia -
 * 		   Doménica Camila Jiménez Supe -
 * 		   Jhoann Sebastián Rueda Vanegas -
 *			
 *
 * Servlet implementation class VerificarLogin
 */
@WebServlet("/VerificarLogin")
public class VerificarLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    @PersistenceContext (unitName="adminReChordPU")
	private EntityManager em;
    
    /**
	 * doGet que verifica los datos ingresados en la jsp index y los envía a la base de datos para comprobar que
	 * las credenciales de ese usuario se encuentren registradas.
	 * 
	 * @param - request es el objeto con la información recibida desde el browser.
	 * @param - response es el objeto que contendrá la información que enviaremos como respuesta al browser.
	 *  
	 * @return - void
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		@SuppressWarnings("unused")
		HttpSession session = request.getSession();
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		if(email.trim().equals("")||password.trim().equals(""))
		{
			request.setAttribute("valEmail", email);
			request.setAttribute("valError", "Existen campos sin llenar.");
			
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		else
		{
			try 
			{
				Query q = em.createQuery("SELECT u FROM Usuario as u WHERE email = '"+ email +"'", Usuario.class);
				Usuario usuario = (Usuario)q.getSingleResult();
				
				if(email.trim().equals(usuario.getEmail().trim()) && password.trim().equals(usuario.getContrasenia().trim()))
				{
					request.setAttribute("valId", usuario.getId());
					request.setAttribute("valNombre", usuario.getNombre());
					request.setAttribute("valApellido", usuario.getApellido());
					request.getRequestDispatcher("guitarra.jsp").forward(request, response);
				}
				else
				{
					request.setAttribute("valEmail", email);
					request.setAttribute("valError", "Datos incorrectos.");
					request.getRequestDispatcher("index.jsp").forward(request, response);
				}
			}
			catch(Exception e) 
			{
				request.setAttribute("valError", "Existen campos sin llenar.");
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
		}
	}
    
	/**
	 * doPost utiliza la implementación del método doGet.
	 * 
	 * @param - request es el objeto con la información recibida desde el browser.
	 * @param - response es el objeto que contendrá la información que enviaremos como respuesta al browser.
	 *  
	 * @return - void
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
