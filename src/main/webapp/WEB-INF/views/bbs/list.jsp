<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/resources/common/_top.jsp"%>
<style>
	.list_wrap{
		max-width:600px;
		width:100%;
		margin:50px auto;
	}
	.list_wrap h2{
		padding:10px 0;
	}
	.list_wrap .list_form{
		width:100%;
		border:1px solid #efefef;
	}
	
	.list_form > div > ul{
		width:100%;
	}
	.list_form > div > ul > li::after{
		display:block;
		clear:both;
		content:"";
	}
	.list_form > div > ul > li{
		width:100%;
		font-size:13px;
		border-bottom:1px solid #efefef;
	}
	.list_form > div > ul > li:last-child{
		border-bottom:0;
	}
	.list_form li span{
		float:left;
		display:block;
	}
	
	.list_head > ul{
		background-color:#00aef0;
		color:#fff;
		font-weight:700;	
	}
	
	.list_form span{
		text-align:center;
		white-space: nowrap; 
		overflow: hidden;
		text-overflow: ellipsis;
		height:25px;
		line-height:25px;
	}
	
	.list_form span a{
		display:block;
		white-space: nowrap; 
		overflow: hidden;
		text-overflow: ellipsis;
	}
	
	.list_form span.bbs_num,
	.list_form span.bbs_count{
		width:10%;
	}
	.list_form span.bbs_user,
	.list_form span.bbs_date{
		width:15%;
	}
	.list_form span.bbs_title{
		width:50%;
		text-align:left;
		
	}
	.list_btn{
		padding:10px 0;
		text-align:right;
	}
	.list_btn button{
		width:80px;
		font-size:12px;
		font-weight:700;
		padding:3px 0;
		cursor:pointer;
		border:1px solid #efefef;
		background-color:#2e4162;
		color:#fff;
	}
</style>
<div class="list_wrap">
	<h2>
		게시판 목록
	</h2>
	<div class="list_form">
		<div class="list_head">
			<ul>
				<li>
					<span class="bbs_num">번호</span>
					<span class="bbs_title">제목</span>
					<span class="bbs_user">작성자</span>
					<span class="bbs_date">등록일</span>
					<span class="bbs_count">조회수</span>
				</li>
			</ul>
		</div>
		<div class="list_body">
			<ul>
			<c:choose>
				<c:when test="${empty lists}">
					<li>
						<p style="text-align:center;padding:10px;">게시물이 없습니다.</p>
					</li>
				</c:when>
				<c:otherwise>
					<c:forEach items="${lists}" var="list">
						<li>
							<span class="bbs_num">${list.bbsNum}</span>
							<span class="bbs_title"><a href="${path}/bbs/view?no=${list.bbsNum}&id=${list.userId}">${list.bbsTitle}</a></span>
							<span class="bbs_user">${list.userId}</span>
							<span class="bbs_date"><fmt:formatDate value="${list.bbsDate}" pattern="yyyy-MM-dd"/></span>
							<span class="bbs_count">${list.bbsCount}</span>
						</li>
					</c:forEach>
				</c:otherwise>
			</c:choose>
			</ul>
		</div>
	</div>
	<div class="list_btn">
		<c:if test="${!empty user}">
			<button type="button" onclick="post_to_url('writeForm')" >글쓰기</button>
		</c:if>
	</div>
</div>
<script type="text/javascript" >
	
</script>
<%@ include file="/resources/common/_bottom.jsp"%>