<!-- p.164 -->
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>INFO</title>
</head>
<body>
	<!-- table 표: 너비 - 화면전체, 선두께 - 1, 칸 안쪽여백 - 0, 칸 간격 - 0 -->
	<table width="100%" border="1" cellpadding="0" cellspacing="0">
		<tr> 	<!-- 행 -->
			<td>제품번호</td>		<!-- 1열 -->
			<td>XXXX</td>		<!-- 2열 -->
		</tr>
		<tr>	<!-- 행 -->
			<td>가격</td>			<!-- 1열 -->
			<td>10,000원</td>	<!-- 2열 -->
		</tr>
	</table>
	
	<!-- /infosub.jsp?type=A -->
	<jsp:include page="infoSub.jsp" flush= "false">
		<jsp:param name="type" value="A"/>		
	</jsp:include>
</body>
</html>