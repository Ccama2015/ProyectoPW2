package unsa.edu;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import unsa.edu.Curso;

public class EliminarCurso extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		PersistenceManager pm = PMF.get().getPersistenceManager();
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");
		
		Query q = pm.newQuery(Curso.class);
		String codigo= req.getParameter("codigo");
		
		String temp = "";
		
		if(!codigo.equals("")){
			q.setFilter("codigo == codigoParam");
			q.declareParameters("String codigoParam");
			temp = codigo;
		}
		System.out.println(codigo);
		try{
			List<Curso> lista = (List<Curso>) q.execute(temp);
			out.println("<ul>");
			
			for(Curso p: lista){
				out.print("<li>");
				out.println(p);
				pm.deletePersistent(p);
			}
			out.println("EXITO AL BORRAR :D");
		
			out.println("<ul>");
		}catch(Exception e){
			
		}finally{
			 q.closeAll();
		}
		
	}
}
