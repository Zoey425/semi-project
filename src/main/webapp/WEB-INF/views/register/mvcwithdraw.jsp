<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>회원탈퇴</title>
    <link href="resources/css/withdraw.css" rel="stylesheet">
    <script src="resources/js/withdraw.js" ></script>
</head>
<body>
    <div class="whole">

        <h1>회 원 탈 퇴</h1>

        <div class="writeform">
            <div class="notice">
                <h3>회원탈퇴 전 유의 사항</h3>
                <ul>
                   <li>사용하고 계신 아이디는 탈퇴할 경우 재사용 및 복구가 불가능합니다.</li>
                    <li>탈퇴 후 회원정보 및 개인형 서비스 이용기록은 모두 삭제됩니다.
                    </li>
                    <li>탈퇴 후에도 게시판형 서비스에 등록한 게시물은 그대로 남아 있습니다.</li>
                </ul>
                <input type="checkbox">유의 사항을 모두 확인하였으며, 이에 동의합니다.
            </div>
            <div class="certificate">
                <h3>회원탈퇴 전 비밀번호 인증</h3>
                <p>아이디 : </p>
                <p>비밀번호 : 
                <input id="user_pw" type="/password" >
                <input id="user_pwck" type="button" class="button"value="비밀번호 확인">
                 </p>
            </div>
        </div>
        <div class="end">
            <input id="cancel" class="button" type="button" class="button" value="취소">
            &nbsp &nbsp
            <input id="withdraw" class="button" type="button" class="button" value="회원탈퇴">
        </div>
    </div>
</body>
</html>