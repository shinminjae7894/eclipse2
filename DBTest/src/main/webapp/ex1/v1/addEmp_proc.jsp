<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// html에서 전달한 데이터 받아오기
		request.setCharacterEncoding("utf-8");
	%><!-- bean을 생성 하고 거기다 저장 -->
	<jsp:useBean id="dto" class="mybean.dto.Employee" /> 
	<jsp:setProperty property="*" name="dto" />
	
	<jsp:useBean id="dao" class="mybean.dao.EmployeeDao" />
	<%
		dao.setEmp(dto);//dto가 객체라 액션태그 못함
	%>
	
		<script>
			alert("잘 추가되었습니다.");
		</script>

		<ul>
			<li><a href="index.jsp">메인 페이지로</a></li>
			<li><a href="addEmp.html">추가 페이지로</a></li>
		</ul>
</body>
</html>