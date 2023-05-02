<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <% response.setContentType("text/html; charset=UTF-8"); %>
	<%@include file ="../incluede/header.jsp" %>



    <nav>
    <div id="listimg" class="wrap">
    
     <article0><a href='detaillist.do?category=빵'><img src="resources/image/bread2.png" style="width: 60%;"></a></article0> 
   <article0><a href='cake.do?category=케이크'><img src="resources/image/cake3.png" style="width: 60%;"></a></article0>
    <article0><a href='sandwich.do?category=샌드위치'><img src="resources/image/sandwich2.png" style="width: 60%;"></a></article0> 
     <article0><a href='snack.do?category=구움과자'><img src="resources/image/snack2.png" style="width: 60%;"></a></article0> 
    <article0><a href='macaron.do?category=마카롱'><img src="resources/image/macaron2.png" style="width: 60%;"></a></article0>
    <article0><a href='etc2.do?category=기타'><img src="resources/image/etc2.png" style="width: 60%;"></a></article0>
    
    </div>
</nav>
    
    
    <a href="">
    <div id="box1">
    hot 레시피
    </div></a>

      <div id = "list_wrap2" class="wrap">
    
    <ul>
 <c:choose>
    <c:when test="${empty hotRes }">
     <p>--------- 작성된 글이 없습니다 ---------- </p>
     </c:when>
     <c:otherwise>
    <c:forEach var="hotDto" items="${hotRes }" begin="0" end="2" step="1">
       

    <li>
       <img src="${pageContext.request.contextPath }/resources/image/${hotDto.cook_db }" alt=${hotDto.cook_db }">
        <p class="listTitle">${hotDto.recipe_title }</p>
         <p>작성자 : ${hotDto.member_nicname } </p>
        <p>조회수 : ${hotDto.recipe_readcount } / 추천수 : ${hotDto.recipe_best }</p>
        
     </li>
  
        </c:forEach>
        </c:otherwise>
        </c:choose>
      </ul>
    </div>

<hr width="60%">


    <a href="">
    <div id="box1">   
    오늘의 새 레시피
    </div></a>

      <div id = "list_wrap2" class="wrap">
    
    <ul>
 <c:choose>
    <c:when test="${empty hotRes }">
     <p>--------- 작성된 글이 없습니다 ---------- </p>
     </c:when>
     <c:otherwise>
    <c:forEach var="newDto" items="${newRes }" begin="0" end="2" step="1">
       

    <li>
       <img src="${pageContext.request.contextPath }/resources/image/${newDto.cook_db }" alt=${newDto.cook_db }">
        <p class="listTitle">${newDto.recipe_title }</p>
         <p>작성자 : ${newDto.member_nicname } </p>
        <p>조회수 : ${newDto.recipe_readcount } / 추천수 : ${newDto.recipe_best }</p>
        
     </li>
  
        </c:forEach>
        </c:otherwise>
        </c:choose>
      </ul>
    </div>
    
        <%@include file ="../incluede/0_footer.jsp" %>
        

</body>

</html>