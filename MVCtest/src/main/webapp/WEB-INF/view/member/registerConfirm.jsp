<%@page import="mybean.model.Member"%>
<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<jsp:useBean id="dto" class="mybean.model.Member" />
<%
	dto = (Member)request.getAttribute("dto");
%>
<body>
	<h1>회원 가입 확인</h1>
	<form method="post" action="/MVCtest/mem?command=complete">
		당신이 입력한 내용은 다음과 같습니다.<br>
		<ul>
			<li>아이디 :<%=dto.getId() %> </li>
			<li>패스워드 : <%=dto.getPw()%></li>
			<li>이메일 :<%=dto.getEmail()%></li>
		</ul>
		
		<input type="submit" value="가입완료" />%nbsp;%nbsp;%nbsp;
		<input type="button" value="뒤로" />
	</form>
</body>
</html>