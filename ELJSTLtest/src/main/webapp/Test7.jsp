<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h2> ${param.name}님 환영합니다</h2>
	총 방문자 수 : ${visitCount} <br><!-- ${requestScope.visitCount} -->
	<hr>
	${param.name}님이 좋아하는 음식<br>
	${foods},${foods[0]},${requestScope.foods[1]}, ${foods["2"]}
	<hr>
	뽀삐의 주인 이름 : ${hong.name}<br>
	홍길동의 강아지 이름 : ${hong.dog.name}<br>
</body>
</html>