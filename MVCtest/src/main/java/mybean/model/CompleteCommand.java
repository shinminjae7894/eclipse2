package mybean.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CompleteCommand implements Icommand{
	
	public Object processCommand(HttpServletRequest req, HttpServletResponse res) {
		//DB연동
		return "/WEB-INF/view/member/registerComplete.jsp";
	}
}
