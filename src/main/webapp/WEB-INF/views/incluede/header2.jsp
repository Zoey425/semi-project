<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="resources/css/main.css" />
  <link href="resources/css/footer.css" rel="stylesheet">
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script defer src="resources/js/main.js" defer></script>
  <link href="resources/css/detaillist.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
		integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<link rel="stylesheet"
		href="${pageContext.request.contextPath }/resources/css/theme.css" />	
			<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" 
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" 
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	
	<style>
		
		div.container {
			overflow: hidden;
		}
		
		div.slideshow-container {
			margin-bottom: 20px;
		}	
		
		#wrap-float-left { 
			float: left; position: relative; left: 50% 
		}
		
	    #horizontal-center-align { 
	    	float: left; position: relative; left: -50%; 
	    }
	    
	    #horizontal-line {
	    	border: 1px solid #E2EBE5;
	    	border-radius: 5px;
	    }
	    
	    div.text {
			position: absolute;
			bottom: 5px;
			right: 0px;
			background-color: rgba(0,0,0,0.5);
			color: white;
			padding-left: 20px;
			padding-right: 20px;
			height: 25px;
			line-height: 100%;
			font-weight: bold;
	    }
	    
	    
	    table#step-table > thead > tr:nth-child(1) > th:nth-child(1) { width:  3%; }
	    table#step-table > thead > tr:nth-child(1) > th:nth-child(2) { width:  67%; }
	    table#step-table > thead > tr:nth-child(1) > th:nth-child(3) { width:  30%; }
	</style>
	
	
	<style>
		/* 아래 comment 부분 css */		
		.date {
            font-size: 14px;
            color: green;
        }

        .comment-text {
            font-size: 15px
        }

        .fs-12 {
            font-size: 14px
        }

        .shadow-none {
            box-shadow: none
        }

        .name {
            color: #007bff
        }

        .cursor:hover {
            color: blue
        }

        .cursor {
            cursor: pointer
        }

        .textarea {
            resize: none
        }
        
        
	</style>

  <title>슬기로운 홈베이킹 </title>
</head>
<body>
  
  <!-- HEADER START-->
  <header>

    <div>
    <div class="nav nav_top inner">
      <ul class="login">
      <c:choose>
      	<c:when test="${sessionScope.res != null }">
      	<li class="login__text"><span>${res.membername }님</span> 반갑습니다</li>
      	<li class="login__img"><i class="bi bi-person-circle"></i></li>
      	<input type="button" value="로그아웃" onclick="location.href='logout.do'"> <!-- 이지연 수정 -->
      	</c:when>
      	<c:otherwise>
      	<li class="login__img" onclick="location.href='loginform.do'" style="padding-right:10px;"><span style="padding-right:10px;">로그인</span><i class="bi bi-person-circle"></i></li>
      	</c:otherwise>
      </c:choose>
      <li class="mid_nav_icon" onclick="location.href='insertform.do'"><i class="bi bi-pencil"></i></li>
      </ul>
    </div>

    <!-- logo -->
    <div class="logo">
   <h1 class="logo-title"><a href="main.do">슬기로운 홈베이킹</a></h1>
    <p><img src="resources/image/main.png" alt=""></p>
    </div>
<!--     <div class="nav nav_mid inner">
      <p class="search">
          <input id="input" type="search" placeholder="Search" />
          <i class="bi bi-search"></i>
      </p>

      <ul>
        <li class="mid_nav_icon"><i class="bi bi-cart"></i></li>
        <li class="mid_nav_icon" onclick="location.href='insertform.do'"><i class="bi bi-pencil"></i></li>
      </ul>
    </div> -->


    <nav>
      <div id="nav">
          <ul class="menu inner nav_main">              
              <li><a href='detaillist.do?category=빵'>슬기로운 레시피</a>
                  <ul class="sub">
                     <li><a href='detaillist.do?category=빵'>빵</a></li>
                      <li><a href='cake.do?category=케이크'>케이크</a></li>
                      <li><a href='sandwich.do?category=샌드위치'>샌드위치</a></li>
                      <li><a href='snack.do?category=구움과자'>구움과자</a></li>
                      <li><a href='macaron.do?category=마카롱'>마카롱</a></li>
                      <li><a href='etc2.do?category=기타'>기타</a></li>
                  </ul>
              </li>
    
              <li><a href='rankbest.do?category=rankbest'>랭킹</a>
                  <ul class="sub">
                      <li><a href='rankbest.do?category=rankbest'>추천순</a></li>
                      <li><a href='commentbest.do?category=commentbest'>댓글순</a></li>
                      <li><a href='readbest.do?category=readbest'>조회순</a></li>
                  </ul>
              </li>
              <li><a href="#" onclick="sorry();">슬기로운 스토어</a></li>
          </ul>
      </div>
    
    </nav>

  </div>
  </header>
 <!-- HEADER END -->