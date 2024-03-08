import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test3Servlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("EUC-KR");//순서가 반드시 여기여야함
		resp.setCharacterEncoding("EUC-KR");
		resp.setContentType("text/html;charset=EUC-KR");
		
		/*
		String[] singers = req.getParameterValues("singer");//이름이 같은게 여러개이므로 배열로 받아옴
		String[] foods = req.getParameterValues("food");
		String[] cities = req.getParameterValues("city");
		
		PrintWriter out = resp.getWriter();
		out.println("<html><body>");
		out.println("<h2>당신이 좋아하는 가수는 다음과 같습니다.</h2>");
		out.println("<ul>");
		
		for(int i=0; i<singers.length; i++) {
			out.println("<li>"+singers[i]+"</li>");
		}
		out.println("</ul>");
		
		out.println("<h2>당신이 좋아하는 음식은 다음과 같습니다.</h2>");
		
		out.println("<ul>");
			if(foods != null) {
				for(String f : foods) {
					out.println("<li>"+ f +"</li>");
				}
			}
			else {
				out.println("<li>선택한 값이 없습니다</li>");
			}
		out.println("</ul>");
		
		out.println("<h2>당신이 좋아하는 도시는 다음과 같습니다.</h2>");
		
		out.println("<ul>");
			if(cities != null) {
				for(String c : cities) {
					out.println("<li>"+ c +"</li>");
				}
			}
			else {
				out.println("<li>선택한 값이 없습니다</li>");
			}
		out.println("</ul>");
		
		out.println("</body></html>");
		out.close();
		*/
		
		PrintWriter out = resp.getWriter();
		out.println("<html><body>");
		
		Enumeration<String> en = req.getParameterNames(); //singer,food,city 라는 모든 변수들을 가져욤 = en
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


