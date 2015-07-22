package unsa.edu;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.*;



@SuppressWarnings("serial")
public class ModificarNombre extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		PersistenceManager pm = PMF.get().getPersistenceManager();
		Query q = pm.newQuery(Alumnos.class);
		
		String cui = req.getParameter("cui");
		String dato=req.getParameter("dato");
		String nombre=req.getParameter("nombre");
	
		q.setFilter("cui == cuiParam");
		q.declareParameters("String cuiParam");
		
		try{
			List<Alumnos> alu = (List<Alumnos>) q.execute(cui);
			resp.getWriter().println("<p>EXITO EN CAMBIAR</p>");
			resp.getWriter().println("<p>El siguiente nombre</p>");
			for(Alumnos p: alu){
				resp.getWriter().println(p.toString() + "\n");
				resp.getWriter().println("<p>Se modifico" + p.getNombre() + " por " + nombre);
				 if(dato.equals("nombre"))
			        {
			            p.setNombre(nombre);
			        }
				 if(dato.equals("ApellidoPaterno"))
			        {
			            p.setApellidoPaterno(nombre);
			        }
				 if(dato.equals("ApellidoMaterno"))
			        {
			            p.setApellidoMaterno(nombre);
			        }
				 
				 if(dato.equals("Direccion"))
			        {
			            p.setDireccion(nombre);
			        }
				 if(dato.equals("Ciudad"))
			        {
			            p.setCiudad(nombre);
			        }
				 if(dato.equals("Distrito"))
			        {
			            p.setDistrito(nombre);
			        }
				
				 if(dato.equals("FechaN"))
			        {
			            p.setApellidoMaterno(nombre);
			        }
				 if(dato.equals("Sexo"))
			        {
			            p.setSexo(nombre);
			        }
				 if(dato.equals("NombreAp"))
			        {
			            p.setNombreAp(nombre);
			        }
				 if(dato.equals("DireccionAp"))
			        {
			            p.setDireccionAp(nombre);
			        }
				 if(dato.equals("DNI"))
			        {
			            p.setDni(nombre);
			        }
				 if(dato.equals("TelefonoA"))
			        {
			            p.setNumTelefono(nombre);
			        }
				 if(dato.equals("TelefonoAp"))
			        {
			            p.setTelefonoAp(nombre);
			        }
				 
				
			}
			
		}catch(Exception e){
			resp.getWriter().print("Ups .. ERROR");
		}finally{
			 q.closeAll();
		}
	}
}
