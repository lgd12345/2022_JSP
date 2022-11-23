package ch18.coms.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch18.com.model.LoginBean;
import ch18.com.model.Person;

public class ControllerServlet2 extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		

		String id = request.getParameter("name");
		String password = request.getParameter("email");

		Person p = new Person();
		p.setId(id);
		p.setPassword(password);
		request.setAttribute("p", p);

		boolean status = p.validate();

		if (status) {
			RequestDispatcher rd = request.getRequestDispatcher("mvc_success2.jsp");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("mvc_error2.jsp");
			rd.forward(request, response);
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
}
