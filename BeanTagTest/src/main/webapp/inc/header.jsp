<%@ page contentType="text/html; charset=utf-8"%>
[머릿말]<hr>

<jsp:useBean id="incl" class="scope.IncludeBean" scope="request" />
<!-- include가 만들어준애를 가져옴,새로 생성하는게 아님 -->
<jsp:getProperty property="header" name="incl"/>