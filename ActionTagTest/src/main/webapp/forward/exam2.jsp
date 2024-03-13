<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1>exam2.jsp</h1>
	irum : <%= request.getParameter("irum") %>
	<%--<jsp:forward page="exam3.jsp" /> --%> <!-- 받은데이터를 exam3에게 다시전달,exam2가 시작페이지가 됨,가기만함(돌아오지않음) -->
	
	<%
		RequestDispatcher dispatcher = 
			request.getRequestDispatcher("/forward/exam3.jsp");
		dispatcher.forward(request,response);
	%>
</body>
</html>