<!-- p.62 -->
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces= "true" %> 	<!-- 불필요한 공백을 제거하는 부분 -->
<!DOCTYPE html>
<html>
<head>
<title>현재 시간</title>
</head>
<body>
현재 시간: <%= new java.util.Date() %>
</body>
</html>