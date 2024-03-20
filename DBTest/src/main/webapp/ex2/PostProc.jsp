<%@ page contentType="text/html; charset=utf-8"%>
<jsp:useBean id="dto" class="mybean.board.BoardDto" />

<%request.setCharacterEncoding("utf-8"); %>

<%-- 
<jsp:setProperty property="b_name" name="dto" param="name" />
<jsp:setProperty property="b_email" name="dto" param="email" />
<jsp:setProperty property="b_homepage" name="dto" param="homepage" />
<jsp:setProperty property="b_subject" name="dto" param="subject" />
<jsp:setProperty property="b_content" name="dto" param="content" />
<jsp:setProperty property="b_password" name="dto" param="password" />
--%>

<jsp:setProperty property="*" name="dto" />

<jsp:useBean id="dao" class="mybean.board.BoardDao" />
<%
	dao.setBoard(dto);
	response.sendRedirect("List.jsp");
%>