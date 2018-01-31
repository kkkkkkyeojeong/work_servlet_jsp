<!-- p.60 -->
<!-- 디렉티브(Directive): JSP페이지에 대한 설정 정보를 지정할 때 사용 -->
<%@ page contentType="text/html; charset=UTF-8"%>	<!-- page directive / 보라색 글씨 : Attribute-->
<%@ page import="java.util.Calendar"%>				<!-- page directive -->
<!DOCTYPE html>
<html>
<head>
<title>Calendar 클래스 사용</title>
</head>
<body>
<!-- 스크립트릿(scriptlet) : <% %> 자바코드를 작성하는 부분 -->
<% 
	Calendar cal = Calendar.getInstance();
%>
오늘은 
<!-- 표현식(expression): 특정한 값을 출력하는 부분에서 많이 사용 <%= %> -->
<!-- JSP는 기본으로 실행시 객체 몇가지 미리 생성한다. 예) out. -->
	<%= cal.get(Calendar.YEAR) %>년		<!-- <% out.println(cal.get(Calendar.YEAR)); %>와 같다 -->
	<%= cal.get(Calendar.MONTH) +1 %>월
	<%= cal.get(Calendar.DATE) %>일
	
입니다.
</body>
</html>