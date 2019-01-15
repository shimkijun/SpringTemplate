<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/resources/common/_top.jsp"%>
<link rel=stylesheet type=text/css href="${path}/resources/daumeditor/css/editor.css" charset=utf-8 /> 
<script type=text/javascript charset=utf-8 src="${path}/resources/daumeditor/js/editor_loader.js"></script>
<style>
	.writeForm_wrap{
		max-width:750px;
		width:100%;
		margin:50px auto;
		
		}
	
	.writeForm_wrap h2{
		padding:5px 10px;
		background-color:#00aef0;
		color:#fff;
	}
	
	.writeForm{
		border:1px solid #efefef;
		padding:10px;
	}
	
	.writeForm label{
		font-size:13px;
		font-weight:700;
		display:inline-block;
		width:75px;
	}
	
	.writeForm > form > div{
		padding:5px 0;
	}
	
	.writeForm #bbsTitle{
		width:88.9%;
		height: 22px;
	    line-height: 22px;
	    border: 1px solid #ccc;
	    padding: 0 5px;
	    margin: 0;
	}
	.wrtieForm_btn{
		padding:10px 0;
		text-align:right;
	}
	.wrtieForm_btn button,
	.wrtieForm_btn a{
		display:inline-block;
		width:80px;
		font-size:12px;
		font-weight:700;
		padding:3px 0;
		cursor:pointer;
		border:1px solid #efefef;
		background-color:#2e4162;
		color:#fff;
		text-align:center;
	}
</style>
<div class="writeForm_wrap">
	<h2>
		글작성하기
	</h2>
	<div class="writeForm">
	<form name="tx_editor_form" id="tx_editor_form" action="write" method="post" accept-charset="utf-8">
			<input type="hidden" name="userId" id="userId" value="${user.userId}" />
			<input type="hidden" name="userName" id="userName" value="${user.userName}" />
			<input type="hidden" name="userNum" id="userNum" value="${user.userNum}" />
			<input type="hidden" name="userLv" id="userLv" value="${user.userLv}" />
		<div class="write_info">
			<label for="userId">아이디</label>
			<input type="text" value="${user.userId}" readonly disabled style="background-color:#fff;border:0;"/>
		</div>
		<div class="write_title">
			<label for="bbsTitle">제목</label>
			<input type="text" name="bbsTitle" id="bbsTitle" />
		</div>
		<div class="write_content">
			<%@ include file="editor.jsp"%>
		</div>
	</div>
	<div class="wrtieForm_btn">
		<button onclick='saveContent()'>작성하기</button>
		<a href="${path}/bbs/list">목록</a>
	</div>
	</form>
</div>
<%@ include file="/resources/common/_bottom.jsp"%>