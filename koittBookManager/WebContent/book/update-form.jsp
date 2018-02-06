<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head><title>책 내용 수정 페이지</title>
</head>
<body>
	<h1>책 내용 수정</h1>
	<a href="<c:url value='/BookServlet?cmd=CMD_LIST' />">책 목록으로 이동</a>
	
	<form action="<c:url value='/BookServlet' />" method="post">
		<input type="hidden" name="cmd" value="CMD_UPDATE">
		<input type="hidden" name="isbn" value="${ requestScope.book.isbn }">
		<div>번호 : ${ requestScope.book.isbn }</div>
		<div>제목: ${ requestScope.book.title}</div>
		<br> <label>내용 : </label>
		<textarea rows="3" cols="50" name="description">${ requestScope.book.description }</textarea>
		<br>
		<input type="submit" value="수정 완료">
	</form>

</body>
</html>