package Persistence;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/sessConfirm")
public class SessionConfirmServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		
		PrintWriter out = resp.getWriter();
		out.println("<html><body>");
		out.println("name : "+ session.getAttribute("name")+ "<br>");
		out.println("address : " + session.getAttribute("addr")+ "<br>");
		out.println("Connection Time : " + new Date(session.getCreationTime())+ "<br>");//session에선 접속시간이 만들어진 시간
		out.println("Expired Time : " + session.getMaxInactiveInterval()+ "<br>");//만료시간,30분동안 아무것도없으면 만료한다
		out.println("New : " + session.isNew()+ "<br>");//true(새로접속),false(방문했었음)
		out.println("</body></html>");
		out.close();

	}
}
