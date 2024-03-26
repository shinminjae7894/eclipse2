package mybean.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/front")//외부에서 접근하기 위함
public class FrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String cmd = req.getParameter("command");
		String url = null;
		
		if(cmd.equals("DEPART")) {
			url = "department.html";
		}
		else if(cmd.equals("SHOP")) {
			url = "/book?command=shop";
		}
		else {
			url ="/mem?command=register";
		}
		
		RequestDispatcher view = req.getRequestDispatcher(url);
		view.forward(req, resp);
	}
	
}
