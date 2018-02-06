<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head><title>책 내용 수정 완료</title>
</head>
<body>
	<h1>책 내용 수정 결과</h1>
	<h2>수정 성공</h2>
	<a href="<c:url value='/BookServlet?cmd=CMD_LIST' />">책 목록으로 이동</a>
</body>
</html>