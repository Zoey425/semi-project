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
	join.user_id.onkeypress = function(){
		let idLimit =  /^[a-zA-Z0-9]{6,10}$/;
		if(!idLimit.test(input[0].value)){
			document.getElementById(errorId[0]).innerHTML = "띄어쓰기 없이 영문,숫자 6~10자리";
		}else{
			document.getElementById("idError").innerHTML="";
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


	 //email확인
	 function email_error1(){
	    let email1 = document.getElementById("user_email1").value;
	    
	    if(email1.length == ""){
	        document.getElementById("emailError").innerHTML="이메일이 올바르지 않습니다";
	    }else{
	        document.getElementById("emailError").innerHTML="";
	        email1check=true;
	        totalemail()
	    }
	}
	 function email_error2(){
	    let email3 = document.getElementById("user_email3").value;
	    
	    if(email3.length == "" ){
	        document.getElementById("emailError").innerHTML="이메일이 올바르지 않습니다";
	    }else{
	        document.getElementById("emailError").innerHTML="";
	        email3check=true;
	        totalemail()
	    }
	}
	function email3(){
    i=document.join.mail3.selectedIndex // 선택항목의 인덱스 번호
    var mail=document.getElementById("emailform").options[i].value // 선택항목 value
    document.getElementById("user_email3").value=mail
}

	function totalemail(){
		const email1 = document.getElementById("user_email1").value;
		const email2 = document.getElementById("user_email2").next.value;
		const email3 = document.getElementById("user_email3").value;
		if(email1 != "" && email3 != ""){
		let total = email1 + email2 + email3;
		document.getElementById("totalemail").value = total;
		}
	}

	function totalemail(){
	    const email1 = $("#user_email1").val();
	    const email2 = $("#user_email2").text();
	    const email3 = $("#user_email3").val();
	    if(email1 != "" && email3 !=""){
		   	 let total = email1+email2+email3;
		   	 $("#totalemail").val(total);
    	}
	}

	function totalemail(){
		const email1 = $('[id=user_email1]').val();
		const email2 = $('[id=user_email2]').val();
		const email3 = $('[id=user_email3]').val();
		if(email != "" && email3 !=""){
			let total = email1 + email2 + email3;
			$("#totalemail").val(total);
		}
	}
  
