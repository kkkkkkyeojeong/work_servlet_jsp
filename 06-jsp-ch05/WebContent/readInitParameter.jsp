<!-- p.123 -->
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import= "java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head><title>초기화 파라미터 읽어오기</title>
</head>
<body>
	초기화 파라미터 목록:
	<ul>
	<%
		Enumeration<String> initParamEnum = application.getInitParameterNames();	//web.xml -> <param-name> 가져옴 
		while(initParamEnum.hasMoreElements()) {
			String initParamName = initParamEnum.nextElement();	
	%>
			<li><%= initParamName %> = <%= application.getInitParameter(initParamName) %> <!-- web.xml -> <param-value> 가져옴 -->
	<%
		}
	%>
	</ul>
</body>
</html>