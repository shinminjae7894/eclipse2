<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1>exam1.jsp</h1>

	<%
		request.setAttribute("first", "request 객체");
		session.setAttribute("first", "session 객체");
		application.setAttribute("first", "application 객체");
		pageContext.setAttribute("first", "pageContext 객체");
	%>
	request : <%=request.getAttribute("first") %><br>
	session : <%=session.getAttribute("first") %><br>
	application : <%=application.getAttribute("first") %><br>
	pageContext : <%=pageContext.getAttribute("first") %><br>
	<hr>
	<%//@include file="Exam2.jsp" %><!-- 진짜로 코드를 하나로 합쳐서 컴파일 함 -->
	<jsp:include page="Exam2.jsp" /> <!-- 값을 포함한다는 의미,exam2로 페이지 이동 함(요청에 이한),별도로 코드가 따로 만들어짐(따로 컴파일,따로 실행),페이지이동의 개념 -->
</body>
</html>