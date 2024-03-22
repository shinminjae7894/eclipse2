<%@page import="mybean.model.DepartmentBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	
	ArrayList<String> advice = (ArrayList)request.getAttribute("advice");
	
%>
	<h1>학과 선택에 따른 결과입니다.</h1>
	<%
		for(String s : advice){
	%>
			<div style="color:blue"><%=s %></div>
	<% 		
		}
	%>
</body>
</html>