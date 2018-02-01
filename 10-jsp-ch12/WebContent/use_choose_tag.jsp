<!-- p.301 -->
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head><title>choose 태그</title>
</head>
<body>
	<ul>
		<!-- when 부분은 조건, 첫번째 조건이 만족되면 아래는 실행안된다 / otherwise if문의 else로 보기 -->
		<c:choose>
			<c:when test="${ param.name == 'bk' }">
			<li>당신의 이름은 ${ param.name } 입니다.</li>
			</c:when>
			
			<c:when test="${ param.age > 20 }">
				<li>당신은 20세 이상 입니다.</li>
			</c:when>
			
			<c:otherwise>
				<li>당신은 'bk'가 아니고 20세 이상이 아닙니다.</li>
			</c:otherwise>
		</c:choose>
	</ul>
</body>
</html>