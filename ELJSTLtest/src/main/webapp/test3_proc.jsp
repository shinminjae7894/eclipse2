<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h2>쿠키 정보 확인</h2>
	<%
		Cookie[] cooks = request.getCookies();//하나만 꺼내올 수 없음, 배열로 꺼내와야함
		
		for(int i=0; i<cooks.length; i++){
			if(cooks[i].getName().equals("id")){
	%>
			<%= cooks[i].getName()%><br>
			<%= cooks[i].getValue()%><br>
	<%
			}
		}
	%>
	<hr>
	${cookie.id.value}<br>
	${cookie.name.value}<br>
</body>
</html>