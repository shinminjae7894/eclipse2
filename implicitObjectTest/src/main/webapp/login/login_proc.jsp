<%@ page contentType="text/html; charset=utf-8"%>

<%

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(id.equals("minjae") && pw.equals("1111")){
		session.setAttribute("id",id);//session저장 : 인증처리 아이디 패스워드를 통과했다는 의미가 됨
		response.sendRedirect("index.jsp");
	}
	else{
		response.sendRedirect("login.jsp");
	}
%>
 
	
	

