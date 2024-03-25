package mybean.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterCommand implements Icommand{
	
	public Object processCommand(HttpServletRequest req, HttpServletResponse res) {
		
		return "/WEB-INF/view/member/register.html";
	}
}
