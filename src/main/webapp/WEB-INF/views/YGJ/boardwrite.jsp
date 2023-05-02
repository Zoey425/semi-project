<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../incluede/header.jsp" %>


<div class="container">
		<form action="insertres.do" method="post" name="recipe" enctype="multipart/form-data">
		<%--  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"> --%>
		<input type="hidden" name="member_id" value="${id}">
		<div class="center">
			<div class="title">레시피 등록</div>
			
		<div class="cont_box pad1">
			<div class="cont_line">
				<p class="cont_tit">레시피 제목</p>
				<input type="text" name="recipe_title" id="recipe_title"
				class="form-control" placeholder="예) 크로플 만들기"
				style="width:610px;">
			</div>
			
			<div class="cont_line pad2">
				<p class="cont_tit">요리소개</p>
				<textarea name="recipe_content" id="recipe_content"
				class="form-control step_cont" placeholder="예) 바삭한 크로플 만들기"
				style="height: 100px; width: 610px; resize: none;"></textarea>
			</div>
			
			<div class="cont_line">
				<p class="cont_tit">카테고리</p>
					<select class="form-select" name="category">
						<option value>종류</option>
						<option value="종류1">빵</option>
						<option value="종류2">케이크</option>
						<option value="종류3">샌드위치</option>
						<option value="종류3">구움과자</option>
						<option value="종류3">마카롱</option>
						<option value="종류3">기타</option>
					  </select>   
			</div>
			
			<div class="cont_line">
				<p class="cont_tit">요리시간</p>
				<select name="recipe_time" id="recipe_time">
					<option value>시간</option>
					<option value="5">5분이내</option>
					<option value="10">10분이내</option>
					<option value="15">15분이내</option>
					<option value="20">20분이내</option>
					<option value="30">30분이내</option>
					<option value="60">60분이내</option>
					<option value="90">90분이내</option>
					<option value="120">120분이내</option>
				</select>
			</div>
		</div>
		
<div class="cont_box pad1">
	<div class="mag" id="material">
		<li id="material_1">
			<p class="cont_tit2 st2 mag">
				<input type="text" name="mat_title_1" id="mat_title_1"
				value="재료" class="form-control"
				style="font-weight: bold; font-size: 18px; width: 210px;">
			</p>
			<ul id="mat_area_1" class="ui-sortable">
				<li id="limat_1">
					<input type="text" 
					class="form-control" style="width:330px;"
					name="material_name" 
					id="material"placeholder="예) 크루아상 생지">
					<input type="text" 
					class="form-control" style="width:280px;"
					name="material_amount" 
					id="material_amount" placeholder="예) 1개">
					<span class="btn-del" ></span>
				</li>
				
			</ul>
				

			<button type="button" class="btn_add" id="add_1"
			 	style="padding:0 0 20px 220px; width:880px;">
			 	<span class="glyphicon glyphicon-plus"></span>
			 	추가
			 </button>
		</li>
		<li id="material_2">
			<p class="cont_tit2 st2 mag2">
				<input type="text" name="mat_title_1" id="mat_title_2"
				value="소스" class="form-control"
				style="font-weight: bold; font-size: 18px; width: 210px;">
			</p>
			<ul id="mat_area_2" class="ui-sortable">
				<li id="limats_1">
					<input type="text" 
					name="sauce_name"
					class="form-control" style="width:330px;" 
					placeholder="예) 메이플 시럽">
					<input type="text" 
					name="sauce_amount"
					class="form-control" style="width:280px;" 
					placeholder="예) 2T">
					<span class="btn-del3" ></span>
				</li>
				
			</ul>
				

			<button type="button" class="btn_add2" id="add_2"
			 	style="padding:0 0 20px 220px; width:880px;">
			 	<span class="glyphicon glyphicon-plus"></span>
			 	추가
			 </button>
		</li>
	</div>
		
		</div>
		<div class="cont_box pad1">
			<p class="cont_tit3">요리순서</p>
			<div id="stepArea">
			<div id="step_1" class="step">
			<p id="step_index" class="cont_tit3_1">Step1</p>
			<div id="divStepText_1" style="display:inline-block">
                <textarea name="step_content" id="step_content" class="form-control step_cont" 
                placeholder="예) 크루아상을 와플 기계에 굽는다."
                 style="height:160px; width:430px; resize:none;display:block;float:left;"></textarea>
                 <div id="divStepUpload" style="display:inline-block">
                		<!-- <input type="hidden" name="step_photo[]" id="step_photo_1" value=""> -->
                		<label>
                		<input type="file" name="uploadfile" id="step_file_1"  accept="jpeg,png,gif" style="display:;width:0px;height:0px;font-size:0px;" >
                		<img src="https://recipe1.ezmember.co.kr/img/pic_none2.gif" width="160" height="160" style="display:inline;">
            				</label>
            				<span class="btn-del2" ></span>
            	</div>
            </div>
          </div>
        </div>
            <div class="btn_add mag_b_25" style="padding:0 0 20px 180px; width:820px;"><button type="button" onclick="addStep()" class="btn btn-default">
            <span class="glyphicon glyphicon-plus"></span>순서추가
            </button></div>
            
            
            <p class="cont_tit4">요리완성사진
		 </p>
		
		 <div id="divWorkArea" style="display:inline-block;" class="ui-sortable">
                <div id="divWorkUpload_1" class="complete_pic">
            <label>
            <!--  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">-->
            <input type="file" name="cook_uploadfile" id="q_work_file_1" accept="jpeg,png,gif" style="display:;width:0px;height:0px;font-size:0px;" >
                <img  src="https://recipe1.ezmember.co.kr/img/pic_none3.gif" alt="No Image" style="width: 140px; height: 140px;">
            </label>
            </div>
            
                <div id="divWorkUpload_2" class="complete_pic">
            <label>
            <input type="file" name="cook_uploadfile" id="q_work_file_2" accept="jpeg,png,gif" style="display:;width:0px;height:0px;font-size:0px;">
            <img  src="https://recipe1.ezmember.co.kr/img/pic_none3.gif" alt="No Image" style="width: 140px; height: 140px;">
        	</label>
        </div>
                
                <div id="divWorkUpload_3" class="complete_pic">
            <label>
            <input type="file" name="cook_uploadfile" id="q_work_file_3" accept="jpeg,png,gif" style="display:;width:0px;height:0px;font-size:0px;" >
                <img  src="https://recipe1.ezmember.co.kr/img/pic_none3.gif" alt="No Image" style="width: 140px; height: 140px;">
        </label>
        </div>
                
                
              </div>
			</div>
		</div>	
		
		<div class="regi_btm">
    <button type="submit"  class="btn-lg btn-primary">저장</button>
	    <button type="reset"  class="btn-lg btn-default" onclick="location.href='main.do'">취소</button>
      </div>
	</form>
</div>

<script>
$('.btn-del').css('display','none');
$('.btn-del3').css('display','none');
$('.btn-del2').css('display','none');
	//<button type="button" onclick="mat_add()"class="btn_add"
	//style="padding:0 0 20px 220px; width:880px;">
	//<span class="glyphicon glyphicon-plus"></span>
	//추가
	//</button> var id=$('#material li').attr('id');
	//var id_num =id.split("_")[1];
	
//재료	
var obj=null;
var step_obj=$('#stepArea').html();
console.log(step_obj)

function mat_add(seletor){
	
	console.log(seletor);

	
	length=seletor.find("li").length
	
	console.log(length);
	var id;
	var id_num =0;

	
	
		 id = seletor.find("li").last().attr("id");
		 id_num =id.split("_")[1];
		 
		 $("#mat_area_1").append($("#mat_area_1>#limat_1").last().clone());
	 
	
	seletor.find("li").last().attr("id" ,"limat_"+(parseInt(id_num)+1) );
	var length = $('.btn-del').length
 	console.log(length)
 	if (length==1){
 		$('.btn-del').css('display','none')
 	}else{
 		$('.btn-del').css('display','inline-block')
 	}
}

$('.mag').on('click', '#add_1', function(){
	selector = $(this).prev(); 
	console.log(".mag=" + selector);
	mat_add(selector );
	
})


$('.mag').on('click', '.btn-del', function(){
	$(this).parents("ul>li").remove();
	var length = $('.btn-del').length
 	console.log(length)
 	if (length==1){
 		$('.btn-del').css('display','none')
 	}else{
 		$('.btn-del').css('display','inline-block')
 	}
})

var length = $('.btn-del').length
	 	console.log(length)
	 	if (length==1){
	 		$('.btn-del').css('display','none')
	 	}else{
	 		$('.btn-del').css('display','inline-block')
	 	}


var obj2=null;
function mat_add2(seletor){
	
	console.log(seletor);

	
	length=seletor.find("li").length
	
	console.log(length);
	var id;
	var id_num =0;

		 id = seletor.find("li").last().attr("id");
		 id_num =id.split("_")[1];
		 
		 $("#mat_area_2").append($("#mat_area_2>#limats_1").last().clone());
	 
	
	seletor.find("li").last().attr("id" ,"limats_"+(parseInt(id_num)+1) );
	var length = $('.btn-del3').length
 	console.log(length)
 	if (length==1){
 		$('.btn-del3').css('display','none')
 	}else{
 		$('.btn-del3').css('display','inline-block')
 	}
}

$('.mag').on('click', '#add_2', function(){
	selector = $(this).prev(); 
	console.log(".mag=" + selector);
	mat_add2(selector );
	
})


$('.mag').on('click', '.btn-del3', function(){
	$(this).parents("ul>li").remove();
	var length = $('.btn-del3').length
 	console.log(length)
 	if (length==1){
 		$('.btn-del3').css('display','none')
 	}else{
 		$('.btn-del3').css('display','inline-block')
 	}
})

var length = $('.btn-del3').length
	console.log(length)
	if (length==1){
		$('.btn-del3').css('display','none')
	}else{
		$('.btn-del3').css('display','inline-block')
	}

   
	var cnt =0;
	function addStep(){
		var id =$('#stepArea> div').last().attr('id');
		var id_num=id.split("_")[1];
		
		cnt++;
		    $('#stepArea').append(step_obj);
		    
		    $("#stepArea> div").last().attr("id" ,"step_"+(parseInt(id_num)+1) );
		    
		 	$("#stepArea> div>p").last().text("Step"+(parseInt(cnt)+1) );
		 	
		 	$("#divStepUpload>label>input").last().attr("id","step_file_"+(parseInt(cnt)+1) );
		 	
		 	
		 	
		 	
		 	$('.cont_tit3_1').each(function(index, item){ 
		 		$(this).text('Step'+(index+1))
		 	})
		 	
		 	var length = $('.btn-del2').length
		 	console.log(length)
		 	if (length==1){
		 		$('.btn-del2').css('display','none')
		 	}else{
		 		$('.btn-del2').css('display','inline-block')
		 	}

		 	
	}
	$('#stepArea').on('click','.btn-del2', function(){
		
		
		$(this).parents(".step").remove();
		$('.cont_tit3_1').each(function(index, item){ 
	 		$(this).text('Step'+(index+1))
	 	})
	 	var length = $('.btn-del2').length
	 	console.log(length)
	 	if (length==1){
	 		$('.btn-del2').css('display','none')
	 	}else{
	 		$('.btn-del2').css('display','inline-block')
	 	}
	})
	
	
	
	$("#stepArea").on('change','input',function (e) {
		console.log('파일 변경')
		console.log($(this).val()); 
		var file = e.target.files[0];
		var target = $(this);
		
		if (!file.type.match('image.*')) { 
			alert("확장자는 이미지 확장자만 가능합니다.");
			$('input[type=file]').val('');
			return;
		}
		
		var reader = new FileReader();				
			
		reader.readAsDataURL(file);
		
		
		reader.onload = function(e) {
			
		target.next().attr('src', e.target.result);
		}
			
	}); 
	
	
	//
	
	$("#q_work_file_1").change(function (e) {
		console.log($(this).val()); 
		var file = e.target.files[0];
		
		if (!file.type.match('image.*')) { 
			alert("확장자는 이미지 확장자만 가능합니다.");
			$('input[type=file]').val('');
			return;
		}
		
		var reader = new FileReader();				
		
		
		reader.readAsDataURL(file);
		
		
		reader.onload = function(e) {
			
		$("#divWorkUpload_1 img").attr('src', e.target.result);
		
		}
			
	}); 
	$("#q_work_file_2").change(function (e) {
		console.log($(this).val()); 
		var file = e.target.files[0];
		
		
		if (!file.type.match('image.*')) { 
			alert("확장자는 이미지 확장자만 가능합니다.");
			$('input[type=file]').val('');
			return;
		}
		
		var reader = new FileReader();				
		
				
		reader.readAsDataURL(file);
		
		
		reader.onload = function(e) {
		
		$("#divWorkUpload_2 img").attr('src', e.target.result);
		
		}
			
	}); 
	
	$("#q_work_file_3").change(function (e) {
		console.log($(this).val()); 
		var file = e.target.files[0];
		
		
		if (!file.type.match('image.*')) { 
			alert("확장자는 이미지 확장자만 가능합니다.");
			$('input[type=file]').val('');
			return;
		}
		
		var reader = new FileReader();				
		
		
		reader.readAsDataURL(file);
		
		
		reader.onload = function(e) {
			
		$("#divWorkUpload_3 img").attr('src', e.target.result);
		
		}
			
	}); 
	
	$("#q_work_file_4").change(function (e) {
		console.log($(this).val()); 
		var file = e.target.files[0];
		
	
		if (!file.type.match('image.*')) { 
			alert("확장자는 이미지 확장자만 가능합니다.");
			$('input[type=file]').val('');
			return;
		}
	
		var reader = new FileReader();				
		
				
		reader.readAsDataURL(file);
		
	
		reader.onload = function(e) {
	
		$("#divWorkUpload_4 img").attr('src', e.target.result);
		
		}
			
	}); 

	
</script>
<script>

</script>
<%@include file="../incluede/0_footer.jsp" %>
</body>
</html>