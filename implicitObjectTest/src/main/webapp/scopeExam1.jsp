<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>scopeExam1.jsp</title>
</head>
<body>
	<h2>session에 값 저장</h2>
	<%
		session.setAttribute("i",10);
	%>
	<br><br>
	<h2>application에 값 저장</h2>
	<%
		application.setAttribute("j",100);
	%>
	<br><br>
	<h2>pageContext에 값 저장</h2>
	<%
		pageContext.setAttribute("k",1000);//페이지를 벗어나서 사라짐,null값 나옴
	%> <!-- 기본 값 -->
	<br><br>
	<h2>pageContext를 이용해서 application에 값을 저장</h2>
	<%
		pageContext.setAttribute("x",5000,pageContext.APPLICATION_SCOPE);
	%><!-- 모든영역 쓸 수 있게함  -->
</body>
</html>

<!--1.메인 페이지 index.jsp만듦
	2.환영합니다.링크 : 로그인, 쇼핑몰 
	3.로그인 페이지 : 아이디,패스워드
	4.틀리면계속 돌다가 정확히 입력시 메인페이지로 이동
	5.접속성공후 메인페이지에 **(아이디)님 환영합니다.
	6.쇼핑몰 페이지 shop.jsp
	7.쇼핑몰 클릭시 로그인페이지
	8.로그인시 **님 즐거운 쇼핑 되세요
	9.메인페이지로 로그아웃-->