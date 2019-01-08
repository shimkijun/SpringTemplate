<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/resources/common/_top.jsp"%>
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
<%@ include file="/resources/common/_bottom.jsp"%>