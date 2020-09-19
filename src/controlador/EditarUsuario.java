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
 * Servlet implementation class EditarUsuario
 */
@Transactional
@WebServlet("/EditarUsuario")
public class EditarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	@PersistenceContext (unitName="adminReChordPU")
	private EntityManager em;
	
	/**
	 * doGet utiliza el dato id para buscar el idUsuario en la base de datos con el método find(),
	 * posteriormente lo almacena en un objeto Usuario.
	 * 
	 * @param - request es el objeto con la información recibida desde el browser.
	 * @param - response es el objeto que contendrá la información que enviaremos como respuesta al browser.
	 *  
	 * @return - void
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String idStr = request.getParameter("id");
		Usuario usuario = em.find(Usuario.class, new Integer(idStr));
		request.setAttribute("usuario", usuario);
		request.getRequestDispatcher("editar.jsp").forward(request, response);
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