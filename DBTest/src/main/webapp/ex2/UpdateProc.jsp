<%@page import="mybean.board.BoardDto"%>
<%@ page contentType="text/html; charset=utf-8"%>

<jsp:useBean id="dto" class="mybean.board.BoardDto" />

<%request.setCharacterEncoding("utf-8"); %>

<jsp:setProperty property="*" name="dto" />

<jsp:useBean id="dao" class="mybean.board.BoardDao" />
<%
	BoardDto original = dao.getBoard(dto.getB_num());
	
	if(dto.getB_pass().equals(original.getB_pass())){
			dao.updateBoard(dto);
			response.sendRedirect("List.jsp");
	}
	else{
%>
		<script>
			alert("비밀번호가 틀렸습니다.")
			history.back();s
		</script>

<%
	}
%>