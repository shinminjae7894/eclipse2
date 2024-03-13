<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String menu = request.getParameter("menu");

	if("minjae".equals(id) && "1111".equals(pw)){//id,pw가 첨엔 null값이라 위치를 바꿔줌으로써 오류 고쳐짐
		session.setAttribute("id",id);//session저장 : 인증처리 아이디 패스워드를 통과했다는 의미가 됨
		
		if(menu.equals("shop")){
			response.sendRedirect( "shop.jsp");
		}
		else
			response.sendRedirect("index.jsp");
	}

%>
<body>
	<form action="login.jsp" method="post">
			아이디 : <input type="text" name="id" /><br><br>
			비밀번호 : <input type="password" name="pw" /><br><br>
			<input type="hidden" name="menu" value="<%=menu%>" />
			<input type="submit" value="로그인" />
			<input type="reset" value="취소" />
	</form>
</body>
</html>