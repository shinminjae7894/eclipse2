<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
	%>
	당신의 이름은 <%=name %>이고 주소는 <%=addr %>입니다.
	
	<br><br>
	당신의 취미는 다음과 같습니다.
	<ul>
		<%
			String[] hobbies = request.getParameterValues("hobby");
			if(hobbies != null){
				for(String hobby : hobbies){
		%>
			<li><%=hobby%></li>
		<%
				}
			}
			else{
		%>
				<li>선택한 내용이 없다.</li>
		<%
			}
		%>
	</ul>

</body>
</html>