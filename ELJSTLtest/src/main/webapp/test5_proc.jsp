<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h2>두 수의 덧셈</h2>
	<%
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
	%>
	<%=num1 %> + <%=num2 %> = <%=num1 + num2 %><br>
	<hr>
	${param.num1} + ${param.num2} = ${param.num1 + param.num2}<br>
	<hr>
	
	<h2>두 수는 모두 양수인가?</h2>
	${(param.num1 gt 0) and (param.num2 gt 0)}<!-- gte: 크거나 같음 -->
	
	<h2>두 숫자가 모두 같은 숫자인가?(예/아니오로 대답)</h2>
	${(param.num1 eq param.num2)? "예" : "아니오"}
	
	<hr>
	
	안녕하세요. ${empty param.id? "guest" : param.id}님! 환영합니다.
</body>
</html>