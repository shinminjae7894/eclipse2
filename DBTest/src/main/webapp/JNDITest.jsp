<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>JNDI 테스트</title>
</head>
<body>
	<%
		Context ctx = new InitialContext();
		DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/EmployeeDB");//env까지 정해놓음
		
		Connection conn = ds.getConnection();
		
		if(conn != null){
			out.println("<h2>연결 성공</h2>");
		}
	%>
</body>
</html>