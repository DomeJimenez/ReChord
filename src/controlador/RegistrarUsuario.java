package controlador;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.Transactional;

import modelo.Usuario;

/**
 * @author Alex Ricardo Aguacondo Tapia -
 * 		   Doménica Camila Jiménez Supe -
 * 		   Jhoann Sebastián Rueda Vanegas -
 *			
 *
 * Servlet implementation class RegistrarUsuario
 */
@Transactional
@WebServlet("/RegistrarUsuario")
public class RegistrarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	@PersistenceContext (unitName="adminReChordPU")
	private EntityManager em;
	
	/**
	 * doGet recibe los datos de la jsp registro, los almacena dentro de un objeto Usuario y lo guarda dentro de
	 * la base de datos utilizando el método persist().
	 * 
	 * @param - request es el objeto con la información recibida desde el browser.
	 * @param - response es el objeto que contendrá la información que enviaremos como respuesta al browser.
	 *  
	 * @return - void
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("correo");
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String contrasenia = request.getParameter("pass");
		String fecha = request.getParameter("fecha");
		
		if(email.trim().equals("")||nombre.trim().equals("")||apellido.trim().equals("")||contrasenia.trim().equals("")||fecha.trim().equals("")) {
			request.setAttribute("valCorreo",email);
			request.setAttribute("valNombre",nombre);
			request.setAttribute("valApellido",apellido);
			request.setAttribute("valPass",contrasenia);
			request.setAttribute("valFecha",fecha);
			request.setAttribute("valError","Existen campos sin llenar");
			
			request.getRequestDispatcher("registro.jsp").forward(request,response);
		}else {
			Usuario u = new Usuario();
			u.setEmail(email);
			u.setNombre(nombre);
			u.setApellido(apellido);
			u.setContrasenia(contrasenia);
			u.setFecha(fecha);
			
			em.persist(u);
			
			request.getRequestDispatcher("index.jsp").forward(request,response);
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
