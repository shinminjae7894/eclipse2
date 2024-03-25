package mybean.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybean.model.CompleteCommand;
import mybean.model.ConfirmCommand;
import mybean.model.Icommand;
import mybean.model.Member;
import mybean.model.RegisterCommand;

@WebServlet("/mem")
public class MemberController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		/*
		String command = req.getParameter("command");
		String url = null;
		
		if(command.equals("register")) {
			url = "/WEB-INF/view/member/register.html";
		}
		else if(command.equals("confirm")) {
			//방어 코드
			Member dto = new Member();
			dto.setId(req.getParameter("id"));
			dto.setPw(req.getParameter("pw"));
			dto.setEmail(req.getParameter("email"));
			
			req.setAttribute("dto", dto);;
			
			url = "/WEB-INF/view/member/registerConfirm.jsp";
		}
		else if(command.equals("complete")) {
			//방어 코드
			
			//DB연동
			url = "/WEB-INF/view/member/registerComplete.jsp";
		}
		
		RequestDispatcher view = req.getRequestDispatcher(url);
		view.forward(req,resp);
		*/
		String command = req.getParameter("command");
		String url = null;
		Icommand icmd = null;
		
		if(command.equals("register")) {
			icmd = new RegisterCommand();
		}
		else if(command.equals("confirm")) {
			//방어 코드
			icmd = new ConfirmCommand();
		}
		else if(command.equals("complete")) {
			//방어 코드
			icmd = new CompleteCommand();
		}
		url = (String)icmd.processCommand(req, resp);
		RequestDispatcher view = req.getRequestDispatcher(url);
		view.forward(req,resp);
	}
	
}
