<%@ page language="java" contentType="text/html; charset=UTF-16"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" 
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
		integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/board_reply.js"></script>				
<script>
		$(document).ready(function () {
			console.log("document ready for recipe_reply...");
			
			let recipe_num = "<c:out value='${recipe.recipe_num }' />";
			let loginid = $("#loginid-input").val();
			
			
			let recipeDiv = $("#recipe-reply");
			
			// 댓글 작성하기 버튼 클릭 시 모달 보여주기
			let commentBtn = $("#comment-btn");
			commentBtn.click(function () {
				$('#myModal').modal({backdrop: 'static', keyboard: false});
				
				$("#modal-replyer").val("");
				$("#modal-replyer").val(loginid);
				
				$("#modal-content").val("");
				$("#modal-content").attr("placeholder", "댓글 내용을 입력하세요.");
				
				$("#modal-submit").show();
				$("#modal-update").hide();				
				
				$("#myModal").modal("show");                
            });			
			
			// 댓글 작성 모달 닫기 이벤트
			$("button[data-dismiss='alert']").on("click", function (e) {			    
                if (confirm("취소 하시겠습니까?")) {
                	$("#modal-replyer").val("");
                	$("#modal-content").val("");
                    $("#myModal").modal("hide");
                } else {
                    return;
                }
            });				
			
			// 댓글 입력 후 submit 시 이벤트
			$("#modal-submit").on("click", function (e) {
				if ($("#modal-content").val() == "") {
					alert("댓글 내용을 입력하세요.");
					return;
				}
				if (confirm("댓글을 등록하시겠습니까?")) {
					boardReply.add({
						recipe_num : recipe_num,
						member_id : loginid,
						content : $("#modal-content").val().trim()
					}, function (result) {
						if (result == "success") {
							alert("댓글 등록 완료.");
							$("#modal-replyer").val("");
		                	$("#modal-content").val("");
		                	$("#myModal").modal("hide");
		                	
		                	showList(1);
						}					
					});
				} else {
					return;
				}
			});
			
			// 내가 작성한 댓글 수정 버튼 클릭 시 이벤트
			$("body").on("click", "#reply-edit", function (e) {
				
				let beforeContent = $(this).parent().parent().parent().find("p").text().trim();
				let loginid = $(this).parent().parent().find("span:nth-child(1)").text().trim();
				let reply_num = $(this).data("reply_num");
				
				console.log("beforeContent: " + beforeContent);
				console.log("loginid: " + loginid);
				console.log("reply_num: " + reply_num);
				
				console.log("")
				
				$("#modal-replyer").val(loginid);
				$("#modal-content").val(beforeContent);
				$("#modal-submit").hide();
				$("#modal-update").show();
				
				$("#myModal").modal("show");
				
				$("#modal-update").off("click"); // 이벤트 제거...
				
				$("#modal-update").click(function (e) {		
					
					if (beforeContent === $("#modal-content").val().trim()) {
						alert("댓글을 수정하지 않았습니다. 수정할 댓글 내용을 입력하세요.");
						$("#modal-content").focus();
						return;
					} else if ($("#modal-content").val().trim() == "") {
						alert("수정할 댓글 내용을 입력하세요.");
						$("#modal-content").focus();
						return;
					} else {
						console.log("댓글 수정 작업 중...");
						
						boardReply.update({
							reply_num : reply_num,
							content : $("#modal-content").val().trim()
						}, function (result) {
							if (result == "success") {
								alert("댓글 수정 완료.");
								$("#modal-replyer").val("");
								$("#modal-content").val("");
								
								$("#myModal").modal("hide");
								showList(1);
							}
						});
						
					}	
				});
				
			});
			
			// 댓글 삭제 이벤트
			$("body").on("click", "#reply-delete", function (e) {
				if (confirm("해당 댓글을 삭제하시겠습니까?")) {
					let reply_num = $(this).data("reply_num");
					
					boardReply.remove(reply_num, function (result) {
						if (result == "success") {
							alert("댓글 삭제 완료.");
							showList(1);
						}
					})
					
				} else {
					;
				}
			});
			
			const showList = function (page) {
				boardReply.getList({
					recipe_num : recipe_num,
					page : page || 1
				}, function (list) {
					var str = "";
					
					if (list == undefined || list == null || list.length == 0) {
						recipeDiv.html("<h5 style='color: olive; text-align: center;'>아직 등록된 댓글이 없습니다.</h5>");
						return;
					}
					
					for (let i = 0; i < list.length; i++) {
						str += "<div class='bg-white p-2'>";
						str += "	<div class='d-flex flex-row user-info'>";
						str += '		<img class="rounded-circle" src="${pageContext.request.contextPath }/resources/image/profileimg/user.png" width="45">';
						str += "		<div class='d-flex flex-column justify-content-start ml-2'>";
						str += "			<span class='d-block font-weight-bold name' style='font-size: 18px!important;'>" + list[i].member_id + "</span>";
						str += "			<span class='date text-black-50'>" + boardReply.getFullYmdStr(list[i].reply_date) + "</span>";
						str += "		</div>";
						
						if (loginid == list[i].member_id) {
							str += "<div class='mt-2 text-right'>";
							str += "	<button id='reply-edit' class='btn btn-warning btn-sm ml-3 shadow-none' type='button' data-reply_num='" + list[i].reply_num + "'>수정</button>";
							str += "	<button id='reply-delete' class='btn btn-danger btn-sm ml-1 shadow-none' type='button' data-reply_num='" + list[i].reply_num + "'>삭제</button>";
							str += "</div>";
						}
						
						
						str += "	</div>";
						str += "	<div class='mt-2'>";
						str += "		<p class='comment-text' style='font-size: 16px;'>";
						str += 				list[i].content;
						str += "		</p>";
						str += "	</div>";
						str += "</div>";
						
					}
					
					recipeDiv.html(str);
				}); // getList 호출 끝
			}; // showList 함수 정의 끝
			
			showList(1);			
		}) // document.ready ends
	</script>
	<style>
		/* 아래 comment 부분 css */		
		.date {
            font-size: 14px;
            color: green;
        }
        .comment-text {
            font-size: 15px
        }
        .fs-12 {
            font-size: 14px
        }
        .shadow-none {
            box-shadow: none
        }
        .name {
            color: #007bff
        }
        .cursor:hover {
            color: blue
        }
        .cursor {
            cursor: pointer
        }
        .textarea {
            resize: none
        }
        
        /* #comments-container {
        	border: 1px solid olive;
            border-radius: 10px;
        } */
	</style>	
<title>Insert title here</title>
</head>
<link href="resources/css/detail.css" rel="stylesheet">
<body>

<div class="container sub_bg">
    <div id="contents_area" class="col-xs-9">
        <div class="view2_pic">
               <div class="centeredcrop">
            <img id="main_thumbs" src="https://recipe1.ezmember.co.kr/cache/recipe/2016/02/16/d74c6731fce3dc72c5579b24083185f11.jpg" alt="main thumb" class="portrait">
            </div>
        </div>

        <div class="view2_summary st3">
            <h3><c:out value="${recipe.recipe_title }"/></h3>
                        <div class="view2_summary_in" id="recipeIntro">
                        <c:out value="${recipe.recipe_content }" /></div>
                        <div class="view2_summary_info">
                               
                <span class="view2_summary_info2">예상 조리시간: <b>${recipe.recipe_time }분</b></span>                           
                </div>

        
        <div class="blank_bottom"></div>
                <div class="cont_ingre2">
            <div class="best_tit">
                <b>재료</b><span>Ingredients</span>
                
            </div>
            <div class="ready_ingre3" id="divConfirmedMaterialArea">
            <c:forEach var="materialName" items="${materialNameSplits }" varStatus="status">
               <ul>
                    <b class="ready_ingre3_tt">[재료]</b>
                   <li><c:out value="${status.index + 1 }" />. <c:out value="${fn:trim(materialName) }" /></li>
                    
               </ul>
               </c:forEach>
               <c:forEach var="materialName" items="${sauceNameSplits }" varStatus="status">
                <ul>
                    <b class="ready_ingre3_tt">[양념]</b>
                    <li><c:out value="${status.index + 1 }" />. <c:out value="${fn:trim(sauceName) }" /></li>
                      
                </ul>
                </c:forEach>
            </div>
        </div>



    <div class="blank_bottom"></div>

        <div class="view_step">
            <div class="best_tit">
                <b>조리순서</b><span>Steps</span>
            </div>
<div id="stepDiv1" class="view_step_cont media step1">
<c:forEach var="step" items="" varStatus="status">
	<div id="stepdescr1" class="media-body"><c:out value="" /></div>
	<div id="stepimg1" class="media-right"><img src=""></div>
</c:forEach>

</div>
<div class="blank_bottom"></div>
<!--댓글 등록 모달.  -->
<!-- Comments Form -->
<div class="container" id="comments-container" style="margin-bottom: 100px;">
        <div class="d-flex justify-content-center row">
            <div class="col-md-8">
                <div class="d-flex flex-column comment-section">               
                	
                	<sec:authorize access="isAuthenticated()">	                    
	                    <button id="comment-btn" class="btn btn-primary btn-sm shadow-none" type="button">댓글 작성하기</button>	                    
                    </sec:authorize>
                    
                    <div id="recipe-reply" style="margin-top: 20px;"></div>
                    
				</div>
            </div>
        </div>
    </div>
	
	
	<!--댓글 등록 모달.  -->
	<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 id="modal-title">댓글 작성</h3>
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
						<label>아이디</label>
						<input id="modal-replyer" class="form-control" name='replyer' value='' readonly="true" />
					</div>
					
					<div class="form-group">
						<label>내용</label>
						<!-- <input id="modal-content" class="form-control" name='reply' value=''> -->
						<textarea id="modal-content" class="form-control"></textarea>
					</div>
                </div>
                <div class="modal-footer">
                	<button id="modal-submit" class="btn btn-primary">댓글 등록</button>
                	<button id="modal-update" class="btn btn-success">댓글 수정</button>
                    <button class="btn" data-dismiss="alert" aria-hidden="true">Close</button>
                </div>
            </div>
        </div>
    </div>
</div> 
   			</div>
		</div>
	</div>

</body>
</html>