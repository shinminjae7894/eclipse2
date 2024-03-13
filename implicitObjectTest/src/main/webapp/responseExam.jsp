<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>responseExam</title>
</head>
<body>
	 1.다른 페이지로 이동
	 <%
		//response.sendRedirect("https://www.naver.com");
		//response.sendRedirect("requestExam1.html");
	 %>
	 
	 <br><br>
	 2.선택에의해 페이지 이동
	 <%
	 	String param = request.getParameter("param");
	 	if(param == null || param.isEmpty()){
	 		out.println("페이지 이동을 하지 않습니다");//끊지않고 사용할 때,안쓰는게 좋음
	 	}
	 	else{
	 		response.sendRedirect("requestExam1.html");
	 	}//http://localhost:8080/implicitObjectTest/responseExam.jsp?param==a;
	%>
</body>
</html>