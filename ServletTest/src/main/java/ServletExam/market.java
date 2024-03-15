package ServletExam;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class market {
	
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("EUC-KR");//순서가 반드시 여기여야함
		resp.setCharacterEncoding("EUC-KR");
		resp.setContentType("text/html;charset=EUC-KR");
		
		
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
