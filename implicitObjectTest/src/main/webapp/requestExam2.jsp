<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Date today = (Date)request.getAttribute("currentDate");
	%>
	오늘은 <%=today %>입니다.
	<br><br>
	
	<%
		request.setAttribute("currentDate" , new Date());
		today = (Date)request.getAttribute("currentDate");
	%>
	오늘은 <%=today %>입니다.
	
	<%
		request.removeAttribute("currentDate");
		today = (Date)request.getAttribute("currentDate");
	%>
	오늘은 <%=today %>입니다.
</body>
</html>










