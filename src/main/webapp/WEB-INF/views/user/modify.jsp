<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/resources/common/_top.jsp"%>
<style>
	.modify_wrap{
		max-width:600px;
		width:100%;
		margin:100px auto;
	}
	.modify_from{
		width:100%;
		border:1px solid #efefef;
	}
	
	.modify_head{
		padding:5px 10px;
		background-color:#00aef0;
		color:#2e4162;
	}
	.modify_wrap .userInfo >div:last-child > p{
		border-bottom:0;
	}
	.modify_wrap .userInfo >div>p{
		color:#2e4162;
		border-bottom:1px solid #efefef;
	}
	
	.modify_wrap .userInfo >div>p input{
		border:1px solid #ccc;
		vertical-align: 3px;
		height:25px;
		width:200px;
		font-size:12px;
		padding:0 5px;
	}
	
	.modify_wrap .profile_image{
		text-align:center;
		width:90px;
		height:90px;
		margin:10px auto;
		border-radius: 100%;
		border:2px solid #efefef;
		overflow: hidden;
	}
	
	
	.modify_wrap .profile_image img{
		width: 85%;
   		height: 85%;
    	margin-top: 11px;
	}
	
	.modify_wrap .profile_id{
		font-size:16px;
		font-weight:700;
		text-align:center;
		padding:5px 10px;
		
	}
	.modify_wrap .profile_upload{
		text-align:center;
		padding:5px 10px;
	}
	.modify_wrap .profile_upload input#profileUpload{
		border:0;
		width:auto;
	}
	.modify_wrap .userInfo >div>p>label{
		display:inline-block;
		width:125px;
		font-size:14px;
		background-color:#00aef0;
		padding:5px 10px;
		font-weight:700;
	}
	
	.modify_wrap .userInfo >div>p > span{
		font-size:14px;
	}
	
	.modify_btn{
		text-align:center;
		padding:10px;
	}
	
	.modify_btn a,.modify_btn input{
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
<div class="modify_wrap">
	<div class="modify_from">
		<div class="modify_head">
			<h2>
				수정하기
			</h2>
		</div>
		<form action="modify" method="POST" name="modifyForm">
			<input type="hidden" name="userNum" value="${userInfo.userNum}" readonly />
			<input type="hidden" name="userId" value="${userInfo.userId}" readonly />
			<div class="userInfo">
				<div>
					<p class="profile_image"><img src="${path}/images/default_profile.png"/></p>
					<p class="profile_upload"><input type="file" name="profileUpload" id="profileUpload" /></p>
					<p class="profile_id">${userInfo.userId}</p>
				</div>
				<div>
					<p>
						<label for="userPw1">비밀번호</label>
						<input type="password" id="userPw1" name="userPw1" maxlength="14" autocomplete=off />
					</p>
					<p style="text-align:center;font-weight:700;">
						<span style="font-size:12px;vertical-align: top;">영문 숫자 특수문자 를 조합해주세요.(최소 10글자 최대 14글자)</span>
					</p>
				</div>
				<div>
					<p>
						<label for="userPw2">비밀번호 확인</label>
						<input type="password" id="userPw2" name="userPw2" maxlength="14" autocomplete=off>
						<span class="passChk txt" style="font-size:12px;">
								
						</span>
					</p>
				</div>
				<div>
					<p>
						<label for="userName">이름</label>
						<input type="text" id="userName" name="userName" maxlength="10" autocomplete=off value="${userInfo.userName}" />
					</p>
				</div>
				<div>
					<p>
						<label for="userEmail">이메일</label>
						<input type="email" id="userEmail" name="userEmail" placeholder="예) spring@example.com" autocomplete=off value="${userInfo.userEmail}" />
					</p>
				</div>
				<div>
					<p>
						<label for="userPhone">휴대전화</label>
						<input type="tel" id="userPhone" name="userPhone" maxlength="11" placeholder="- 빼고 입력해주세요" autocomplete=off value="${userInfo.userPhone}" />
					</p>
				</div>
				<div>
					<p>
						<label for="userAge">나이</label>
						<input type="text" id="userAge" name="userAge" maxlength="3" autocomplete=off value="${userInfo.userAge}" />
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
		</form>
	</div>
	<div class="modify_btn">
		<input type="button" value="수정완료" id="modifySubmit">
		<a href="${path}/user/deleteForm">탈퇴하기</a>
	</div>
</div>
<%@ include file="/resources/common/_bottom.jsp"%>