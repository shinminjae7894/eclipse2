<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id =(String)session.getAttribute("id");
	if(id != null){
%>
	<h1>즐거운 쇼핑 되세요</h1>
	<ul>
		<li><a href="index.jsp">메인페이지</a></li>
		<li><a href="logout.jsp">로그아웃</a></li>
	</ul>
<% 
	}
	else{
		response.sendRedirect("login.jsp?menu=shop");
	}
%>
	

	
		
	
</body>
</html>