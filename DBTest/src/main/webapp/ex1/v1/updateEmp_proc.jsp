<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>updateEmp_proc.jsp</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	<jsp:useBean id="dto" class="mybean.dto.Employee" /><!-- class 객체를 생성 -->
	<jsp:setProperty property="*" name="dto" /><!-- class객체에 데이터 저장 -->
		
	<jsp:useBean id="dao" class="mybean.dao.EmployeeDao" />
	<% dao.updateEmp(dto); %>
		
	<script>
		alert("잘 수정되었습니다.");
	</script>

	<ul>
		<li><a href="index.jsp">메인 페이지로</a></li>
		<li><a href="addEmp.html">추가 페이지로</a></li>
	</ul>
	
</body>
</html>