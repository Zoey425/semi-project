<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<link href="resources/css/findPwResult.css" rel="stylesheet">
</head>
<body>
	  <div class="findPw">
        <p id="title">
        <h2>비밀번호 찾기</h2>
        </p>
        <div id="findPw-Result">
            <p id="PwResult">회원님의 비밀번호는 <b>${findpw.memberpw }</b> 입니다.</p>
            <div id="buttongroup">
            <p id="Pw"><input type="button" id="loginbutton" value="로그인" onclick="location.href='loginform.do'"></p>
            </div>
        </div>
    </div>
</body>
</html>