import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RequestHeaderinfo extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");//현재부터 모든 text의 값이 html이다
		
		Enumeration e = req.getHeaderNames();
		while(e.hasMoreElements()) {
			out.println(e.nextElement()+"<br>");
		}
		
		out.println("<hr/>");
		out.println("host : " + req.getHeader("host")+"<br>");
		out.println("sec-ch-ua : " + req.getHeader("sec-ch-ua")+"<br>");
		out.println("sec-ch-ua-plaform : " + req.getHeader("sec-ch-ua-plaform")+"<br>");
		out.println("user-agent : " + req.getHeader("user-agent")+"<br>");
		out.println("accept-langage : " + req.getHeader("accept-langage")+"<br>");
		out.println("Client IP : " + req.getRemoteAddr());
		
		out.close();
	}

}
