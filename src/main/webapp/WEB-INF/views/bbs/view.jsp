<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/resources/common/_top.jsp"%>
<link rel=stylesheet type=text/css href="${path}/resources/daumeditor/css/editor.css" charset=utf-8 /> 
<script type=text/javascript charset=utf-8 src="${path}/resources/daumeditor/js/editor_loader.js"></script>
<style>
	.viewForm_wrap{
		max-width:750px;
		width:100%;
		margin:50px auto;		
		}
	
	.viewForm_wrap h2{
		padding:5px 10px;
		background-color:#00aef0;
		color:#fff;
	}
	
	.viewForm{
		border:1px solid #efefef;
		padding:10px;
	}
	
	.viewForm label{
		font-size:13px;
		font-weight:700;
		display:inline-block;
		width:75px;
	}
	
	.viewForm > div{
		padding:5px 0;
	}
	
	.viewForm #bbsTitle{
		width:88.9%;
		height: 22px;
	    line-height: 22px;
	    border: 1px solid #ccc;
	    padding: 0 5px;
	    margin: 0;
	}
	.viewForm_btn{
		padding:10px 0;
		text-align:right;
	}
	.viewForm_btn button,
	.viewForm_btn a{
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
	
	.view_content{
		width:100%;
		height:350px;
		overflow-y:scroll;
		margin-top:10px;
		border:1px solid #ccc;
	}
	.view_content > div{
		padding:0 10px;
	}
</style>
<div class="viewForm_wrap">
	<h2>
		게시판 보기
	</h2>
	<div class="viewForm">
			<input type="hidden" name="userId" id="userId" value="${user}" />
			<input type="hidden" name="bbsNum" id="bbsNum" value="${view.bbsNum}" />
		<div class="view_info">
				<label for="userId">아이디</label>
				<span>${view.userId}</span>
		</div>
		<div class="view_title">
			<label for="bbsTitle">제목</label>
			<span>${view.bbsTitle}</span>
		</div>
		<div class="view_content">
			<div>
				${view.bbsContent}
			</div>
		</div>
	</div>
	<div class="viewForm_btn">
	<c:if test="${!empty user}">
		<c:if test="${view.userId eq user}">
			<a href="${path}/bbs/modifyForm?no=${view.bbsNum}&id=${user}">수정하기</a>
			<button type="button" onclick="post_to_delete('delete')">삭제하기</button>
		</c:if>
		<button type="button" onclick="post_to_url('writeForm')" >글쓰기</button>
	</c:if>
		<a href="${path}/bbs/list">목록</a>
	</div>
</div>
<%@ include file="/resources/common/_bottom.jsp"%>