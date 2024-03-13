<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<% int i; %>
	<h1>exam3.jsp</h1>
	exam4에게 데이터를 전달<br>
	1. url을 이용 : http://localhost:8080/ActionTagTest/include/exam4.jsp?id=hong&addr=seoul<br>
	2. 하이퍼링크를 이용<br>
	3. 폼태그를 이용<br>
	4. ActionTag를 이용(include)<br>
	<jsp:include page="Exam4.jsp">
		<jsp:param name="id" value="hong"/>
		<jsp:param name="addr" value="seoul"/>
	</jsp>
</body>
</html>