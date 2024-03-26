<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setAttribute("cnt1", 100);%>
	
	<hr>
	<% out.println(request.getAttribute("cnt1"));%>
	
	<%= request.getAttribute("cnt1")%><br>
	
	<%
		int cnt2 = (Integer)request.getAttribute("cnt1");
	%>
	<%= cnt2 %><br>
	<hr>
	
	${cnt1}<br><!-- attribute이름이 올수도있다 -->
	${requestScope.cnt1}<br> <!-- EL 내장객체,null값 오류가 나지않음 -->
	${pageScope.cnt1} <!-- 안나옴 -->
	
	<% session.setAttribute("cnt3", 300); %>
	${cnt3} <br>
	${sessionScope.cnt3}<br>
	${sessionScope["cnt3"]}<!-- 문자열로 바꿔줘야함 -->

	
</body>
</html>