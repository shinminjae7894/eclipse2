<%@page import="java.util.Date"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<fmt:formatNumber value="1000000000" /><br><!-- 천단위 끊어줌 -->
	<fmt:formatNumber value="1000000000" groupingUsed="false"/><br>
	<fmt:formatNumber value="3.141592" pattern="#.###"/><br>
	<fmt:formatNumber value="0.5" type="percent"/><br>
	<fmt:formatNumber value="2500000000" type="currency"/><br>
	<fmt:formatNumber value="2500000000" type="currency"
		currencySymbol ="$" /><br>
	
	<hr>
	<!-- 날짜 포맷 -->
	<c:set var="today" value="<%=new Date() %>" />
	
	<fmt:formatDate value="${today}" type="date" /><br>
	<fmt:formatDate value="${today}" type="time" /><br>
	<fmt:formatDate value="${today}" type="both" /><br>
	<br>
	<fmt:formatDate value="${today}" dateStyle="short" /><br>
	<fmt:formatDate value="${today}" dateStyle="medium" /><br>
	<fmt:formatDate value="${today}" dateStyle="long" /><br>
	<fmt:formatDate value="${today}" dateStyle="full" /><br>
	<br>
	<fmt:formatDate value="${today}" timeStyle="short" type="time"/><br>
	<fmt:formatDate value="${today}" timeStyle="medium" type="time"/><br>
	<fmt:formatDate value="${today}" timeStyle="long" type="time"/><br>
	<fmt:formatDate value="${today}" timeStyle="full" type="time"/><br>
	<br>
	<fmt:formatDate value="${today}" pattern="yyyy/MM/dd(E)"/>
	
	<hr>
	<!-- 원하는 국가 형태 -->
	<fmt:setLocale value="en_us"/>
	<fmt:formatNumber value="2500000000" type="currency"/><br>
	<fmt:formatDate value="${today}" type="both" dateStyle="full"
		timeStyle="full" />
		
	<hr>
	<!-- 해당 국가 표준시간 -->
	<fmt:setLocale value="ko_kr" />
	서울 : <fmt:formatDate value="${today}" type="both"/>
	<br>
	<fmt:timeZone value="Asia/Hong_Kong">
	홍콩 : <fmt:formatDate value="${today}" type="both"/>
	</fmt:timeZone>
	<br>
	<fmt:timeZone value="Euroup/London">
	런던 : <fmt:formatDate value="${today}" type="both"/>
	</fmt:timeZone>
	<br>
	<fmt:timeZone value="America/New_York">
	뉴욕 : <fmt:formatDate value="${today}" type="both"/>
	</fmt:timeZone>
	
	<!-- 문자 인코딩 -->
	<fmt:requestEncoding value="utf-8"/>
</body>
</html>











