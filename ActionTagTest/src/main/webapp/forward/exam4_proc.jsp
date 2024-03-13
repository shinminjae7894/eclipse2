<%
	request.setCharacterEncoding("utf-8");

	String toWhere = "kr.jsp";
	String lang = "korean";
	String from = request.getRemoteAddr();
	
	if(from.endsWith("127.0.0.1")){
		toWhere = "en.jsp";
		lang = "english";
	}
%>

<jsp:forward page="<%=toWhere%>">
	<jsp:param name="lang" value="<%=lang%>" />
</jsp:forward>