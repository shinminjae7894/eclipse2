package mybean.model;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Icommand {
	public Object processCommand(HttpServletRequest req, HttpServletResponse res);
		
}
