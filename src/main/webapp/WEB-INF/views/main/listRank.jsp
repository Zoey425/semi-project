<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
  <div class="inner mb80 best-recipes-warp">
        <div class="best-recipes">
          <h4 class="main-title">What is the best</h4>
          <div class="best-recipe-wrap">
          
          
          <c:choose>
       		<c:when test="${empty rank }">
			<p>--------- 작성된 글이 없습니다 ---------- </p>
			</c:when>
			<c:otherwise>
	          <c:forEach var="dto" items="${rank }" begin="0" end="12" step="1" varStatus="status">
		         <div class="best-recipe">
	            
	              <span class="rank">${dto.ranking }</span>
	              
	              <div class="best-recipe-list">
	                <img src="${pageContext.request.contextPath }/resources/image/${dto.cook_db }" alt=${dto.cook_db }">
	              </div>
	              
	              <div class="best-list-title">
	                ${dto.recipe_title }
	              </div>
	              
	            </div>
	          </c:forEach>
          </c:otherwise>
         </c:choose>
            
          </div>
        </div>
       </div>