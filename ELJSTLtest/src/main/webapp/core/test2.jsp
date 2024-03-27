<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String str1 = "aaaa";
	
		if(str1.equals("aaaa")){
	%>
			<b>aaaa가 맞습니다.</b>
	<%
		}
	%>
	<hr>
	<c:set var="str2" value="bbbb" />
	<c:if test="${str2 eq 'bbbb'}"> <!-- EL로 써줘야함 -->
		<b>bbbb가 맞습니다.</b>
	</c:if>
	
	<hr>
	
	<form action="test2.jsp">
		숫자1 : <input type="number" name="num1" /><br><br>
		숫자2 : <input type="number" name="num2" /><br><br>
		<input type="submit" value="최대값 구하기" />
	</form>
	<%
		try{
			int num1 = Integer.parseInt(request.getParameter("num1"));
			int num2 = Integer.parseInt(request.getParameter("num2"));
		
			if( num1 > num2 ){
	%>
			<%=num1%>이 크다.<br>
	<%
			}
			else{
	%>
			<%=num2%>가 크다
	<%
			}
		}
		catch(Exception err){}
	%>
	<hr>
	<c:if test="${param.num1 > param.num2 }" >
		${param.num1}이 크다
	</c:if> 
	<c:if test="${param.num1 < param.num2 }" >
		${param.num2}가 크다
	</c:if>
	<hr>
	<c:choose>
		<c:when test="${param.num1 > param.num2}">
			${param.num1}이 크다<br>
		</c:when>
		<c:when test="${param.num1 < param.num2}"><!-- else if -->
			${param.num2}이 크다<br>
		</c:when>
		<c:otherwise><!-- else -->
			<c:if test="${!empty param.num1}">
			똑같다.
			</c:if>
		</c:otherwise>
	</c:choose>
</body>
</html>