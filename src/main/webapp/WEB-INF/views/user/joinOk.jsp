<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/resources/common/_top.jsp"%>
<div class="join_welcome">
	<div class="jwc_head">
		<h2>
			<i class="fas fa-birthday-cake"></i> 회원가입을 축하 드립니다.
		</h2>
	</div>
	<div class="jwc_info">
		<div class="jwc_id"><span>${user.userId}</span> 님 회원가입을 진심으로 축하드리며 자주 방문 부탁드립니다.^^</div>
		<div class="jwc_info_head">
			<h4>가입정보</h4>
		</div>
		<ul>
			<li>
				<p style="width:20%;">
					<span class="th">이름</span>
					<span class="td">${user.userName}</span>
				</p>
				<p style="width:53%;">
				<span class="th">이메일</span>
				<span class="td">${user.userEmail}</span>
				</p>
				<p style="width:27%;">
				<span class="th">휴대전화</span>
				<span class="td">${user.userPhone}</span>
				</p>
			</li>
			<li>
			<p style="width:20%;">
			<span class="th">나이</span>
			<span class="td">${user.userAge}</span>
			</p>
			<p style="width:53%;">
			<span class="th">가입날짜</span>
			<span class="td">${serverTime}</span>
			</p>
			<p style="width:27%;">
			<span class="th">회원등급</span>
			<span class="td">${user.userLv} Lv</span>
			</p>
			</li>
		</ul>
	</div>
</div>
<div class="jwc_btn">
	<a href="${path}">HOME</a>
	<a href="${path}/user/loginForm">로그인</a>
</div>
<%@ include file="/resources/common/_bottom.jsp"%>