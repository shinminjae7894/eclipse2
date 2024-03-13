<%@ page contentType="text/html; charset=utf-8"%>
<%
	//session.removeAttribute("id");
	session.invalidate();//session 자체를 없애버림
	response.sendRedirect("index.jsp");
%>