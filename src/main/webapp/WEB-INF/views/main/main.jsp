<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@include file="../incluede/header.jsp" %>

  <!-- SECTION START -->
  <section class="visual">

    <div class="main-banners inner">
      <!-- main_visual START -->
      <div class="main_visual">
        <!-- main_img -->
        <div class="main_img ">
          <ul class="container">
            <li><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2GWnkbkREMjyMfPZqg-xwAiFZr7tiDzHKHphfNsXwhg&s" alt="쿠키이미지1"></li>
            <li><img src="http://image.bom.co.kr/product/detail/BBY/2012071331060821/604.jpg" alt="반려견쿠키이미지2"></li>
            <li><img src="https://image.kmib.co.kr/online_image/2021/1222/2021122114424346348_1640065364_0016592708.jpg" alt="크리스마스케이크이미지3"></li>
          </ul>
        </div>
        <div class="">    
            <!-- main_text -->
            <div class="main-text-wrap">

              <!-- text1 -->
              <div class="text">
                <span class="sub_title">Recipes</span>
                <div class="title1">
                  크리스마스 기념 <br> 귀여운 쿠키 만들기
                </div>
              </div>
              <!-- text2 -->
              <div class="text">
                <span class="sub_title">Recipes</span>
                <div class="title1">
                  나의 반려동물 <br> 쿠키 만들기
                </div>
              </div>
              <!-- text3 -->
              <div class="text">
                <span class="sub_title">Recipes</span>
                <div class="title1">
                  크리스마크 케이크 만들기
                </div>
              </div>

            </div>
            <!-- main_slide_btn -->
            <span class="btn prev"><i class="bi bi-chevron-left"></i></span>
            <span class="btn next"><i class="bi bi-chevron-right"></i></span>

        </div>
    </div>
    </div>
  </div>

	
     <%@include file="listRecipes.jsp" %>


       <!-- icon menu btn Start -->
       <div class="inner icon-menu">
        <ul class="icon-menu-list">
          <li><a href='detaillist.do?category=빵'><img src="resources/image/bread.png" alt=""><span>빵</span></a></li>
          <li><a href='detaillist.do?category=케이크'><img src="resources/image/cake.png" alt=""><span>케이크</span></a></li>
          <li><a href='detaillist.do?category=샌드위치'><img src="resources/image/sandwich.png" alt=""><span>샌드위치</span></a></li>
          <li><a href='detaillist.do?category=구움과자'><img src="resources/image/snack.png" alt=""><span>구움과자</span></a></li>
          <li><a href='detaillist.do?category=마카롱'><img src="resources/image/macaron.png" alt=""><span>마카롱</span></a></li>
          <li><a href='detaillist.do?category=기타'><img src="resources/image/etc.png" alt=""><span>기타</span></a></li>
        </ul>
      </div>
       <!-- what is the best Start -->
    	<%@include file="listRank.jsp" %>

       <!-- Store Start -->
       <%@include file="listStore.jsp" %>
    

  </section>
  
  <!-- FOOTER -->
	<%@include file="../incluede/0_footer.jsp" %>
</body>
</html>