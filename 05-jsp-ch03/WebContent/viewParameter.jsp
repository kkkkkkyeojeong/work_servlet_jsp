<!-- p.77 -->
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Enumeration" %>	<!-- 인터페이스, Map과 비슷한 자료구조 -->
<%@ page import="java.util.Map" %>
<%
	// 클라이언트 요청을 utf-8 인코딩 방식으로 읽는다
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head><title>요청 파라미터 출력</title>
</head>
<body>
	<b>request.getParameter() 메소드 사용</b>
	name 파라미터 = <%= request.getParameter("name") %> <br>
	address 파라미터 = <%= request.getParameter("address") %> 
	<p />
	
	<b>request.getParameterValues() 메소드 사용</b><br>
	<%
		String[] values = request.getParameterValues("pet");
		if(values != null) {
			for (int i= 0; i < values.length; i++) {
	%>
			 	<%= values[i] %>
	<%
			}
		}
	%>
	<p>
	<b>request.getParameterNames() 메소드 사용</b><br>
	<%
		Enumeration paramEnum = request.getParameterNames();  // getParameterNames()의 리턴값은 Enumeration 이다.
		while(paramEnum.hasMoreElements()) {		// hasMoreElements() -> 꺼내온 것이 있는지 확인
			String name = (String) paramEnum.nextElement();		// nextElement() -> 출력 후 다음걸 꺼내온다.
	%>
			<%= name %>
	<%
		}
	%>
	<p>
	<b>request.getParameterMap() 메소드 사용</b><br>
	<%
		// getParameterMap()은 전달받은 파라메터들을 Map 형태로 제공
		Map<String, String[]> parameterMap = request.getParameterMap();
		
		// name을 key로 가지는 값의 배열을 리턴받는다.
		String[] nameParam = (String[]) parameterMap.get("name");
		if(nameParam != null) {
	%>
			<!-- 배열의 0번째 출력 -->
			name = <%= nameParam[0] %>
	<%
		}
	%>
</body>
</html>





























