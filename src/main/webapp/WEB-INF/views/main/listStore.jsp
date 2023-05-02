<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
    <div class="inner mb80">
        <h4 class="main-title">레시피 명예의 전당</h4>
        <p class="banner"><img src="resources/image/main-sub-img.png" alt="img banner"></p>

        <div id="store-wrap">
        
       <c:choose>
	       	<c:when test="${empty hit }">
				<p>--------- 작성된 글이 없습니다 ---------- </p>
				</c:when>
			<c:otherwise>
	          <c:forEach var="dto" items="${hit}" begin="0" end="15" step="1" varStatus="status">
		         <div class="store-items" onclick="">
			            <div class="store-item">
			              <p class="store-item-img"><img src="${pageContext.request.contextPath }/resources/image/${dto.cook_db }" alt="${dto.cook_db }"></p>
			              <p class="store-item-title"> ${dto.recipe_title } </p>
			              <p class="store-item-text"> ${dto.recipe_content}</p>
			            </div>
		          </div>
	          </c:forEach>
          </c:otherwise>
         </c:choose>
         
       </div>
        <p id="more-Btn" class="moreBtn"><a href="javascript:void(0);" onclick="load();">more</a></p>

       </div>