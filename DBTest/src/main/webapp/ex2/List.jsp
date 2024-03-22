<%@page import="mybean.board.BoardDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html;charset=utf-8" %>

<%
	int totalRecord = 0; // 총 글의 갯수
	int numPerPage = 5; //한 페이지당 보여질 글의 갯수
	int totalPage = 0; //총 페이지 수
	int nowPage = 0; //현재 페이지 번호
	int beginPerPage = 0; //페이지별 시작 번호
	int pagePerBlock = 3; //한 블럭 당 페이지 수
	int totalBlock = 0; //총 블럭 수
	int nowBlock = 0; // 현재 블럭
%>

<HTML>
<link href="style.css" rel="stylesheet" type="text/css">
<script>
		function check(){
			if(document.search.searchText.value == ""){
				alert("검색어를 입력하세요.");
				document.search.searchText.focus();
				return;
			}
			document.search.submit();
		}
</script>
<BODY>
	<jsp:useBean id="dao" class="mybean.board.BoardDao" />
	<%
	request.setCharacterEncoding("utf-8");
	String keyword = request.getParameter("keyword");
	String search = request.getParameter("searchText");
	
	ArrayList<BoardDto> list = (ArrayList) dao.getBoardList(keyword, search);
	
	totalRecord = list.size();
	totalPage = (int)Math.ceil((double)totalRecord / numPerPage) ;//ceil:올림, double형 써줘야함
	
	if(request.getParameter("nowPage")!= null){
		nowPage = Integer.parseInt(request.getParameter("nowPage"));//정수형으로 캐스팅,클릭시 실행되므로 처음값 : null값
	}
	
	beginPerPage = nowPage * numPerPage;
	
	if(request.getParameter("nowBlock")!= null){
		nowBlock = Integer.parseInt(request.getParameter("nowBlock"));
	}
	
	totalBlock = (int)Math.ceil((double)totalPage / pagePerBlock);
	%>

	<center>
		<br>
		<h2>JSP Board</h2>

		<table align=center border=0 width=80%>
			<tr>
				<td align=left>Total :<%=totalRecord%> Articles( <font
					color=red> <%=nowPage+1%> / <%=totalPage%> Pages </font>)
				</td>
			</tr>
		</table>

		<table align=center width=80% border=0 cellspacing=0 cellpadding=3>
			<tr>
				<td align=center colspan=2>
					<table border=0 width=100% cellpadding=3 cellspacing=0>
						<tr align=center bgcolor=#D0D0D0 height=120%>
							<td>번호</td>
							<td>제목</td>
							<td>이름</td>
							<td>날짜</td>
							<td>조회수</td>
						</tr>
						</td>

						<%
							try{
							if (list != null) {
								for (int i=beginPerPage; i<beginPerPage + numPerPage; i++) {
									if(i == totalRecord){
										break;
									}
				
									BoardDto dto = (BoardDto)list.get(i);
						%>
						<tr>
							
							<td><%=dto.getB_num()%></td>
							<td><%=dao.useDepth(dto.getDepth())%>
							<a href="Read.jsp?b_num=<%=dto.getB_num()%>"><%=dto.getB_subject()%></a></td>
							<td><%=dto.getB_name()%></td>
							<td><%=dto.getB_regdate()%></td>
							<td><%=dto.getB_count()%></td>

						</tr>

						<%
							}
						} else {
						%>
						<tr>
							<td>데이터가 없습니다.</td>
						</tr>
						<%
							}
						}
						catch (Exception err) {
						err.printStackTrace();
						}
						%>
					</table>
				</td>
			</tr>
			<tr>
				<td><BR>
				<BR></td>
			</tr>
			<tr>
				<td align="left">Go to Page &nbsp;&nbsp;&nbsp;
				<%if(nowBlock > 0){ %>
					<a href="List.jsp?nowPage=<%=((nowBlock-1) * pagePerBlock)%>&nowBlock=<%=nowBlock-1%>">이전 <%=pagePerBlock%>개</a>
				<%} %>
				:::&nbsp;&nbsp;&nbsp;
				<%
					for(int i=0; i<pagePerBlock; i++){
						if((nowBlock * pagePerBlock)+ i == totalPage){
							break;
						}
				%>
					<a href="List.jsp?nowPage=<%=(nowBlock * pagePerBlock) + i%>&nowBlock=<%=nowBlock%>"><%=(nowBlock * pagePerBlock)+ i+1%></a> &nbsp;&nbsp;&nbsp;
				<%
					}
				%>
				&nbsp;&nbsp;&nbsp; :::
				<%if(totalBlock > nowBlock+1){ %>
					<a href="List.jsp?nowPage=<%=((nowBlock+1) * pagePerBlock)%>&nowBlock=<%=nowBlock+1%>">다음 <%=pagePerBlock%>개</a>
				<%} %>
				</td>
				<td align=right><a href="Post.jsp">[글쓰기]</a> <a
					href="javascript:list()">[처음으로]</a></td>
			</tr>
		</table>

		<BR>
		<form action="List.jsp" name="search" method="post">
			<table border=0 width=527 align=center cellpadding=4 cellspacing=0>
				<tr>
					<td align=center valign=bottom>
						<select name="keyword" size="1">
							<option value="b_name">이름
							<option value="b_subject">제목
							<option value="b_content">내용
					</select> 
					
					<input type="text" size="16" name="searchText"> 
					<input type="button" value="찾기" onClick="check()"> 
					<input type="hidden" name="page" value="0"></td>
				</tr>
			</table>
		</form>
	</center>
</BODY>
</HTML>