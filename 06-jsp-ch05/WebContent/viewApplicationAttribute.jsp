<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import= "java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head><title>application 기본 객체 속성 보기</title>
</head>
<body>
<%
	Enumeration<String> attrEnum = session.getAttributeNames();//application.getAttributeNames();
	while(attrEnum.hasMoreElements()) {
		String name = attrEnum.nextElement();
		Object value = session.getAttribute(name);	// value는 Object 타입으로 리턴됨
%>
		application 속성 : <b><%= name %></b> = <%= value %> <br> <!-- 표현식이 Object타입의 tostring을 호출하여 value 출력 가능 -->
<%
	}
%>
</body>
</html>

<!-- 
	application: 브라우저 상관없이 전체 다 적용
	session: 동일 브라우저만 적용
 -->