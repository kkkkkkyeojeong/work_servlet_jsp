<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head><title>책 상세보기</title>
</head>
<body>
	<table>
		<tbody>
			<tr>
				<th>번호</th>
				<td>${ requestScope.book.isbn }</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>${ requestScope.book.title }</td>
			</tr>
			<tr>
				<th>저자</th>
				<td>${ requestScope.book.author }</td>
			</tr>
			<tr>
				<th>출판사</th>
				<td>${ requestScope.book.publisher }</td>
			</tr>
			<tr>
				<th>가격</th>
				<td>${ requestScope.book.price }</td>
			</tr>
			<tr>
				<th>설명</th>
				<td>${ requestScope.book.description }</td>
			</tr>
		</tbody>
	</table>
	
	<a href="<c:url value='/book/delete-confirm.jsp?isbn=${ requestScope.book.isbn }' />">
	삭제하기
	</a>
	<a href="<c:url value='/BookServlet?cmd=CMD_UPDATE_FORM&isbn=${ requestScope.book.isbn }' />">
	수정하기
	</a>
</body>
</html>



















