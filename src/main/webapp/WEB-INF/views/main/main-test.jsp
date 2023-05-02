<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>  

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
                <span class="sub_title">${message }</span>
                <div class="title">
                  크리스마스 기념 <br> 귀여운 쿠키 만들기
                </div>
              </div>
              <!-- text2 -->
              <div class="text">
                <span class="sub_title">Recipes</span>
                <div class="title">
                  나의 반려동물 <br> 쿠키 만들기
                </div>
              </div>
              <!-- text3 -->
              <div class="text">
                <span class="sub_title">Recipes</span>
                <div class="title">
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

<script>
	$(document).ready(function(){
		  listing();
		});
	
		function listing() {
			$(document).ready(function(){
				  listing();
				});

				function listing() {
					$.ajax({
					  type: "GET",
					  url: "http://spartacodingclub.shop/post",
					  data: {},
					  success: function(response){
						  let articles = response['articles'];
						  for (let i = 0; i < articles.length; i++) {
							  let article = articles[i];
					          let image = article["image"];
					          let title = article["title"];
					          let desc = article["desc"];
					          let comment = article["comment"];
					          let temp_html = `<div class="main-recipes">
					              <div class="main-recipe">
						              <p class="main-recipe-img"><img src="${image}" alt="img01"></p>
						              <p class="main-recipe-text">${title}</p>
					            </div>`;
		         			 
						  }
					  }
					})
				}
		}
	</script>
      <!-- Recipes Start -->
      <div class="recipes_wrap">
      <div class="inner recipes">
        <h4 class="main-title">Recipes</h4>
        <div class="main-recipes">
          <div class="main-recipe">
            <p class="main-recipe-img"><img src="" alt="img01"></p>
            <p class="main-recipe-text">타이틀이 들어가는 구간</p>
          </div>

          <div class="main-recipe">
            <p class="main-recipe-img"><img src="" alt="img01"></p>
            <p class="main-recipe-text">타이틀이 들어가는 구간</p>
          </div>

          <div class="main-recipe">
            <p class="main-recipe-img"><img src="" alt="img01"></p>
            <p class="main-recipe-text">타이틀이 들어가는 구간</p>
          </div>

          <div class="main-recipe">
            <p class="main-recipe-img"><img src="" alt="img01"></p>
            <p class="main-recipe-text">타이틀이 들어가는 구간</p>
          </div>
        </div>
      </div>
    </div>


       <!-- icon menu btn Start -->
       <div class="inner icon-menu">
        <ul class="icon-menu-list">
          <li><img src="./image/bread.png" alt=""><span>빵</span></li>
          <li><img src="./image/cake.png" alt=""><span>케이크</span></li>
          <li><img src="./image/sandwich.png" alt=""><span>샌드위치</span></li>
          <li><img src="./image/snack.png" alt=""><span>구움과자</span></li>
          <li><img src="./image/macaron.png" alt=""><span>마카롱</span></li>
          <li><img src="./image/etc.png" alt=""><span>기타</span></li>
        </ul>
      </div>
       <!-- what is the best Start -->
       <div class="inner mb80">
        <div class="best-recipes">
          <h4 class="main-title">What is the best</h4>
          <div class="best-recipe-wrap">
            <div class="best-recipe m0">
              <span class="rank">1</span>
              <div class="best-recipe-list">
                <img src="" alt="베스트레시피이미지1">
              </div>
              <div class="best-list-title">
                촉촉한 초코칩 레시피 한줄 노출
              </div>
            </div>
            <div class="best-recipe">
              <span class="rank">1</span>
              <div class="best-recipe-list">
                <img src="" alt="베스트레시피이미지1">
              </div>
              <div class="best-list-title">
                레시피 제목 노출
              </div>
            </div>
            <div class="best-recipe">
              <span class="rank">1</span>
              <div class="best-recipe-list">
                <img src="" alt="베스트레시피이미지1">
              </div>
              <div class="best-list-title">
                레시피 제목 노출
              </div>
            </div>
            <div class="best-recipe m0">
              <span class="rank">1</span>
              <div class="best-recipe-list">
                <img src="" alt="베스트레시피이미지1">
              </div>
              <div class="best-list-title">
                레시피 제목 노출
              </div>
            </div>
            <div class="best-recipe">
              <span class="rank">1</span>
              <div class="best-recipe-list">
                <img src="" alt="베스트레시피이미지1">
              </div>
              <div class="best-list-title">
                레시피 제목 노출
              </div>
            </div>
            <div class="best-recipe">
              <span class="rank">1</span>
              <div class="best-recipe-list">
                <img src="" alt="베스트레시피이미지1">
              </div>
              <div class="best-list-title">
                레시피 제목 노출
              </div>
            </div>
          </div>
        </div>
       </div>

       <!-- Store Start -->
       <div class="inner mb80">
        <h4 class="main-title">Store</h4>
        <p class="banner"><img src="" alt="img banner"></p>

        <div id="store-wrap">
          <div class="store-items" onclick="">
            <div class="store-item">
              <p class="store-item-img"><img src="" alt="아이템"></p>
              <p class="store-item-title">아이템 이름 </p>
              <p class="store-item-text">아이템 간단한 설명이 들어가는 구간입니다. 두줄이 넘어가게되면 어떻게 보여지게 될까 ...</p>
            </div>
          </div>
          <div class="store-items">
            <div class="store-item">
              <p class="store-item-img"><img src="" alt="아이템"></p>
              <p class="store-item-title">아이템 이름 </p>
              <p class="store-item-text">아이템 간단한 설명이 들어가는 구간입니다. 두줄이 넘어가게되면 어떻게 보여지게 될까 ...</p>
            </div>
          </div>
          <div class="store-items">
            <div class="store-item">
              <p class="store-item-img"><img src="" alt="아이템"></p>
              <p class="store-item-title">아이템 이름 </p>
              <p class="store-item-text">아이템 간단한 설명이 들어가는 구간입니다. 두줄이 넘어가게되면 어떻게 보여지게 될까 ...</p>
            </div>
          </div>
          <div class="store-items">
            <div class="store-item">
              <p class="store-item-img"><img src="" alt="아이템"></p>
              <p class="store-item-title">아이템 이름 </p>
              <p class="store-item-text">아이템 간단한 설명이 들어가는 구간입니다.</p>
            </div>
          </div>
          <div class="store-items">
            <div class="store-item">
              <p class="store-item-img"><img src="" alt="아이템"></p>
              <p class="store-item-title">아이템 이름 </p>
              <p class="store-item-text">아이템 간단한 설명이 들어가는 구간입니다.</p>
            </div>
          </div>
          <div class="store-items">
            <div class="store-item">
              <p class="store-item-img"><img src="" alt="아이템"></p>
              <p class="store-item-title">아이템 이름 </p>
              <p class="store-item-text">아이템 간단한 설명이 들어가는 구간입니다.</p>
            </div>
          </div>
          <div class="store-items">
            <div class="store-item">
              <p class="store-item-img"><img src="" alt="아이템"></p>
              <p class="store-item-title">아이템 이름 </p>
              <p class="store-item-text">아이템 간단한 설명이 들어가는 구간입니다.</p>
            </div>
          </div>
          <div class="store-items">
            <div class="store-item">
              <p class="store-item-img"><img src="" alt="아이템"></p>
              <p class="store-item-title">아이템 이름 </p>
              <p class="store-item-text">아이템 간단한 설명이 들어가는 구간입니다.</p>
            </div>
          </div>
          <div class="store-items">
            <div class="store-item">
              <p class="store-item-img"><img src="" alt="아이템"></p>
              <p class="store-item-title">아이템 이름 </p>
              <p class="store-item-text">아이템 간단한 설명이 들어가는 구간입니다.</p>
            </div>
          </div>
          <div class="store-items">
            <div class="store-item">
              <p class="store-item-img"><img src="" alt="아이템"></p>
              <p class="store-item-title">아이템 이름 </p>
              <p class="store-item-text">아이템 간단한 설명이 들어가는 구간입니다.</p>
            </div>
          </div>
          <div class="store-items">
            <div class="store-item">
              <p class="store-item-img"><img src="" alt="아이템"></p>
              <p class="store-item-title">아이템 이름 </p>
              <p class="store-item-text">아이템 간단한 설명이 들어가는 구간입니다.</p>
            </div>
          </div>
          <div class="store-items">
            <div class="store-item">
              <p class="store-item-img"><img src="" alt="아이템"></p>
              <p class="store-item-title">아이템 이름 </p>
              <p class="store-item-text">아이템 간단한 설명이 들어가는 구간입니다.</p>
            </div>
          </div>
       </div>
        <p id="more-Btn" class="moreBtn"><a href="javascript:void(0);" onclick="load();">more</a></p>

       </div>

  </section>


</body>
</html>