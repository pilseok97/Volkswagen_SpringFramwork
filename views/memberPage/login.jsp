<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Login | Volkswagen</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- 파비콘(fav) PC -->
	<link rel="shortcut icon" href="/resources/images/header/logo1_withDog2_withoutTxt.png">
	<!-- 파비콘(fav) Mobile -->
	<link rel="apple-touch-icon-precomposed" href="/resources/images/header/logo1_withDog2_withoutTxt.png">
	<!-- Reset CSS -->
	<link rel="stylesheet" href="/resources/css/reset.css">
	<!-- Page CSS -->
	<link rel="stylesheet" href="/resources/css/login.css">
	<link rel="stylesheet" href="/resources/css/aside.css">
	<!-- PlugIn JS -->
	<script src="/resources/js/prefixfree.min.js"></script>
	<script src="/resources/js/jquery-1.12.4.min.js"></script>
	<script src="/resources/js/jquery-3.3.1.min.js"></script>
<%
	
%>
</head>
<body>
	<div id="wrap">
		<!-- Contents -->
		<main>
			<div class="big_image"></div>
			<!-- 로그인 창 -->
			<div class="login_box">
				<div class="login_container">
					<!-- 로그인 처리 폼 -->
					<form action="/memberPage/login" method="post">
						<table>
							<tr>
								<td class="logo">
									<a href="/">
										<img src="/resources/images/member/login/logo.png" alt="폭스바겐로고">
									</a>
								</td>
							</tr>
							<tr>
								<td class="text_box"><label for="id"><img src="/resources/images/member/login/icon_user.png" alt="아이디아이콘"></label> 
								<input type="text" id="id" name="id" placeholder="아이디" required value="${param.id}"></td>
							</tr>
							<tr>
								<td class="text_box no_mb">
									<label for="pwd"><img src="/resources/images/member/login/icon_password.png" alt="비밀번호잠금"></label> 
									<input type="password" id="pwd" name="password" placeholder="비밀번호" required>
								</td>
							</tr>
							<tr>
								<td class="login_status"><input type="checkbox" name="login_consistance"> <label for="login_consistance">로그인 상태 유지</label> <!-- ☑ 로그인 상태 유지 --> </td>
							</tr>
							<tr>
								<td>
									<!-- el식으로 message에 값이 있을경우에만 노출되는 구조 생성  -->						
									<p style="color: red; font-weight: bold; text-align: left; font-size: 12px; margin-bottom: 9.5px;" id="message">${message}</p>
								</td>
							</tr>
							<tr>
								<td>
									<button type="submit">로그인하기</button>
								</td>
							</tr>
							<tr>
								<td class="social_login">
									<a href="#" class="slt" >
										<img src="/resources/images/member/login/icon_google.png">
										<p>Google 계정으로 로그인</p>
									</a>
									<a href="#" class="slt" >
										<img src="/resources/images/member/login/icon_apple.png">
										<p>Apple 계정으로 로그인</p>
									</a>
									<a href="#" class="slt" >
										<img src="/resources/images/member/login/icon_naver.png">
										<p>Naver 계정으로 로그인</p>
									</a>
								</td>
							</tr>
						</table>
					</form>
					<div class="footer_links">
						<ul>
							<li><a href="#" onclick="searchid()">아이디 찾기</a></li>
							<li><a href="#" onclick="searchpwd()">비밀번호 찾기</a></li>
							<li><a href="/memberPage/signup">회원가입</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- /로그인 창 -->
		</main>
		<!-- /Contents -->
		<!-- Footer -->
		<footer>
			<p>&nbsp;COPYRIGHT &copy; DFBF</p>
		</footer>
	</div>
	<c:if test="${not empty msg }">
		<script type="text/javascript">
			alert("${msg}");
		</script>
	</c:if>
	<!-- Page JS -->
	<script src="/resources/js/search.js"></script>
</body>
</html>
