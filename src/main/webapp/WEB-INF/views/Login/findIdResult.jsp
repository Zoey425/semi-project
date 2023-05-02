<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<link href="resources/css/findIdResult.css" rel="stylesheet">
</head>
<body>
	<div class="findId">
        <div class="closebutton">
        <p id="title">
        <h2>아이디 찾기</h2>
        </p>
        </div>
        <div id="findId-Result">
            <p id="IdResult">회원님의 아이디는 <b>${findid.memberid }</b> 입니다.</p>
            <div id="buttongroup">
            <p id="id"><input type="button" id="loginbutton" value="로그인" onclick="location.href='loginform.do'"></p>
            <p id="password"><input type="button" id="pwbutton" value="비밀번호 찾기"
            													onclick="location.href='findPwform.do'"></p>
            </div>
        </div>
    </div>
</body>
</html>