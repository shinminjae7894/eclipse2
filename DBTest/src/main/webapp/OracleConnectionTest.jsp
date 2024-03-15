<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>오라클 연결 테스트</title>
</head>
<body>
	<h1>오라클 연결 테스트</h1>
	
	<%
		Connection conn = null;
	
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");//class명이 class:class를 실행시킬 수 있게 해줌(""에 있는 클래스를 메모리에 올림),DB를 사용하기 위해 제일 먼저 해야될 일
			String url = "jdbc:oracle:thin:@localhost:1521:xe";//주소 = jdbc:orcle:thin(드라이버 이름):주소:포트번호:DB이름
			conn = DriverManager.getConnection(url,"scott","1111");//sql패키지안에 drivermanager라는 클래스로 db랑 연결,3개의 인자값 필요(DB주소,)
			//연결 되면 connection객체 불러옴
			
			if(conn != null){
				out.println("<h2>연결 성공</h2>");
			}
		}
		catch(Exception err){
			err.printStackTrace();
		}
		finally{
			conn.close();
		}
	%>
	
	
	
</body>
</html>