<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko-KR">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset=UTF-8>
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SPRING JDBC TEMPLATE</title>
<%@ include file="_header.jsp" %>
</head>
<body>
<div class="wrap">
<div class="hidden_info" style="display:none;">
	<input type="hidden" id="login_id" name="login_id" value="${user}" />
	<input type="hidden" id="login_Num" name="login_Num" value="${userNum}" />
</div>
<header class="header">
	<div class="nav_wrap">
		<div class="logo_wrap">
			<h1 class="logo">
				<a href="/project/">SPRING TAMPLATE</a>
			</h1>
		</div>
		<div class="gnb_wrap">
			<ul class="gnb">
				<li>
					<a href="${path}">HOME</a>
				</li>
				<li>
					<a href="${path}/bbs/list">게시판보기</a>
				</li>
			</ul>
		</div>
		<div class="right_info">
			<ul class="rignt_menu">
			<c:if test="${empty user}">
				<li>
					<a href="${path}/user/joinForm">회원가입</a>
				</li>
				<li>
					<a href="${path}/user/loginForm">로그인</a>
				</li>
			</c:if>
			<c:if test="${!empty user}">
				<li>
					<a href="${path}/user/mycheckForm">내정보</a>
				</li>
				<li>
					<a href="${path}/user/logout">로그아웃</a>
				</li>
			</c:if>
			</ul>
		</div>
	</div>
</header>
