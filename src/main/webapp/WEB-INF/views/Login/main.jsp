<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>로그인 성공 !!!!!!!!!!</h3>
	<table>
		<tr>
			<td>이름 : ${res.membername }</td>
			<td>이메일 : ${res.memberemail }</td>
			<td>전화번호 : ${res.memberphone }</td>
		</tr>
		<tr>
			<td>
			<input type="button" value="로그아웃" onclick="location.href='logout.do'">
			</td>
		</tr>
	</table>
</body>
</html>