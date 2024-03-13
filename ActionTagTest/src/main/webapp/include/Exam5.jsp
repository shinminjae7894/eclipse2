<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int i=100;
	%>
	<jsp:include page="header.jsp" /><!-- 지시자로 하게되면 에러 페이지가 합쳐졌기때문에 변수 중복 -->
	<h1>exam5.jsp</h1>
	<%@include file="footer.jsp" %>
</body>
</html>