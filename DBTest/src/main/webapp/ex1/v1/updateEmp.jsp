<%@page import="mybean.dto.Employee"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>updateEmp.jsp</title>
</head>
<jsp:useBean id="dao" class="mybean.dao.EmployeeDao" />

<%
String e_no = request.getParameter("e_no");
Employee emp = dao.getEmp(e_no);
String e_address = emp.getE_address();
%>
<body>
	<h1>직원 수정</h1>
	<form action="updateEmp_proc.jsp" method="post">
		<input type="hidden" name="e_no" value="<%=e_no%>" />
		<table border="1">
			<tr>
				<th>아이디</th>
				<td><input type="text" name="e_id" value="<%=emp.getE_id()%>" /></td>
			</tr>

			<tr>
				<th>이름</th>
				<td><input type="text" name="e_name"
					value="<%=emp.getE_name()%>" /></td>
			</tr>

			<tr>
				<th>패스워드</th>
				<td><input type="password" name="e_pass"
					value="<%=emp.getE_pass()%>" /></td>
			</tr>

			<tr>
				<th>근무지</th>
				<td><select name="e_address">
						<option <%if (e_address.equals("서울")) {%> selected <%}%>>서울</option>
						<option <%if (e_address.equals("광주")) {%> selected <%}%>>광주</option>
						<option <%if (e_address.equals("부산")) {%> selected <%}%>>부산</option>
						<option <%if (e_address.equals("제주")) {%> selected <%}%>>제주</option>
				</select></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="전송" />
					&nbsp;&nbsp;&nbsp;&nbsp; <input type="reset" value="취소" /></td>
			</tr>
		</table>
	</form>
</body>
</html>
<!-- 
	맨앞에 체크박스, 
	뒤에 삭제
 -->