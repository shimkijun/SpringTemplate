<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/resources/common/_top.jsp"%>
<style>
	.mypage_wrap{
		max-width:600px;
		width:100%;
		margin:100px auto;
	}
	.mypage_from{
		width:100%;
		border:1px solid #efefef;
	}
	
	.mypage_head{
		padding:5px 10px;
		background-color:#00aef0;
		color:#2e4162;
	}
	.userInfo >div:last-child > p{
		border-bottom:0;
	}
	.userInfo >div>p{
		color:#2e4162;
		border-bottom:1px solid #efefef;
	}
	
	.mypage_wrap .profile_image{
		text-align:center;
		width:90px;
		height:90px;
		margin:10px auto;
		border-radius: 100%;
		border:2px solid #efefef;
		overflow: hidden;
	}
	
	
	.mypage_wrap .profile_image img{
		width: 85%;
   		height: 85%;
    	margin-top: 11px;
	}
	
	.mypage_wrap .profile_id{
		font-size:16px;
		font-weight:700;
		text-align:center;
		padding:5px 10px;
		
	}
	
	.mypage_wrap .userInfo >div>p>label{
		display:inline-block;
		width:100px;
		font-size:14px;
		background-color:#00aef0;
		padding:5px 10px;
		font-weight:700;
	}
	
	.mypage_wrap .userInfo >div>p > span{
		font-size:14px;
	}
	
	.mypage_btn{
		text-align:center;
		padding:10px;
	}
	
	.mypage_btn a,.mypage_btn input{
		color:#fff;
		display:inline-block;
		padding:5px 25px;
		background-color:#2e4162;
		font-size:14px;
		margin:0 5px;
		border:1px solid #efefef;
		cursor: pointer;
	}
	
</style>
<div class="mypage_wrap">
	<div class="mypage_from">
		<div class="mypage_head">
			<h2>
				내정보
			</h2>
		</div>
		<form name="modifyForm" action="modifyForm" method="POST">
			<input type="hidden" name="userNum" value="${userInfo.userNum}" readonly />
			<input type="hidden" name="userId" value="${userInfo.userId}" readonly />
			<div class="userInfo">
				<div>
					<p class="profile_image"><img src="images/default_profile.png"/></p>
					<p class="profile_id">${userInfo.userId}</p>
				</div>
				<div>
					<p>
						<label for="userName">이름</label>
						<span>${userInfo.userName}</span>
					</p>
				</div>
				<div>
					<p>
						<label for="userEmail">이메일</label>
						<span>${userInfo.userEmail}</span>
					</p>
				</div>
				<div>
					<p>
						<label for="userPhone">휴대전화</label>
						<span>${userInfo.userPhone}</span>
					</p>
				</div>
				<div>
					<p>
						<label for="userAge">나이</label>
						<span>${userInfo.userAge}</span>
					</p>
				</div>
				<div>
					<p>
						<label for="userDate">가입날짜</label>
						<span>${userInfo.userDate}</span>
					</p>
				</div>
				<div>
					<p>
						<label for="userLv">회원등급</label>
						<span>${userInfo.userLv} Lv</span>
					</p>
				</div>
			</div>
		
	</div>
	<div class="mypage_btn">
		<input type="submit" value="수정하기">
		<a href="deleteForm">탈퇴하기</a>
	</div>
	</form>
</div>
<%@ include file="/resources/common/_bottom.jsp"%>