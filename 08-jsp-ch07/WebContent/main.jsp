<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head><title>main</title>
</head>
<body>

main.jsp에서 생성한 내용.

<jsp:include page="sub.jsp" flush="false" /> 
<!-- flush: true일 경우 이 라인을 먼저 출력후 나머지 buffered에 저장 후 출력 
			false 경우 전체를 다 buffered에 저장 후 출력 
-->

include 이후의 내용.


</body>
</html>