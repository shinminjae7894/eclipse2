<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>counter.jsp</title>
</head>
<body>
	<h1>전체 방문자 수 확인</h1>
	<jsp:useBean id="counter" class="scope.counterBean" scope="application" >
		<jsp:setProperty property="newVisit" name="counter" value="1"/>
	</jsp:useBean>
	
	<jsp:setProperty property="restart" name="counter"/>
	
	<h2>전체 방문자 수 : <jsp:getProperty property="visitCount" 
		name="counter"/></h2>
	
	<form>
		<input type="submit" name="refresh" value="새로 고침" />
		&nbsp;&nbsp;&nbsp;
		<input type="submit" name="restart" value="카운터를 0으로 리셋" />
	</form>
</body>
</html>