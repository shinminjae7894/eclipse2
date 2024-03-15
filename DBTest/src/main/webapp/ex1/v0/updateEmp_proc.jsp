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
		// html에서 전달한 데이터 받아오기
		request.setCharacterEncoding("utf-8");
	
		String name = request.getParameter("e_name");
		String pass = request.getParameter("e_pass");
		String address = request.getParameter("e_address");
		
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
	
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			conn = DriverManager.getConnection(url,"scott","1111");
			
			String sql = ""; 
				
					
			
			
			stmt = conn.prepareStatement(sql);
			
			stmt.setString(1,name);
			stmt.setString(2,pass);
			stmt.setString(3,address);
			
			stmt.executeUpdate();
		%>
			<script>
				alert("잘 수정되었습니다.");
			</script>

			<ul>
				<li><a href="index.jsp">메인 페이지로</a></li>
				<li><a href="addEmp.html">추가 페이지로</a></li>
			</ul>
	<%
		}	
		catch(Exception err){
			err.printStackTrace();
		}
		finally{
			if(conn != null) conn.close();
			if(stmt != null) stmt.close();
		}
	%>
	
</body>
</html>