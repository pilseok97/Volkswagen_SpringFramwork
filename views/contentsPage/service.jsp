<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String content = request.getParameter("content");
	if(content == null || content == ""){
		response.sendRedirect("/");
		return;
	}
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>SERVICE | Volkswagen</title>
	<!-- 파비콘(fav) PC -->
	<link rel="shortcut icon" href="/resources/images/header/logo1_withDog2_withoutTxt.png">
	<!-- 파비콘(fav) Mobile -->
	<link rel="apple-touch-icon-precomposed" href="/resources/images/header/logo1_withDog2_withoutTxt.png">
	<!-- Reset CSS -->
	<link rel="stylesheet" href="/resources/css/reset.css">
	<!-- Page CSS -->
	<link rel="stylesheet" href="/resources/css/header.css">
	<link rel="stylesheet" href="/resources/css/service.css">
	<link rel="stylesheet" href="/resources/css/footer.css">
	<link rel="stylesheet" href="/resources/css/aside.css">
	<!-- PlugIn JS -->
	<script src="/resources/js/prefixfree.min.js"></script>
	<script src="/resources/js/jquery-1.12.4.min.js"></script>
	<script src="/resources/js/jquery-3.3.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/react/17.0.2/umd/react.production.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/react-dom/17.0.2/umd/react-dom.production.min.js"></script>
	<script src="https://unpkg.com/react-js-pagination/dist/react-js-pagination.js"></script>
</head>
<body>
	<div id="wrap">
		<!-- Header -->
		<header>
			<%@ include file="../includes/header.jsp" %>
		</header>
		<!-- /Header -->
		<!-- Slider -->
		<article>
			<h2>
				<img src="/resources/images/contentsPage/service/slider1.png" alt="">
			</h2>
			<ul class="w1600">
				<li>
					<h3>SERVICE</h3>
				</li>
			</ul>
		</article>
		<!-- /Slider -->
		<!-- Contents -->
		<main>
			<!-- breadcrumb -->
			<section class="breadcrumb_section w1600">
				<ul class="breadcrumb cf">
					<li><a href="/">Home</a></li>
					<li>&nbsp;&nbsp;<span>&gt;</span>&nbsp;&nbsp;</li>
					<li><span class="korean_text">서비스</span></li>
				</ul>
			</section>
			<!-- /breadcrumb -->
			<!-- Board -->
			<c:import url="${content }"></c:import>
			<!-- /Board -->
		</main>
		<!-- /Contents -->
		<!-- Footer -->
		<footer class="w1600">
			<%@ include file="../includes/footer.jsp" %>
		</footer>
		<!-- /Footer -->
		<!-- Aside -->
		<aside class="aside_nav">
			<%@ include file="../includes/aside.jsp" %>
		</aside>
		<!-- /Aside -->
	</div>
	<!-- Page JS -->
	<script src="/resources/js/service.js"></script>
	<script src="/resources/js/aside.js"></script>
<script>
	$(document).ready(function() {
		/* const fromServlet = "${fromServlet != null ? 'true' : 'false'}" === 'true';
		const section = "${section != null ? section : ''}";
		const scrollPosition = "${scrollPosition != null ? scrollPosition : 'null'}"; // 서블릿에서 전달된 스크롤 위치 값 */

		/* // 스크롤 위치 복원 로직
		if (scrollPosition !== 'null' && scrollPosition !== 'session') {
			// 서블릿에서 지정된 스크롤 위치로 이동
			window.scrollTo(0, parseInt(scrollPosition, 10));
		} else if (scrollPosition === 'session') {
			// scrollPosition이 "session"일 때 세션스토리지 값을 사용하여 스크롤 위치 복원
			const savedScrollPosition = sessionStorage.getItem("scrollPosition");
			if (savedScrollPosition !== null) {
				window.scrollTo(0, parseInt(savedScrollPosition, 10));
			}
		} else {
			// sessionStorage에 저장된 스크롤 위치가 있으면 해당 위치로 복원
			const savedScrollPosition = sessionStorage.getItem("scrollPosition");
			if (savedScrollPosition !== null && fromServlet) {
				window.scrollTo(0, parseInt(savedScrollPosition, 10));
			} else if (!fromServlet) {
				// 외부에서 처음 진입 시 스크롤을 (0,0)으로 초기화
				window.scrollTo(0, 0);
			}
		} */

		// 탭 설정 로직
		const urlParams = new URLSearchParams(window.location.search);
		let tabIdx = urlParams.has('tab') ? parseInt(urlParams.get('tab'), 10) : null;
		if (tabIdx === null && section === 'inquiry') {
			tabIdx = 1;
		} else if (tabIdx === null) {
			tabIdx = 0; // 기본 FAQ 탭 설정
		}

		const tabTitles = ["FAQ", "1:1문의"];
		$('.board .service li').removeClass('on').eq(tabIdx).addClass('on');
		$('.board .board_table').hide().eq(tabIdx).show();
		$('.service h2').text(tabTitles[tabIdx]);

		if (tabIdx === 1) {
			$('.buttons, .search_container').show();
		}
	});
</script>
</body>
</html>
