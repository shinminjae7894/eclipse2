<%@page import="mybean.model.Book"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.StringTokenizer"%>
<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<jsp:useBean id="dto" class="mybean.model.Book"></jsp:useBean>
<%
	ArrayList<Book>bookList = (
		ArrayList<Book>)session.getAttribute("bookList");
%><!-- 인스턴스변수로 빼서 한번만 선언되게 함 -->

<body>
	<b>현재 주문한 도서</b>
	<table border="1">
		<tr>
		<th>도서 제목</th><th>작가</th><th>가격</th><th>수량</th>
		</tr>
		<tr>
	<%
		if(bookList != null){
			for(int cnt=0; cnt<bookList.size(); cnt++){//for(Book b : bookList)
				Book b = bookList.get(cnt);
	%>
		<tr>
			<td><%=b.getTitle()%></td>
			<td><%=b.getAuthor()%></td>
			<td><%=b.getPrice()%></td>
			<td><%=b.getQuantity()%></td>
			<td>
				<form action="/MVCtest/book">
					<input type="hidden" name="command" value="<%="del" %>" />
					<input type="hidden" name="cnt" value="<%=cnt %>" />
					<input type="submit" value="삭제" />
				</form>
			</td>
		</tr>
	<% 
			}
		}
	%>
		</tr>
	</table>
	<br>
	<form method="post" action="/MVCtest/book?command=Checkout">
		<input type="submit" value="체크아웃" />
	</form>
</body>
</html>