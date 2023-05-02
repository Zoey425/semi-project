<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <% response.setContentType("text/html; charset=UTF-8"); %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
   
    <title>슬기로운 홈베이킹</title>

<!-- js -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">

  </script>

<!-- css -->
<style>
    @import url('https://raw.githubusercontent.com/buppagi/webfonts/master/css/style.min.css');
   
    @font-face {
        font-family: 'Jua';
        src: url("font/BMJUA_otf.otf");
    }

    #listimg {
        width: 1100px;
        margin-left: auto;
        margin-right: auto;
        overflow: hidden;
        padding-top: 30px;
        display: flex

    }

    div > article0 {
        float: left;
        margin-left: 30px;
    }


    #box1 {
        
        margin-left: 23%;
        margin-top: 60px;
        height: 30px;
        background-color: #5C5E5E;
        width: 150px;
        text-align-last: center;
        border-radius: 8px;
        font-size: 16px;
        font-style: normal;
        line-height: 30px;
        color: white;
        font-family:'Jua';

        }


    #list_wrap1 {
        width: 1100px;
        margin-left: auto;
        margin-right: auto;
        margin: auto;
        overflow: hidden;
        padding-top: 30px;
        padding-bottom: 40px;
        display: flex;
        line-height: 25px;
        font-family:'Jua';
        
    }

    #list_wrap2 {
        width: 1100px;
        margin-left: auto;
        margin-right: auto;
        margin: 0 auto;
        overflow: hidden;
        padding-top: 30px;
        padding-bottom: 40px;
        display: flex;
        line-height: 25px;
        font-family:'Jua';

    }

    #list_wrap3 {
        width: 1100px;
        margin-left: auto;
        margin-right: auto;
        margin: 0 auto;
        overflow: hidden;
        padding-bottom: 40px;
        display: flex;
        line-height: 25px;
        font-family:'Jua';

    }

    a {
        text-decoration-line: none;
    }

    ul {
        width: 1100px;

    }
    
    ul > p {
    
         padding-top: 15px;
    
    }


</style>


</head>

<body>
	<%@include file ="../incluede/header.jsp" %>
    
    <a href="">
    <div id="box1">
    실시간 hot!
    </div></a>

    <div id = "list_wrap1">
    <ul>
        <a href="http://www.naver.com">
        <img src="resources/image/block.png">
        <p>
        제목 : </a><br>
        작성자 :<br>
        조회수 :     / 찜 수 :<br>
        </p>
    </ul>
    
    
    <ul>
        <a href="http://www.naver.com">
        <img src="resources/image/block.png">
        <p>제목 : </a><br>
        작성자 :<br>
        조회수 :     / 찜 수 :<br>
        </p>
    </ul>
    
    <ul>
        <a href="http://www.naver.com">
        <img src="resources/image/block.png">
        <p>제목 : </a><br>
        작성자 :<br>
        조회수 :     / 찜 수 :<br>
        </p>
        </ul>
    
    </div>

    <hr width="60%">

    <div id = "list_wrap2">
        <ul>
        <a href="http://www.naver.com">
         <img src="resources/image/block.png">
        <p>제목 : </a><br>
        작성자 :<br>
        조회수 :     / 찜 수 :<br></p>
        </ul>
        
        <ul>
            <a href="http://www.naver.com">
            <img src="resources/image/block.png">
            <p>제목 : </a><br>
            작성자 :<br>
            조회수 :     / 찜 수 :<br></p>
            </ul>
        
        <ul>
            <a href="http://www.naver.com">
            <img src="resources/image/block.png">
            <p>제목 : </a><br>
              작성자 :<br>
               조회수 :     / 찜 수 :<br></p>
                </ul>
            </div>

        
    <div id = "list_wrap3">
    <ul>
    <a href="http://www.naver.com">
    <img src="resources/image/block.png">
    <p>제목 : </a><br>
    작성자 :<br>
    조회수 :     / 찜 수 :<br></p>
    </ul>
                
    <ul>
     <a href="http://www.naver.com">
    <img src="resources/image/block.png">
    <p>제목 : </a><br>
    작성자 :<br>
    조회수 :     / 찜 수 :<br></p>
    </ul>
                
     <ul>
     <a href="http://www.naver.com">
     <img src="resources/image/block.png">
     <p>제목 : </a><br>
      작성자 :<br>
     조회수 :     / 찜 수 :<br></p>
     </ul>
     </div>

    <%@include file ="../incluede/0_footer.jsp" %>


</body>

</html>