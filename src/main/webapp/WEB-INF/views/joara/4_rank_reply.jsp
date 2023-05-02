<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <% response.setContentType("text/html; charset=UTF-8"); %>
	<%@include file ="../incluede/header.jsp" %>
    
    <a href='commentbest.do?id="detail_commentbest"'>
    <div id="box1">
    댓글순
    </div></a>

     <div id = "list_wrap2" class="wrap">
    
 	<ul>
 	<c:choose>
    <c:when test="${empty rankRes }">
     <p>--------- 작성된 글이 없습니다 ---------- </p>
     </c:when>
     <c:otherwise>
    <c:forEach var="rankDto" items="${rankRes }" begin="0" end="8" step="1">
    
    
    <li>
        <img src="${pageContext.request.contextPath }/resources/image/${rankDto.cook_db }" alt="${rankDto.cook_db }">
        <p> ${rankDto.recipe_title } </p>
        <p>작성자 : ${rankDto.member_nicname } </p>
        <p>조회수 : ${rankDto.recipe_readcount } / 추천수 : ${rankDto.recipe_best } </p>
        
   </li>
  
        </c:forEach>
        </c:otherwise>
        </c:choose>
      </ul>
    </div>
  

     <%@include file ="../incluede/0_footer.jsp" %>


</body>

</html>