<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>include.jsp</title>
</head>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="incl" class="scope.IncludeBean" scope="request"/>
<jsp:setProperty property="header" name="incl" param="header"/><!-- param:현재입력되는값이 전달 -->
<jsp:setProperty property="footer" name="incl" /><!-- 생략하면 default:param,name=property이면 property가 그대로 입력 -->
<body>
	<jsp:include page="inc/header.jsp" />
	<hr>
	
	<form method="post">
		머릿말에 들어갈 내용 : <br>
		<textarea rows="2" cols="60" name=header></textarea>
		<br><br>
	
		꼬릿말에 들어갈 내용 : <br>
		<textarea rows="2" cols="60" name=footer></textarea>
		<br><br>
	
		<input type="submit" value="새로 고침" />
	</form>
	
	<hr/>
	<jsp:include page="inc/footer.jsp" />
</body>
</html>

<!-- 
	name 		r/w			data type
	------------------------------------
	header		r/w			String
	footer		r/w			String

 -->















