<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>		<!-- 페이지의 빈칸 제거 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	<!-- JSTL 사용 -->
<!DOCTYPE html>
<html>
<head><title>사용자 목록</title>
</head>
<body>
	<h1>사용자 목록</h1>
	<!-- c:url value=http://localhost:8080/koittBoardServletJSP/board/insert-fomr.jsp -->
	<a href="<c:url value='/users/join-form.jsp' />">회원가입</a>
	<br>
	
	<table>
		<thead>
			<tr>
				<th>사용자 번호</th>
				<th>이메일</th>
				<th>비밀번호</th>
				<th>이름</th>
			</tr>
		</thead>
		<tbody>
			<!-- 서블릿에서 request에 setAttribute 했던 list를 items에 설정 -->
			<c:forEach var="users" items="${ requestScope.list }">
				<tr>
					<td>${ users.no }</td>
					<td>${ users.email }</td>
					<td>${ users.password }</td>
					<td>${ users.name }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>