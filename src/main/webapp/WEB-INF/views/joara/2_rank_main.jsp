<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <% response.setContentType("text/html; charset=UTF-8"); %>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@include file ="../incluede/header.jsp" %>


    <a href="">
    <div id="box1">
    추천순
    </div></a>

    <div id = "list_wrap1">
    <ul>
        <a href="http://www.naver.com">
        <img src="resources/image/block.png">
        <p>
        제목 : </a><br>
        작성자 :<br>
        조회수 :     / 추천수 :<br>
        </p>
    </ul>
    
    
    <ul>
        <a href="http://www.naver.com">
        <img src="resources/image/block.png">
        <p>제목 : </a><br>
        작성자 :<br>
        조회수 :     / 추천수 :<br>
        </p>
    </ul>
    
    <ul>
        <a href="http://www.naver.com">
        <img src="resources/image/block.png">
        <p>제목 : </a><br>
        작성자 :<br>
        조회수 :     / 추천수 :<br>
        </p>
        </ul>
    
    </div>

<hr width="60%">


    <a href="">
    <div id="box1">   
    댓글순
    </div></a>

    <div id = "list_wrap2">
        <ul>
        <a href="http://www.naver.com">
         <img src="resources/image/block.png">
        <p>제목 : </a><br>
        작성자 :<br>
        조회수 :     / 추천수 :<br></p>
        </ul>
        
        <ul>
            <a href="http://www.naver.com">
            <img src="resources/image/block.png">
            <p>제목 : </a><br>
            작성자 :<br>
            조회수 :     / 추천수 :<br></p>
            </ul>
        
        <ul>
            <a href="http://www.naver.com">
            <img src="resources/image/block.png">
            <p>제목 : </a><br>
              작성자 :<br>
               조회수 :     / 추천수 :<br></p>
                </ul>
            </div>

    <hr width="60%">

    <a href="">
    <div id="box1">   
     조회순
    </div></a>
        
    <div id = "list_wrap3">
    <ul>
    <a href="http://www.naver.com">
    <img src="resources/image/block.png">
    <p>제목 : </a><br>
    작성자 :<br>
    조회수 :     / 추천수 :<br></p>
    </ul>
                
    <ul>
     <a href="http://www.naver.com">
    <img src="resources/image/block.png">
    <p>제목 : </a><br>
    작성자 :<br>
    조회수 :     / 추천수 :<br></p>
    </ul>
                
     <ul>
     <a href="http://www.naver.com">
     <img src="resources/image/block.png">
     <p>제목 : </a><br>
      작성자 :<br>
     조회수 :     / 추천수 :<br></p>
     </ul>
     </div>

     <%@include file ="../incluede/0_footer.jsp" %>


</body>

</html>