<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/resources/common/_top.jsp"%>
<div class="mycheckForm_wrap">
	<form action="mycheck" method="POST" name="mycheckForm">
		<div class="mycheck_from_wrap">
			<div class="mycheck_head">
				<h2>
					내정보 보러 가기
				</h2>
			</div>
			<ul>
				<li>
					<div class="mycheck_tr">
						<div class="mycheck_th">
							<label for="userId">아이디</label>
						</div>
						<div class="mycheck_td">
							<input type="hidden" id="userId" name="userId" maxlength="14" autocomplete=off value="${user}" readonly />
							<span>${user}</span>
						</div>
					</div>
				</li>
				<li>
					<div class="mycheck_tr">
						<div class="mycheck_th">
							<label for="userPw">비밀번호</label>
						</div>
						<div class="mycheck_td">
							<input type="password" id="userPw" name="userPw" maxlength="14" autocomplete=off>
						</div>
					</div>
				</li>
			</ul>
		</div>
		<div class="mycheck_btn_wrap">
			<button type="button" id="mycheckBtn">내정보확인</button>
		</div>
	</form>
</div>
<%@ include file="/resources/common/_bottom.jsp"%>