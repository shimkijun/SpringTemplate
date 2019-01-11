<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/resources/common/_top.jsp"%>
<style>
	.delete_welcome{
		max-width:700px;
		width:100%;
		margin:100px auto 0;
		border:1px solid #efefef;
	}

	.dwc_head{
		color:#fff;
		background-color:#00aef0;
		padding:5px 10px;
		font-size:15px;
	}

	.dwc_info > div{
		padding:10px;
	}
	.dwc_id{
		font-size:14px;
	}
	.dwc_id span{
		font-weight:700;
	}
	
	div.dwc_info_head{
		padding:5px 10px;
		color:#fff;
		background-color:#bee0ec;
	}
	.dwc_info_head h4{
		font-size:14px;
	}
	
	.dwc_info ul li{
		padding:5px 0;
		border-bottom:#ccc;
		
	}
	.dwc_info ul li::after{
		display:block;
		clear:both;
		content:"";
	}
	.dwc_info ul li p{
		float:left;
		
	}
	.dwc_info ul li span{
		vertical-align:top;
		font-size:13px;
		text-align:center;
	}
	.dwc_info ul li .th{
		display:inline-block;
		width:80px;
		height:100%;
		font-weight:700;
		
	}
	.dwc_btn{
		padding:10px;
		text-align:center;
	}
	.dwc_btn a{
		
		font-size:13px;
		font-weight:700;
		color:#fff;
		display:inline-block;
		padding:5px 15px;
		background-color:#2e4162;
		margin:0 3px;
	}
</style>
<div class="delete_welcome">
	<div class="dwc_head">
		<h2>
			<i class="fas fa-birthday-cake"></i> 탈퇴 완료
		</h2>
	</div>
	<div class="dwc_info">
		<div class="jwc_id">
			그동안 이용해 주셔서 감사합니다.
		</div>
	</div>
</div>
<div class="dwc_btn">
	<a href="/project/">HOME</a>
</div>
<%@ include file="/resources/common/_bottom.jsp"%>