package mybean;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/eltest.do")
public class EltestServlest extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		
		String name = req.getParameter("name");
		//req.setAttribute("name", name);//이미 req에 담겨져 있기 때문에 다시 담을 필요없음
		req.setAttribute("visitCount", 100);
		
		String[] favorateFoods = {"냉면", "돼지갈비", "순대국", "콩국수", "파스타"};
		req.setAttribute("foods", favorateFoods);
		
		Person hong = new Person();
		Dog popee = new Dog();
				
		hong.setName("홍길동");
		popee.setName("뽀삐");
		
		hong.setDog(popee);
		req.setAttribute("hong", hong);
		
		ArrayList<String> movies = new ArrayList<String>();
		movies.add("영웅본색1");
		movies.add("영웅본색2");
		movies.add("영웅본색3");
		movies.add("영웅본색4");
		req.setAttribute("movies", movies);
		
		String[] comment = {"이 사이트는 매우 훌륭합니다.",
				"정말 좋은 사이트인듯...",
				"좋네요"};
		
		//RequestDispatcher view = req.getRequestDispatcher("Test7.jsp");
		RequestDispatcher view = req.getRequestDispatcher("core/test4.jsp");
		view.forward(req, resp);
	}
}
