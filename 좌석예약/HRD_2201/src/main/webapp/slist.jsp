<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section style="position:fixed; top:80px; left:0px; text-align:center; width:100%; height:100%; background-color:pink">
<h2 style="text-align:center">교과목 목록</h2>
<form style="display:flex; justify-content:center; align-item:center; text-align:center">
		<table border="1">
			<tr>
				<td>과목코드</td>
				<td>과목명</td>
				<td>학점</td>
				<td>담당강사</td>
				<td>요일</td>
				<td>시작시간</td>
				<td>종료시간</td>
				<td>삭제</td>
			</tr>
		</table>
		</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>