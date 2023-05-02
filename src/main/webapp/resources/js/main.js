
// 메뉴 슬라이드

$(document).ready(function() {
  $(".menu>li").mouseover(function() {
      $(this).children(".sub").stop().slideDown();
  });
  $(".menu>li").mouseleave(function() {
      $(this).children(".sub").stop().slideUp();
  });
});


// 메인 좌우(자동) 슬라이드
// 상단 메인 배너 슬라이더





const container = document.querySelector(".container");
const textContainer = document.querySelector(".main-text-wrap");
const prevBtn = document.querySelector(".prev");
const nextBtn = document.querySelector(".next"); 

(function addEvent(){
  prevBtn.addEventListener('click', translateContainer.bind(this, 1));
  nextBtn.addEventListener('click', translateContainer.bind(this, -1));
})();

function translateContainer(direction){
  const selectedBtn = (direction === 1) ? 'prev' : 'next';
  textContainer.style.transitionDuration = '500ms';
  textContainer.style.transform = `translateX(${direction * (100 / 3)}%)`;

  container.style.transitionDuration = '500ms';
  container.style.transform = `translateX(${direction * (100 / 3)}%)`;
  container.ontransitionend = () => reorganizeEl(selectedBtn);
}

function reorganizeEl(selectedBtn) {
  container.removeAttribute('style');
  textContainer.removeAttribute('style');

  (selectedBtn === 'prev') ? container.insertBefore(container.lastElementChild, 
  container.firstElementChild): container.appendChild(container.firstElementChild);

  (selectedBtn === 'prev') ? textContainer.insertBefore(textContainer.lastElementChild, 
  textContainer.firstElementChild): textContainer.appendChild(textContainer.firstElementChild);
}


// more 버튼 클릭시 노출
$('.store-items').hide();
	$('.store-items').slice(0, 4).show();
	
	$("#more-Btn").click(function(e){ // Load More를 위한 클릭 이벤트e
		e.preventDefault();
		$(".store-items:hidden").slice(0, 4).show(); // 숨김 설정된 다음 n개 표시
   		if($(".store-items:hidden").length == 0){ // 숨겨진 DIV가 있는지 체크해서 없으면 more 버튼 숨기기
			$('#more-Btn').hide();
		}
	});


//
function sorry(){
 	alert("준비중 입니다.");
 }
