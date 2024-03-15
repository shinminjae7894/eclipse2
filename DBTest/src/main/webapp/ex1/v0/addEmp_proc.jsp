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
	
		String id = request.getParameter("e_id");
		String name = request.getParameter("e_name");
		String pass = request.getParameter("e_pass");
		String address = request.getParameter("e_address");
		
		
		// 받아온 데이터를 DB에 저장하기
		Connection conn = null;
		//Statement stmt = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
	
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			conn = DriverManager.getConnection(url,"scott","1111");
			
			/*
			String sql = "insert into tblEmp(e_no,e_id,e_name,e_pass,"+ 
			"e_address)values(seq_eno.nextVal, '"+ id +"', '"+
			name + "', '" + pass + "', '" +address + "')";//sql문자열에 필요한 ''처리 해줘야함
			*/
			String sql = "insert into tblEmp(e_no,e_id,e_name, e_pass,"+ 
					"e_address)values(seq_eno.nextVal,?,?,?,?)";
					
			
			// stmt = conn.createStatement();
			stmt = conn.prepareStatement(sql);
			//명령어만 먼저 보냄,명령어만 먼저 준비시켜놓음
			stmt.setString(1,id);//(순서,들어갈값)
			stmt.setString(2,name);
			stmt.setString(3,pass);
			stmt.setString(4,address);
			
			stmt.executeUpdate();
		%>
			<script>
				alert("잘 추가되었습니다.");
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
			if(rs != null) rs.close();
		}
	%>
	
	
</body>
</html>