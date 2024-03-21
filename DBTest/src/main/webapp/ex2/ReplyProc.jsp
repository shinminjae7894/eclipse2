<%@ page contentType="text/html; charset=utf-8"%>
<jsp:useBean id="dto" class="mybean.board.BoardDto" />

<%request.setCharacterEncoding("utf-8"); %>

<jsp:setProperty property="*" name="dto" />

<jsp:useBean id="dao" class="mybean.board.BoardDao" />
<%
	dao.replyBoard(dto);
	response.sendRedirect("List.jsp");
%>
