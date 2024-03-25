package mybean.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ConfirmCommand implements Icommand{

	public Object processCommand(HttpServletRequest req, HttpServletResponse res) {
		Member dto = new Member();
		dto.setId(req.getParameter("id"));
		dto.setPw(req.getParameter("pw"));
		dto.setEmail(req.getParameter("email"));
		
		req.setAttribute("dto", dto);;
		
		return "/WEB-INF/view/member/registerConfirm.jsp";
	}
}
