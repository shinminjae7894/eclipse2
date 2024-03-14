<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="mem" class="mybean.MemberDto" />
	<jsp:setProperty property="*" name="mem"/>
	<!-- 모든 변수를 넣을 때 사용가능 -->
	
	<h2>입력 내용 확인</h2>
	아이디:<jsp:getProperty property="mem_id" name="mem"/><br>
	패스워드:<jsp:getProperty property="mem_pw" name="mem"/><br>
	이름:<jsp:getProperty property="mem_name" name="mem"/><br>
	이메일:<jsp:getProperty property="mem_email" name="mem"/><br>
	전화번호:<jsp:getProperty property="mem_tel" name="mem"/><br>
	주소:<jsp:getProperty property="mem_addr" name="mem"/><br>

</body>
</html>