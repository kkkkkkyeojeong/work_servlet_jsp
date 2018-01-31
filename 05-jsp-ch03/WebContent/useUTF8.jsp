<!-- p.64 -->
<!-- 
	인코딩 적용 순서
	1. pageEncoding
	2. contentType
	3. 모두 해당하지 않을 경우 ISO-8859-1 캐릭터 셋(Character set)을 사용
 -->
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding= "utf-8" %>
<%@ page import= "java.util.Date" %>
<%
	Date now = new Date();
%>
<!DOCTYPE html>
<html>
<head><title>현재 시간</title>
</head>
<body>
현재 시간:
<%= now %>
</body>
</html>