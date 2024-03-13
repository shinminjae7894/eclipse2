<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>scopeExam2.jsp</title>
</head>
<body>
	<h2>session에 값 확인</h2>
	<%= session.getAttribute("i")%>
	<br><br>
	<h2>application에 값 확인</h2><!-- 전역변수를 써야할때만 application 사용 -->
	<%=	application.getAttribute("j")%><br>
	<%= application.getInitParameter("company") %>
	<br><br>
	<h2>pageContext에 값 확인</h2><!-- 가급적 pageContext 사용 -->
	<%=	pageContext.getAttribute("k")%>
	<%= pageContext.getAttribute("x", pageContext.APPLICATION_SCOPE) %>
</body>
</html>