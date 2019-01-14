<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/resources/common/_top.jsp"%>
<div class="deleteForm_wrap">
	<form action="delete" method="POST" name="deleteForm">
		<div class="delete_from_wrap">
			<div class="delete_head">
				<h2>
					회원탈퇴
				</h2>
			</div>
			<ul>
				<li>
					<div class="delete_tr">
						<div class="delete_th">
							<label for="userId">아이디</label>
						</div>
						<div class="delete_td">
							<input type="hidden" id="userId" name="userId" maxlength="14" autocomplete=off value="${user}" />
							<span>${user}</span>
						</div>
					</div>
				</li>
				<li>
					<div class="delete_tr">
						<div class="delete_th">
							<label for="userPw">비밀번호</label>
						</div>
						<div class="delete_td">
							<input type="password" id="userPw" name="userPw" maxlength="14" autocomplete=off>
						</div>
					</div>
				</li>
			</ul>
		</div>
		<div class="delete_btn_wrap">
			<button type="button" id="deleteBtn">탈퇴하기</button>
		</div>
	</form>
</div>
<%@ include file="/resources/common/_bottom.jsp"%>