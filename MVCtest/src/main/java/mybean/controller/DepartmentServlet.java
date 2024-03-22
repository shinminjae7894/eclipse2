package mybean.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybean.model.DepartmentBean;

@WebServlet("/depart")//요청이 들어오면 서블릿이 실행할 수 있게함,servlet에서 /는 이름까지 포함(http://localhost:8080/MVCtest/depart)
public class DepartmentServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String depart = req.getParameter("depart");
		
		DepartmentBean bean = new DepartmentBean();
		ArrayList<String> advice = bean.getAdvice(depart);
		
		req.setAttribute("advice", advice);//request라는 탁자위에 결과를 올려놓음
		
		RequestDispatcher dispatcher = 
				req.getRequestDispatcher("/WEB-INF/view/depart_proc.jsp");
			
		dispatcher.forward(req,resp);
	}
}
