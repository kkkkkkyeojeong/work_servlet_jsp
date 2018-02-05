<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head><title>책 목록 등록 결과</title>
</head>
<body>
	<h1>책 등록 결과</h1>
	<h2>등록 성공</h2>
	<a href="<c:url value='/BookServlet?cmd=CMD_LIST' />">책 목록으로 이동</a>
</body>
</html>