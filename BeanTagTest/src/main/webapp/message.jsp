<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>message.jsp</title>
</head>
<body>
	<%
		String msg = "JSP를 배웁시다.";
	%>
	Message = <%=msg%>
	
	<hr/>
	
	<!-- simple.MessageBean msg1 = new simple.MessageBean(); -->
	<jsp:useBean id="msg1" class="simple.MessageBean" />
	
	<!-- msg1.setMsg("JSP를 배웁시다"); -->
	<jsp:setProperty property="msg" name="msg1" value="Jsp를 배웁시다."/>
	
	<!-- property안에는 소문자로 써야함 -->
	Message : <jsp:getProperty property="msg" name="msg1"/>
	
	<hr/>
	
	<%
		simple.MessageBean msg2 = new simple.MessageBean();
		msg1.setMsg("Jsp를 배웁시다");
	%>
	Message : <%=msg1.getMsg() %>
	<!-- action태그에서 만든 객체는 scriptlib에서 사용가능하지만 반대는 안됨 -->
</body>
</html>

<!-- 
	class name : simple.MessageBean
	property :
		name	r(읽기)/w(쓰기)		data type		desc
		---------------------------------------------
		msg		r(get)/w(set)	String			메시지 입출력
 -->


