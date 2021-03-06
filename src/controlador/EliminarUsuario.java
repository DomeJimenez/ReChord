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
 * 		   Dom�nica Camila Jim�nez Supe -
 * 		   Jhoann Sebasti�n Rueda Vanegas -
 *			
 *
 * Servlet implementation class EliminarUsuario
 */
@Transactional
@WebServlet("/EliminarUsuario")
public class EliminarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	@PersistenceContext (unitName="adminReChordPU")
	private EntityManager em;

	/**
	 * doGet utiliza el dato id para buscar el idUsuario en la base de datos con el m�todo find(),
	 * posteriormente lo almacena en un objeto Usuario y lo elimina utilizando el m�todo remove().
	 * 
	 * @param - request es el objeto con la informaci�n recibida desde el browser.
	 * @param - response es el objeto que contendr� la informaci�n que enviaremos como respuesta al browser.
	 *  
	 * @return - void
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		Usuario u = em.find(Usuario.class, new Integer(id));
		em.remove(u);
		request.getRequestDispatcher("index.jsp").forward(request,response);
	}

	/**
	 * doPost utiliza la implementaci�n del m�todo doGet.
	 * 
	 * @param - request es el objeto con la informaci�n recibida desde el browser.
	 * @param - response es el objeto que contendr� la informaci�n que enviaremos como respuesta al browser.
	 *  
	 * @return - void
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
}