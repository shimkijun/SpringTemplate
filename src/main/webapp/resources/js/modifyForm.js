/**
 * 회원 수정 유효성 검사
 */

	$(".modify_wrap #userPw1").on("change",function(){
		var userPw1 = $("#userPw1");
		var pwReg = /^(?=(.*[az]){1,})(?=(.*[\d]){1,})(?=(.*[\W]){1,})(?!.*\s).{10,}$/;
		if(!pwReg.test(userPw1.val())){
			alert("비밀번호 양식에 맞춰 입력 하세요.");
			userPw1.focus();
			return false;
		}
	});
	
	$(".modify_wrap #userPw1,.modify_wrap #userPw2").on("change",function(){
		var userPw1 = $("#userPw1");
		var userPw2 = $("#userPw2");
		if(userPw1.val() != userPw2.val()){
			$(".passChk").removeClass("success").addClass("warning").text("비밀번호가 서로 다릅니다.");
		}else{
			$(".passChk").removeClass("warning").addClass("success").text("비밀번호가 일치 합니다.");
		}
	});
	
	$(".modify_wrap #userEmail").on("change",function(){
		var userEmail = $("#userEmail");
		var eReg = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		if(!eReg.test(userEmail.val())){
			alert("이메일 양식에 맞춰 입력 하세요.");
			userEmail.focus();
			return false;
		}
	});
	
	$(".modify_wrap #userPhone").on("change",function(){
		var userPhone = $("#userPhone");
		var pReg = /^[0-9]*$/;
		if(!pReg.test(userPhone.val())){
			alert("번호만 입력 하세요.");
			userPhone.focus();
			return false;
		}
	});

	$(".modify_wrap #modifySubmit").on("click",function(){
		var userPw1 = $("#userPw1");
		var userPw2 = $("#userPw2");
		var userName = $("#userName");
		var userEmail = $("#userEmail");
		var userPhone = $("#userPhone");
		var userAge = $("#userAge");
		var pwReg = /^(?=(.*[az]){1,})(?=(.*[\d]){1,})(?=(.*[\W]){1,})(?!.*\s).{8,}$/;
		var eReg = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		var pReg = /^[0-9]*$/;
		
		if(userPw1.val() == "" || userPw1.val() == null){
			alert("비밀번호를 입력 하세요");
			userPw1.focus();
			return false;
		}else if(!pwReg.test(userPw1.val())){
			alert("비밀번호 양식에 맞춰 입력 하세요.");
			userPw1.focus();
			return false;
		}else if(userPw2.val() == "" || userPw2.val() == null){
			alert("비밀번호를 확인 하세요");
			userPw2.focus();
			return false;
		}else if(userPw1.val() != userPw2.val()){
			alert("비밀번호가 서로 다릅니다.");
			userPw2.focus();
			return false;
		}else if(userName.val() == "" || userName.val() == null){
			alert("이름을 입력 하세요");
			userName.focus();
			return false;
		}else if(userEmail.val() == "" || userEmail.val() == null){
			alert("이메일을 입력 하세요");
			userName.focus();
			return false;
		}else if(!eReg.test(userEmail.val())){
			alert("이메일 양식에 맞춰 입력 하세요.");
			userEmail.focus();
			return false;
		}else if(userPhone.val() == "" || userPhone.val() == null){
			alert("휴대전화를 입력 하세요.");
			userPhone.focus();
			return false;
		}else if(!pReg.test(userPhone.val())){
			alert("번호만 입력 하세요.");
			userPhone.focus();
			return false;
		}else if(userAge.val() == "" || userAge.val() == null){
			alert("나이를 입력 하세요.");
			userAge.focus();
			return false;
		}else{
			modifyForm.submit();
		}
	});




	