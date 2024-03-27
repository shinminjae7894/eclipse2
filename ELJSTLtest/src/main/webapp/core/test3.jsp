<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String[] foods = {"불고기", "오므라이스", "짜장면"};
		request.setAttribute("foods", foods);
	%>
	
	<%
		String[] arrFoods = (String[])request.getAttribute("foods");
		//for(int i=0; i<arrFoods.length; i++){
		for(String str : arrFoods){
	%>
		<%=str %><br>
	<%
		}
	%>
	<hr>
	<c:forEach begin="0" end="3" step="1" var="i"><!-- 0부터 3까지 1씩 증가 , 변수 i-->
		${foods[i]}<br>
	</c:forEach>
	<hr>
	<c:forEach var="str" items="${foods}">
		${str}<br>
	</c:forEach>
	<hr>
	<c:set var="guests" value="토끼/거북이*너구리-기린,고양이"/>
	<c:forTokens items="${guests}" delims="/*-," var="token" >
		${token}<br>
	</c:forTokens>
	<hr>
	<c:redirect url="test4.jsp">
		<c:param name="name" value="신돌석" />
		<c:param name="age" value="40세" />
	</c:redirect>
</body>
</html>