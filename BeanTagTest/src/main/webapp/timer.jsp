<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1>세션을 이용한 타이머 예제</h1>
	<jsp:useBean id="timer" class="scope.TimerBean" scope="session">
		세션을 시작합니다. 타이머 작품을 시작합니다.<br><br>
	</jsp:useBean><!-- 메시지를 중간에 넣어 처음 한번만 실행,그 다음부턴 안보이게 제어 -->
	
	
	bean의 프로퍼티를 마지막으로 접근한 뒤에 경과한 시간은   
	<jsp:getProperty property="elapsedTimeAfterLastAccess" name="timer"/>
	초입니다.<br><br>
	
	<jsp:setProperty property="restart" name="timer" />
	
	타이머를 리셋한 뒤에 경과된 시간은
	<jsp:getProperty property="elapsedTime" name="timer" />
	초 입니다<br><br>
	
	타이머가 시작된 뒤에 경과된 시간은 
	<jsp:getProperty property="elapsedTimeAfterInst" name="timer" />초입니다.<br><br>
	
	<form method="post" >
		<input type="submit" value="경과시간 확인" name="check" />&nbsp;&nbsp;&nbsp;
		<input type="submit" value="타이머 리셋" name="restart" />
		
	</form>
</body>
</html>
<!-- 
		name						r/w				data type
		-----------------------------------------------------
		elapsedTime					r				long
		restart						w				boolean
		elapsedTimeAfterInst		r				long
		elapsedTimeAfterLastAccess	r				long
 -->



