import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SungjukServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int kor = Integer.parseInt(req.getParameter("kor"));
		int eng = Integer.parseInt(req.getParameter("eng"));
		int mat = Integer.parseInt(req.getParameter("mat"));//프론트엔드가 넘겨준 데이터를 받아오는 방법, 값을 하나씩만 받음
		String calc = req.getParameter("calc");
		
		int result = 0;
		if(calc.equals("tot"))
			result = (kor + eng + mat);
		else 
			result = (kor + eng + mat)/3;
		
		PrintWriter out = resp.getWriter();
		out.println("<html><body>");
		out.println("결과 : " + result);
		out.println("</body></html>");
		
		out.close();//프론트엔드한테 다시 넘겨줌
	}

}
