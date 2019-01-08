<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/resources/common/_top.jsp"%>
<div class="join_wrap">
	<form action="joinAction" method="POST" name="joinForm">
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
<%@ include file="/resources/common/_bottom.jsp"%>