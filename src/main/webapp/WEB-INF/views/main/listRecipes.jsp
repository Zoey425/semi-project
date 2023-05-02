<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <!-- Recipes Start -->
      <div class="recipes_wrap">
      <div class="inner recipes">
        <h4 class="main-title">Recipes</h4>
        <div class="main-recipes">
    
 		<c:choose>
       		<c:when test="${empty list }">
			<p>--------- 작성된 글이 없습니다 ---------- </p>
			</c:when>
			<c:otherwise>
          <c:forEach var="dto" items="${list }" begin="0" end="3" step="1" varStatus="status">
	          <div class="main-recipe" onclick="location.href='detail.do?recipe_num=1'"> 
	            <p class="main-recipe-img"><img src="${pageContext.request.contextPath }/resources/image/${dto.cook_db }" alt=${dto.cook_db }"></p>
	            <p class="main-recipe-text">${dto.recipe_title }</p>
	          </div>
          </c:forEach>
          </c:otherwise>
         </c:choose>
        </div>
      </div>
    </div>