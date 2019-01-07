<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset=UTF-8>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>${title}</title>
<style>
	.error_page{
		text-align:center;
		padding:20px 0;
	}
	
	.error_page h1{
		font-size:18px;
	}
	.error_page p{
		font-size:14px;
		margin:15px 0;
	}
	
	.error_page a{
		color:#fff;
		font-weight:700;
		display:inline-block;
		width:150px;
		padding:10px 0;
		background-color:#00aef0;
		font-size:12px;
		text-decoration:none;
		border-radius: 15px;
		border:1px solid #efefef;
	}
	.error_page a:hover{
		background-color:#13a6de;
	}
</style>
</head>
<body>
	<div class="error_page">
		<h1>
		${msg}
		</h1>
		<p>
			${ex}
		</p>
		<a href="/project/"> 홈으로 가기 </a>
	</div>
</body>
</html>