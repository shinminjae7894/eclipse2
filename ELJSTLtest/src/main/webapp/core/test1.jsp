<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!-- 태그의 이름시작을 c로 하겠다, core의 만들어져있는 액션태그 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int var1 = 10;
	%>
	<%= var1 %>
	
	<br>
	
	<c:set var="var2" value="20" /><!-- java코드없이 변수 저장 -->
	${var2} <!-- EL활용가능 -->
	
	<br>
	
	<c:set var="var3" value="30" />
	<c:set var="result" value="${var2 + var3}" />
	두 수의 합은 ${result} 입니다.
</body>
</html>