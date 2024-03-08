import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test4 extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
		
		PrintWriter out = resp.getWriter();
		out.println("<html><body>");
		
		Enumeration<String> en = req.getParameterNames(); 
		while(en.hasMoreElements()) {
			String name = en.nextElement();
			if(name != null) {
				String[] values = req.getParameterValues(name);
				out.println("당신이 선택한" + name + "은 다음과 같습니다.<br>");
				out.println("<ul>");
				
				for(String s : values) {
					out.println("<li>" + s + "</li>");
				}
				
				out.println("</ul>");
			}
			
		}
			out.println("<body></body>");
			out.close();
			
		}

	}
	
