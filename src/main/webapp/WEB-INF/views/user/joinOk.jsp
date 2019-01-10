<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/resources/common/_top.jsp"%>
<style>
	.join_welcome{
		max-width:700px;
		width:100%;
		margin:100px auto 0;
		border:1px solid #efefef;
	}

	.jwc_head{
		color:#fff;
		background-color:#00aef0;
		padding:5px 10px;
		font-size:15px;
	}

	.jwc_info > div{
		padding:10px;
	}
	.jwc_id{
		font-size:14px;
	}
	.jwc_id span{
		font-weight:700;
	}
	
	div.jwc_info_head{
		padding:5px 10px;
		color:#fff;
		background-color:#bee0ec;
	}
	.jwc_info_head h4{
		font-size:14px;
	}
	
	.jwc_info ul li{
		padding:5px 0;
		border-bottom:#ccc;
		
	}
	.jwc_info ul li::after{
		display:block;
		clear:both;
		content:"";
	}
	.jwc_info ul li p{
		float:left;
		
	}
	.jwc_info ul li span{
		vertical-align:top;
		font-size:13px;
		text-align:center;
	}
	.jwc_info ul li .th{
		display:inline-block;
		width:80px;
		height:100%;
		font-weight:700;
		
	}
	.jwc_btn{
		padding:10px;
		text-align:center;
	}
	.jwc_btn a{
		
		font-size:13px;
		font-weight:700;
		color:#fff;
		display:inline-block;
		padding:5px 15px;
		background-color:#2e4162;
		margin:0 3px;
	}
</style>
<div class="join_welcome">
	<div class="jwc_head">
		<h2>
			<i class="fas fa-birthday-cake"></i> 회원가입을 축하 드립니다.
		</h2>
	</div>
	<div class="jwc_info">
		<div class="jwc_id"><span>userId</span> 님 회원가입을 진심으로 축하드리며 자주 방문 부탁드립니다.^^</div>
		<div class="jwc_info_head">
			<h4>가입정보</h4>
		</div>
		<ul>
			<li>
				<p style="width:20%;">
					<span class="th">이름</span>
					<span class="td">심기준</span>
				</p>
				<p style="width:40%;">
				<span class="th">이메일</span>
				<span class="td">shimkijun@naver.com</span>
				</p>
				<p style="width:40%;">
				<span class="th">휴대전화</span>
				<span class="td">01098858084</span>
				</p>
			</li>
			<li>
			<p style="width:20%;">
			<span class="th">나이</span>
			<span class="td">33</span>
			</p>
			<p style="width:40%;">
			<span class="th">가입날짜</span>
			<span class="td">32032032</span>
			</p>
			<p style="width:40%;">
			<span class="th">회원등급</span>
			<span class="td">0</span>
			</p>
			</li>
		</ul>
	</div>
</div>
<div class="jwc_btn">
	<a href="/project/">HOME</a>
	<a href="modifyForm">수정하기</a>
	<a href="loginForm">로그인</a>
</div>
<%@ include file="/resources/common/_bottom.jsp"%>