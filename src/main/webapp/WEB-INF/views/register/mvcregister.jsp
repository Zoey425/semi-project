<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <link href="resources/css/register.css" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!--<script src="resources/js/register.js" ></script>  -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 
</head>

<script>


window.onload = function(){
	   let join = document.join;

	   let input = document.querySelectorAll('.check');
	   
	   let errorId = ["idError", "pwError","pwckError","nicnameError",
	              "nameError","phoneError","emailError"]
	   let error = document.querySelectorAll('.info > p');

	   function innerReset(error){
	      for (let i = 0; i<error.length; i++){
	         error[i].innerHTML = "";
	      }
	   }

	   //id 입력 문자 검사
	   join.user_id.onkeydown = function(){
	      let idLimit =  /^[a-zA-Z0-9]{6,10}$/;
	      if(!idLimit.test(input[0].value)){
	         document.getElementById(errorId[0]).innerHTML = "띄어쓰기 없이 영문,숫자 6~10자리";
	      }else{
	         error[0].innerHTML = "";
	      }
	   }
	   
	   //pw 입력 문자 검사
	   join.user_pw.onkeydown = function(){
	      let pwLimit =   /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?~&]{8,15}$/; 
	      if(!pwLimit.test(input[1].value)){
	         document.getElementById(errorId[1]).innerHTML = "영문, 숫자, 특수문자 포함 8~15자리";
	      }else{
	         error[1].innerHTML = "";
	      }
	   }
	   //pw 동일 확인
	   join.user_pwck.onkeydown = function(){
	      if(input[1].value != input[2].value){
	         document.getElementById(errorId[2]).innerHTML = "비밀번호가 일치하지 않습니다";
	      }else{
	         error[2].innerHTML = "";
	      }
	   }
	   
	   //nicname 입력 문자 검사
	   join.user_nicname.onkeydown = function(){
	      let nicnameLimit = /^[가-힣a-zA-Z0-9]{2,10}$/
	      if(!nicnameLimit.test(input[3].value)){
	         document.getElementById(errorId[3]).innerHTML = "띄어쓰기 없이 한글,영문,숫자 2~10자리";
	      }else{
	         error[3].innerHTML = "";
	      }
	   }
	   
	   //name 입력 문자 검사
	   join.user_name.onkeydown = function(){
	      let nameLimit = /^[가-힣a-zA-Z0-9]{1,20}$/
	      if(!nameLimit.test(input[4].value)){
	         document.getElementById(errorId[4]).innerHTML = "본인실명을 띄어쓰기 없이 입력해주세요";
	      }else{
	         error[4].innerHTML = "";
	      }
	   }
	   
	   //phone 입력 문자 검사
	   join.user_phone.onkeydown = function(){
	      let phoneLimit = /^[0-9]{11}$/
	      if(!phoneLimit.test(input[5].value)){
	         document.getElementById(errorId[5]).innerHTML = "'-'없이 숫자만 입력해주세요";
	      }else{
	         error[5].innerHTML = "";
	      }
	   }
	   
	   
	}

let idcheck = false;
let pwcheck = false;
let pwckcheck = false;
let nicnamecheck = false;
let namecheck = false;
let phonecheck = false;
let email1check = false;
let email2check = false;

//id확인
function id_error(){
    let id = document.getElementById("user_id").value;

    if(id.length < 6 || id.length >10){
        document.getElementById("idError").innerHTML="아이디가 올바르지 않습니다";
    }else{
        document.getElementById("idError").innerHTML="";
        idcheck=true;
    }
}

$(document).on("click", "#user_idck", function(){
	let memberid = $("#user_id").val();
    console.log(memberid);

    $.ajax({
        url : "idCheck.do",
        type : "post",
        data : {memberid:memberid},
        success : function(data){
            if(data == 1){
                alert("이미 등록된 아이디입니다");
            }else{
                alert("사용 가능한 아이디입니다");
            }
        },
        error : function(){
        	alert("통신 실패");
        }
    });
});
//nicname 중복확인
$(document).on("click", "#user_nicnameck", function(){
	let membernicname = $("#user_nicname").val();
    console.log(membernicname);

    $.ajax({
        url : "nicnameCheck.do",
        type : "post",
        data : {membernicname:membernicname},
        success : function(data){
            if(data == 1){
                alert("이미 등록된 닉네임입니다");
            }else{
                alert("사용 가능한 닉네임입니다");
            }
        },
        error : function(){
        	alert("대실패");
        }
    });
});
/*
//pw확인
function pw_error(){
    let pw = document.getElementById("user_pw").value;
    
    if(pw.length < 8 || pw.length > 15){
        document.getElementById("pwError").innerHTML="비밀번호가 올바르지 않습니다";
    }else{
        document.getElementById("pwError").innerHTML="";
        pwcheck=true;
    }
}

//pw동일 확인
function pwck_error(){
    let pwck = document.getElementById("user_pwck").value;
    let pw = document.getElementById("user_pw").value;

    if(pwck !=pw){
        document.getElementById("pwckError").innerHTML="비밀번호가 일치하지 않습니다";
    }else{
        document.getElementById("pwckError").innerHTML="";
        pwckcheck=true;
    }
}

//nicname확인
function nicname_error(){
    let nicname = document.getElementById("user_nicname").value;
    
    if(nicname.length < 2 || nicname.length > 10){
        document.getElementById("nicnameError").innerHTML="닉네임이 올바르지 않습니다";
    }else{
        document.getElementById("nicnameError").innerHTML="";
        nicnamecheck=true;
    }
}
*/




//name확인
function name_error(){
    let name = document.getElementById("user_name").value;
    
    if(false){
        document.getElementById("nameError").innerHTML="이름이 올바르지 않습니다";
    }else{
        document.getElementById("nameError").innerHTML="";
        namecheck=true;
    }
}

//phone확인
function phone_error(){
    let phone = document.getElementById("user_phone").value;
    
    if(phone.length != 11 || isNaN(phone)){
        document.getElementById("phoneError").innerHTML="전화번호가 올바르지 않습니다";
    }else{
        document.getElementById("phoneError").innerHTML="";
        phonecheck=true;
    }
}

 //email확인
 function email_error1(){
    let email1 = document.getElementById("user_email1").value;
    console.log(email1.length);
    
    if(email1.length == ""){
        document.getElementById("emailError").innerHTML="이메일이 올바르지 않습니다";
    }else{
        document.getElementById("emailError").innerHTML="";
        email1check=true;
        totalemail()
    }
}
 
 function email_error2(){
    let email2 = document.getElementById("user_email3").value;
    console.log(email2.length);
    
    if(email2.length == "" ){
        document.getElementById("emailError").innerHTML="이메일이 올바르지 않습니다";
    }else{
        document.getElementById("emailError").innerHTML="";
        email2check=true;
        totalemail()
    }
}
function totalemail(){
    const email1 = $("#user_email1").val();
    const email2 = $("#user_email2").text();
    const email3 = $("#user_email3").val();
    if(email1 != "" && email3 !=""){
   	 let total = email1+email2+email3;
   	 $("#totalemail").val(total);
   	 console.log(total);
   	 console.log($("#totalemail").val());
    }
}


//회원가입 눌렀을 때 에러 없는지, 중복, 인증 확인은 다 했는지 확인


</script>
</head>
<body>

    <div id="wrap" class="wrapper">
       
        <h1>회 원 가 입</h1>
        
    	<form action="register.do" name="join" id="join" method="post">
        <div class="writeform">

    	<form action="register.do" method="post">
    		<div>
                <label for="memberid">아이디</label>
                <div class="info">

                    <input id="user_id" name="memberid" type="text" class="int check" placeholder="띄어쓰기 없이 영문,숫자 6~10자리"> 

                    <input id="user_idck" class="button" type="button" name="idCheck" class="idCheck" value="중복확인">
                    <p id="idError" class="error"></p>

                </div>
            </div>
            <div>
                <label for="user_pw">비밀번호</label>
                <div class="info">
                    <input id="user_pw" name="memberpw" type="password" class="int check" placeholder="영문, 숫자, 특수문자 포함 8~15자리">
                    <p id="pwError" class="error"></p>
                </div>
            </div>
            <div class="info">
                    <input id="user_pwck" type="password" class="int check" placeholder="비밀번호를 다시 입력해주세요">
                    <p id="pwckError" class="error"></p>
                </div>
            <div>
                <label for="user_nicname">닉네임</label>
                <div class="info">
                    <input id="user_nicname" name="membernicname" type="text" class="int check" placeholder="띄어쓰기 없이 한글,영문,숫자 2~10자리"> 
                    <input id="user_nicnameck" class="button" type="button" name="nicnameCheck" class="nicnameCheck" value="중복확인">
                    <p id="nicnameError" class="error"></p>
                </div>
            </div>
            <div>
                <label for="user_name">이름</label>         
                <div class="info">
                    <input id="user_name" name="membername" type="text" class="int check" placeholder="본인실명을 띄어쓰기 없이 입력해주세요"> 
                    <p id="nameError" class="error"></p>
                </div>
            </div>
            <div>
                <label for="user_phone">전화번호</label>         
                <div class="info">
                    <input id="user_phone" name="memberphone" type="text" class="int check" placeholder="'-'없이 숫자만 입력해주세요"> 
                    <!-- <input id="user_phoneck" class="button" type="button" value="인증번호 전송" onclick="">  -->
                    <p id="phoneError" class="error"></p>
                </div>
            </div>
          <!--   <div>
                <label for="phoneckcode">인증코드 입력</label>         
                <div>
                    <span id="timeLimit">03:00</span>                   
                    <input id="phoneckcode" type="text"> 
                    <input id="phoneck" class="button" type="button" value="인증하기">
                </div>
            </div>  -->
            <div>
                <label for="user_email">이메일</label>         
                <div class="info">
                    <input id="user_email1" class="email" type="text" class="int check" > 
                    <span id="user_email2">@</span>

                    <input id="user_email3" class="email" type="text" oninput="email_error2()" list="emailform"> 

                    <datalist id="emailform" >
                        <option value="직접입력"></option>
                        <option value="naver.com">naver.com</option>
                        <option value="daum.net">daum.net</option>
                        <option value="gmail.com">gmail.com</option>
                        <option value="nate.com">nate.com</option>
                        <option value="hanmail.net">hanmail.net</option>
                        <option value="outlook.com">outlook.com</option>
                        <option value="yahoo.com">yahoo.com</option>
                    </datalist>
                    <input type="hidden" id="totalemail" name="memberemail" value="">
                    <p id="emailError" class="error"></p>
                </div>
            </div>
        </div>
        <div class="end">
        <input id="cancel" class="button" type="button" value="취소" onclick="location.href='loginform.do'">
        &nbsp &nbsp
        <input id="register" class="button" type="submit" value="회원가입" >
        </div>
        </form>

	</div>

    </div>
        

<!--<jsp:include page="../incluede/0_footer.jsp"></jsp:include>-->           

</body>
</html>