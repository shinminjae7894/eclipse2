<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8");%>
	
	이름 : <%= request.getParameter("name") %><br>
	아이디 : <%= request.getParameter("id") %><br>
	<hr>
	이름 : ${param.name}<br> 또는 ${param["name"]}<br>
	아이디 : ${param.id}<br>
	<hr>
	<%
		String[] foods = request.getParameterValues("food");
	%>
	첫번째 음식 : <%=foods[0] %> <br>
	두번째 음식 : <%=foods[0] %> <br>
	<hr>
	첫번째 음식 : ${paramValues.food[0] } <br>
	또는 ${paramValues["food"][0]} 또는 ${paramValues["food"]["0"]}
	두번째 음식 : ${paramValues.food[0] } <br>
	
	<hr>
	
	<%--
		//String[] hobbies = request.getParameterValues("hobby");
	--%>
	<%--
		//for(String h : hobbies){
	--%>
			취미:<%-- =h--%><br>
	<%--
		//}
	--%><!-- null값 오류 발생 -->
	<hr>
	
	취미1: ${paramValues.hobby[0]}<br><!-- EL은 null값 오류가 나지않음,반복문은 안됨 -->
	취미2: ${paramValues.hobby[1]}<br>
	취미3: ${paramValues.hobby[2]}<br>
	
</body>
</html>