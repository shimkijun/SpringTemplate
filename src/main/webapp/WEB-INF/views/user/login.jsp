<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/resources/common/_top.jsp"%>
<style>
	.login_wrap{
		max-width:450px;
		width:100%;
		margin:50px auto;
	}
	
	.login_from_wrap{
		width:100%;
		border:1px solid #efefef;
		border-radius: 10px;
		overflow:hidden;
	}
	
	.login_head{
		padding:10px;
		background-color:#2e4162;
		color:#fff;
		font-size:15px;
	}
	
	.login_from_wrap ul > li{
		padding:10px;
		border-bottom:1px solid #efefef;
	}
	
	
	
	.login_from_wrap ul > li:last-child{
		border-bottom:0;
	}
	
	
	ul li .login_tr::after{
		display:block;
		clear:both;
		content:"";
	}
	ul li .login_tr > div{
		font-size:14px;
		height:30px;
		line-height:30px;
	}
	
	ul li .login_tr > div.login_th{
		font-weight:700;
		color:#2e4162;
		width:100%;
	}
	
	ul li .login_tr > div.login_td{
		line-height:0;
		width:100%;
	}
	ul li .login_tr > div.login_td input{
		height:100%;
		width:100%;
		padding:0 5px;
	}

	.login_wrap input{
		border:1px solid #ddd;
		padding:0;
		margin:0;
	}
	.login_wrap label{
		display:block;
		width:100%;
		height:100%;
	}
	.login_wrap button{
		width:150px;
		border:1px solid #efefef;
		border-radius: 5px;
		height:30px;
		cursor:pointer;
		background-color:#00aef0;
		color:#fff;
		font-weight:700;
	}
	.login_wrap button:hover{
		background-color:#2e4162;
	}
	
	.login_wrap .txt{
		font-size:12px !important;
	}
	
	.login_btn_wrap{
		padding:20px 0;
		text-align:center;
	}
	
	.login_btn_wrap a{
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
	
	.login_btn_wrap a:hover{
		background-color:#00aef0;
	}
</style>
<div class="login_wrap">
	<form action="loginAction" method="POST" name="loginForm">
		<div class="login_from_wrap">
			<div class="login_head">
				<h2>
					로그인
				</h2>
			</div>
			<ul>
				<li>
					<div class="login_tr">
						<div class="login_th">
							<label for="userId">아이디</label>
						</div>
						<div class="login_td">
							<input type="text" id="userId" name="userId" maxlength="14" autocomplete=off>
						</div>
					</div>
				</li>
				<li>
					<div class="login_tr">
						<div class="login_th">
							<label for="userPw1">비밀번호</label>
						</div>
						<div class="login_td">
							<input type="password" id="userPw" name="userPw" maxlength="14" autocomplete=off>
						</div>
					</div>
				</li>
			</ul>
		</div>
		<div class="login_btn_wrap">
			<button type="button" id="loginSubmit">로그인</button>
			<a href="join">회원가입</a>
		</div>
	</form>
</div>
<script>
	$("#loginSubmit").on("click",function(){
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
			loginForm.submit();
		}
		
	});
</script>
<%@ include file="/resources/common/_bottom.jsp"%>