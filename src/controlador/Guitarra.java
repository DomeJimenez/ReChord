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

import modelo.Acorde;

/**
 * @author Alex Ricardo Aguacondo Tapia -
 * 		   Doménica Camila Jiménez Supe -
 * 		   Jhoann Sebastián Rueda Vanegas -
 *			
 *
 * Servlet implementation class Guitarra
 */
@WebServlet("/Guitarra")
public class Guitarra extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@PersistenceContext (unitName="adminReChordPU")
	private EntityManager em;
	
	/**
	 * doGet verifica los casilleros marcados, en caso de encontrar un casillero marcado se redirige a la jsp
	 * guitarra con el resultado de la búsqueda de dicho acorde, caso contrario redirige a la jsp guitarra con
	 * el mensaje "No se econtró el acorde.".
	 * 
	 * @param - request es el objeto con la información recibida desde el browser.
	 * @param - response es el objeto que contendrá la información que enviaremos como respuesta al browser.
	 *  
	 * @return - void
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String id = request.getParameter("id");
		String acorde = "";
		
		for(int i=0; i<13; i++) {
			for(int j=0; j<6; j++) {
				String dato = request.getParameter("" + j + i);
				if(dato!=null) {
					acorde += dato; 
				}
			}
		}
		
		if(acorde.trim().equals("")) {
			request.setAttribute("valorAcorde","Por favor, seleccione las notas.");
			request.setAttribute("valNombre", nombre);
			request.setAttribute("valApellido", apellido);
			request.setAttribute("valId", id);
			request.getRequestDispatcher("guitarra.jsp").forward(request,response);
		}else{
			try {
				Query q = em.createQuery("SELECT a FROM Acorde AS a WHERE formaAcorde = '" + acorde + "'", Acorde.class);
				Acorde ac = (Acorde) q.getSingleResult();
				request.setAttribute("valorAcorde","Acorde: "+ac.getIdAcorde()); 
			} catch (Exception e) {
				request.setAttribute("valorAcorde","No se econtró el acorde.");
			}
			request.setAttribute("valNombre", nombre);
			request.setAttribute("valApellido", apellido);
			request.setAttribute("valId", id);
			request.getRequestDispatcher("guitarra.jsp").forward(request,response);
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