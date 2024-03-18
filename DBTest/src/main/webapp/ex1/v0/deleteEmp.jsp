<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>deleteEmp.jsp</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String no = request.getParameter("e_no");
		//사번만 넘어 오므로 사번만 받아주면 됨
		
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
	
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			conn = DriverManager.getConnection(url,"scott","1111");
			
			String sql = "delete from tblEmp where e_no=?"; 
				
					
			
			
			stmt = conn.prepareStatement(sql);
			
			stmt.setString(1,no);
			
			stmt.executeUpdate();
		%>
			<script>
				alert("잘 삭제되었습니다.");
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