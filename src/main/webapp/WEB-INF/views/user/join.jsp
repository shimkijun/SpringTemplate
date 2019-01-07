<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/resources/common/_top.jsp"%>
<style>
	.join_wrap{
		max-width:600px;
		width:100%;
		margin:50px auto;
	}
	
	.join_from_wrap{
		width:100%;
		border:1px solid #efefef;
		border-radius: 10px;
		overflow:hidden;
	}
	
	.join_head{
		padding:10px;
		background-color:#2e4162;
		color:#fff;
		font-size:15px;
	}
	
	.join_from_wrap ul > li{
		padding:10px;
		border-bottom:1px solid #efefef;
	}
	
	
	
	.join_from_wrap ul > li:last-child{
		border-bottom:0;
	}
	
	
	ul li .join_tr::after{
		display:block;
		clear:both;
		content:"";
	}
	ul li .join_tr > div{
		float:left;
		font-size:14px;
		height:30px;
		line-height:30px;
	}
	
	ul li .join_tr > div.join_th{
		font-weight:700;
		color:#2e4162;
		width:20%;
	}
	
	ul li .join_tr > div.join_td{
		line-height:0;
		width:80%;
	}
	ul li .join_tr > div.join_td input{
		height:100%;
		width:50%;
		padding:0 5px;
	}
	
	ul li .join_tr > div.info_ex{
		padding-top:10px;
		margin-top:10px;
		border-top:1px solid #efefef;
		width:100%;
		height:auto;
	}
	
	.join_wrap input{
		border:1px solid #ddd;
		padding:0;
		margin:0;
	}
	.join_wrap label{
		display:block;
		width:100%;
		height:100%;
	}
	.join_wrap button{
		width:150px;
		border:1px solid #efefef;
		border-radius: 5px;
		height:30px;
		cursor:pointer;
		background-color:#00aef0;
		color:#fff;
		font-weight:700;
	}
	.join_wrap button:hover{
		background-color:#2e4162;
	}
	
	.join_wrap .txt{
		font-size:12px !important;
	}
	
	.join_btn_wrap{
		padding:20px 0;
		text-align:center;
	}
	.join_btn_wrap a{
		display:inline-block;
		vertical-align:top;
		width:150px;
		border:1px solid #efefef;
		border-radius: 5px;
		height:30px;
		line-height:30px;
		cursor:pointer;
		background-color:#2e4162;
		color:#fff;
		font-weight:700;
		font-size:13px;
	}
	
	.join_btn_wrap a:hover{
		background-color:#00aef0;
	}
</style>
<div class="join_wrap">
	<form action="register" method="POST" name="joinForm">
		<div class="join_from_wrap">
			<div class="join_head">
				<h2>
					회원가입하기
				</h2>
			</div>
			<ul>
				<li>
					<div class="join_tr">
						<div class="join_th">
							<label for="userId">아이디</label>
						</div>
						<div class="join_td">
							<input type="text" id="userId" name="userId" maxlength="14" autocomplete=off>
							<button type="button" id="idChk">아이디확인</button>
						</div>
						<div class="info_ex txt">
							한글,대문자는 사용 할 수 없습니다.(최소 4글자 최대 14글자)
						</div>
					</div>
				</li>
				<li>
					<div class="join_tr">
						<div class="join_th">
							<label for="userPw1">비밀번호</label>
						</div>
						<div class="join_td">
							<input type="password" id="userPw1" name="userPw1" maxlength="14" autocomplete=off>
						</div>
						<div class="info_ex txt">
							영문 숫자 특수문자 를 조합해주세요.(최소 10글자 최대 14글자)
						</div>
					</div>
				</li>
				<li>
					<div class="join_tr">
						<div class="join_th">
							<label for="userPw2">비밀번호 확인</label>
						</div>
						<div class="join_td">
							<input type="password" id="userPw2" name="userPw2" maxlength="14" autocomplete=off>
							<span class="passChk txt">
								비밀번호가 틀립니다.
							</span>
						</div>
					</div>
				</li>
				<li>
					<div class="join_tr">
						<div class="join_th">
							<label for="userName">이름</label>
						</div>
						<div class="join_td">
							<input type="text" id="userName" name="userName" maxlength="10" autocomplete=off>
						</div>
					</div>
				</li>
				<li>
					<div class="join_tr">
						<div class="join_th">
							<label for="userEmail">이메일</label>
						</div>
						<div class="join_td">
							<input type="email" id="userEmail" name="userEmail" placeholder="예) spring@example.com" autocomplete=off>
						</div>
					</div>
				</li>
				<li>
					<div class="join_tr">
						<div class="join_th">
							<label for="userPhone">휴대전화</label>
						</div>
						<div class="join_td">
							<input type="tel" id="userPhone" name="userPhone" maxlength="11" placeholder="- 빼고 입력해주세요" autocomplete=off>
						</div>
					</div>
				</li>
				<li>
					<div class="join_tr">
						<div class="join_th">
							<label for="userAge">나이</label>
						</div>
						<div class="join_td">
							<input type="text" id="userAge" name="userAge" maxlength="100" autocomplete=off>
						</div>
					</div>
				</li>
			</ul>
		</div>
		<div class="join_btn_wrap">
			<button type="button" id="joinSubmit">가입하기</button>
			<a href="login">로그인</a>
		</div>
	</form>
</div>
<script>
	$("#userId").on("change",function(){
		var userId = $("#userId");
		var idReg = /^[a-z0-9]{4,14}/g;
		if(!idReg.test(userId.val())){
			alert("양식에 맞춰 입력해주세요.");
			return;
		}
	})

	$("#joinSubmit").on("click",function(){
		var userId = $("#userId");
		var userPw1 = $("#userPw1");
		var userPw2 = $("#userPw2");
		var userName = $("#userName");
		var userEmail = $("#userEmail");
		var userPhone = $("#userPhone");
		var userAge = $("#userAge");
		var idReg = /^[a-z0-9]{4,14}$/;
		
		
		if(userId.val() == "" || userId.val() == null){
			alert("아이디 입력하세요");
			userId.focus();
			return false;
		}else if(!idReg.test(userId.val())){
			alert("양식에 맞춰 입력해주세요.");
			userId.focus();
			return false;
		}else if(){
			
		}
		
	});
	
</script>
<%@ include file="/resources/common/_bottom.jsp"%>