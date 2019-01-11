/**
 * 로그인 유효성 검사
 */
$("#deleteBtn").on("click",function(){
		var userId = $("#userId");
		var userPw = $("#userPw");
		
		if(userId.val() == "" || userId.val() == null){
			alert("아이디를 입력 하세요.");
			userId.focus();
			return false;
		}else if(userPw.val() == "" || userPw.val() == null){
			alert("비밀번호를 입력 하세요.");
			userPw.focus();
			return false;
		}else{
			if(confirm("정말 탈퇴 하시겠습니까?")){
				deleteForm.submit();
			}
		}
	});