package unsa.edu;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.*;

import com.google.appengine.api.datastore.Key;

import unsa.edu.Curso;
import unsa.edu.PMF;
@SuppressWarnings("serial")
public class RegistroCurso extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		resp.setContentType("text/html");
		
		String nomcurso = req.getParameter("nomcurso");
		int creditos = Integer.parseInt(req.getParameter("creditos"));
		String codigo =req.getParameter("codigo");
		String profesor = req.getParameter("profesor");
		String deptacademico = req.getParameter("deptacademico");
		String prerequisitos = req.getParameter("prerequisitos");
		int horas = Integer.parseInt(req.getParameter("horas"));
		int grupos = Integer.parseInt(req.getParameter("grupos"));
		
		Curso c = new Curso( nomcurso, creditos,codigo, profesor, deptacademico, prerequisitos,  horas, grupos);
		//System.out.println(p.getNomcurso());
		PersistenceManager pm = PMF.get().getPersistenceManager();
		
		try {
			pm.makePersistent(c);
			RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/registroCurso.jsp");
			rd.forward(req, resp);
			resp.getWriter().print("GUARDADO\n" + c.toString());
		} catch (Exception e) {
			resp.getWriter().print("ERROR");
		} finally {
			pm.close();
		}
	}
}
