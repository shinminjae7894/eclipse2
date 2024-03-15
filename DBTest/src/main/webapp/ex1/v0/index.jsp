<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>index.jsp</title>
</head>
<body>
	<h1>직원 정보</h1>
	<a href="addEmp.html">직원 추가</a> <!-- java코드가 들어갈 일 없음 -->
	<br><br>
	<table border="1">
		<tr>
			<th>사번</th><th>ID</th><th>이름</th><th>패스워드</th>
			<th>주소</th><th>수정</th>
		</tr>
	<% //여기까지 항상 준비
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
	
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			conn = DriverManager.getConnection(url,"scott","1111");
			
			String sql = "select * from tblEmp order by e_no";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);//실행한 결과값을 받아서 돌아오는 메서드
			
			//rs.next();//다음줄로 내겨가게하는 메서드
			//out.println(rs.getInt("e_no") + "," + rs.getString("e_name")+"<br>");
			
			while(rs.next()){//return값:true,false
		%>
			<tr>
				<td><%=rs.getInt("e_no") %></td>
				<td><%=rs.getString("e_id") %></td>
				<td><%=rs.getString("e_name") %></td>
				<td><%=rs.getString("e_pass") %></td>
				<td><%=rs.getString("e_address") %></td>
				<td><a href="updateEmp.jsp?e_no=<%=rs.getInt("e_no") %>">수정</a></td>
			</tr>
		<% 
			}
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
	</table>
</body>
</html>













