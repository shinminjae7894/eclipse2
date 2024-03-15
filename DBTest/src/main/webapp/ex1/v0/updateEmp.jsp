<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>updateEmp.jsp</title>
</head>
	<%
			String e_no = request.getParameter("e_no");
			String e_id = null,e_name = null,e_pass = null, e_address = null; 
			
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
		
			try{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				String url = "jdbc:oracle:thin:@localhost:1521:xe";
				conn = DriverManager.getConnection(url,"scott","1111");
		
				String sql = "select * from tblEmp where e_no=" + e_no;
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);//실행한 결과값을 받아서 돌아오는 메서드
		
			if(rs.next()){
				e_id = rs.getString("e_id");
				e_name = rs.getString("e_name");
				e_pass = rs.getString("e_pass");
				e_address = rs.getString("e_address");
			}
				} catch (Exception err) {
			err.printStackTrace();
			} finally {
			if (conn != null)
				conn.close();
			if (stmt != null)
				stmt.close();
			if (rs != null)
				rs.close();
			}
	%>
	</table>
<body>
	<h1>직원 수정</h1>
	<form action="updateEmp_proc.jsp" method="post">
		<table border="1">
			<tr>
				<th>아이디</th>
				<td><input type="text" name="e_id"  value="<%=e_id%>" readonly/></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" name="e_name" value="<%=e_name%>"/></td>
			</tr>
			<tr>
				<th>패스워드</th>
				<td><input type="password" name="e_pass" value="<%=e_pass%>"/></td>
			</tr>
			<tr>
				<th>근무지</th>
				<td><select name="e_address">
						<option <%if(e_address.equals("서울")){%>selected <%}%>>서울</option>
						<option <%if(e_address.equals("광주")){%>selected <%}%>>광주</option>
						<option <%if(e_address.equals("부산")){%>selected <%}%>>부산</option>
						<option <%if(e_address.equals("제주")){%>selected <%}%>>제주</option>
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