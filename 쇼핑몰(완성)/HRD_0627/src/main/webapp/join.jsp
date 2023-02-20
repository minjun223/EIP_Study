<%@page import="DBPKG.Util"%>
<%@page import="java.sql.*"%>
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
<script type="text/javascript" src="check.js"></script>
<section style="position:fixed; top:100px; width:100%; height:100%; font-size:30px; left:0px; text-align:center; background-color: gray;">
	<h2 style="text-align:center;font-size:20px;">홈쇼핑 회원 등록</h2>
	<form name="frm"style="display:flex; justify-content:center;  align-items:center; text-align:center">
		<table border="1">
		<%
			request.setCharacterEncoding("UTF-8");
			Connection con = null;
			Statement stmt = null; 
			String custno = "";
			
			try {
				con = Util.getConnection();// DB 연결
				stmt = con.createStatement(); // sql 실행하기 위한 변수 생성
				String sql = "SELECT MAX(custno)+1 custno FROM member_tbl";
				ResultSet rs = stmt.executeQuery(sql); // stmt 통해서 sql 실행 *결과*
				rs.next(); // 1개의 결과물 출력
				custno = rs.getString("custno");
			} 
			
			catch(Exception e) {//예외처리
				e.printStackTrace();	
			}
		%>
			<tr>
				<td>회원번호(자동발생)</td>
				<td><input type="text"name="custno" value="<%=custno %>"readonly></td>
			</tr>
			<tr>
				<td>회원성명</td>
				<td><input type="text"name="custname"></td>
			</tr>
			<tr>
				<td>회원전화</td>
				<td><input type="text"name="phone"></td>
			</tr>
			<tr>
				<td>회원주소</td>
				<td><input type="text"name="address"></td>
			</tr>
			<tr>
				<td>가입일자</td>
				<td><input type="text"name="joindate"></td>
			</tr>
			<tr>
				<td>고객등급[A:VIP,B:일반,C:직원]</td>
				<td><input type="text"name="grade"></td>
			</tr>
			<tr>
				<td>도시코드</td>
				<td><input type="text" name="city"></td>
			</tr>
			<tr>
				<td colspan="2">
				<input type="button" value="등록"onclick="return joinCheck()">
				<input type="button" value="조회"onclick="return search()">
				</td>
			</tr>
			<tr>
			</tr>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>