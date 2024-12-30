<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="w1600">
	<h1>
		<a href="/"><img src="/resources/images/header/logo.svg" alt="logo"></a>
	</h1>
	<nav class="gnb">
		<ul>
			<li>
				<c:if test="${empty loginUser.name }">
					<a href="/memberPage/login" target="_blank"> <img src="/resources/images/header/login.png" alt="login_icon"></a>
				</c:if> 
				<c:if test="${!empty loginUser.name }">
					<li class="korean_text">
						<p style="font-size: 14px; padding-top: 5px;">
							<c:if test="${loginUser.grade eq 'Admin' }">
								<span class="admin_text">관리자</span>&nbsp;&nbsp;
							</c:if>
							<b>${loginUser.name }</b>님 안녕하세요
						</p>
					</li>
					<!-- 로그아웃 아이콘-->
					<li><a href="/memberPage/logout" onclick="alert('로그아웃 되셨습니다.');"><img src="/resources/images/header/logout_icon.png" alt="logout_icon"></a></li>
					<!-- 회원정보 아이콘-->
					<li><a href="/memberPage/memberInfo"><img src="/resources/images/header/login.png" alt="회원정보 출력"></a></li>
				</c:if>
			</li>
			<li class="sch"><img src="/resources/images/header/search.png" alt="search_icon"></li>
			<li class="no_mr ct"><img src="/resources/images/header/menu.png" alt="menu_icon"></li>
		</ul>
	</nav>
</div>
<!-- Category -->
<div id="category_wrap">
	<nav>
		<div class="close">
			<i class="fa fa-times" aria-hidden="true" style="color: #fff"></i>
		</div>
		<ul class="category">
			<div class="left_group">
				<li class="list">
					<p>모델정보</p>
					<ul class="english_text">
						<li><a href="/subPage/subPage_Arteon"><img src="/resources/images/header/art.png" alt="아톤">Arteon</a></li>
						<li><a href="/subPage/subPage_Jetta"><img src="/resources/images/header/Jetta.png" alt="제타">Jetta</a></li>
						<li><a href="/subPage/subPage_Tiguan"><img src="/resources/images/header/Tiguan.png" alt="티구안">Tiguan</a></li>
						<li><a href="/subPage/subPage_TiguanAllspace"><img src="/resources/images/header/Tiguan-Allspace.png" alt="티구안올스페이스">Tiguan&nbsp;Allspace</a></li>
						<li><a href="/subPage/subPage_Touareg"><img src="/resources/images/header/Touareg.png" alt="투아렉">Touareg</a></li>
						<li><a href="/subPage/subPage_Golf8"><img src="/resources/images/header/Golf.png" alt="골프">Golf</a></li>
						<li><a href="/subPage/subPage_GolfGTI"><img src="/resources/images/header/Golf GTI.png" alt="골프GTI">Golf&nbsp;GTI</a></li>
						<li><a href="/subPage/subPage_id4"><img src="/resources/images/header/ID-4.png" alt="ID.4">ID.<span>4</span></a></li>
					</ul>
				</li>
			</div>
			<div class="right_group">
				<div class="top_group">
					<li class="list">
						<p>순수&nbsp;전기차</p>
						<ul>
							<li class="english_text"><a href="#">All</a></li>
							<li><a href="/subPage/subPage_id4">전기차&nbsp;모델&nbsp;ID.<span>4</span></a></li>
							<li><a href="#">전기차&nbsp;충전</a></li>
							<li class="english_text"><a href="#">ID.Technology</a></li>
							<li><a href="#">지속&nbsp;가능성</a></li>
						</ul>
					</li>
					<li class="list">
						<p>
							프로모션<span>&amp;</span>뉴스
						</p>
						<ul>
							<li class="english_text"><a href="#">All</a></li>
							<li><a href="#">뉴스</a></li>
							<li><a href="#">이달의&nbsp;프로모션</a></li>
						</ul>
					</li>
					<li class="list">
						<p>서비스</p>
						<ul>
							<li class="english_text"><a href="#">Overview</a></li>
							<li class="english_text"><a href="#">My&nbsp;Volkswagen&nbsp;App</a></li>
							<li><a href="#">서비스&nbsp;이용하기</a></li>
							<li><a href="#">서비스&nbsp;안내</a></li>
							<li><a href="#">폭스바겐&nbsp;순정&nbsp;부품</a></li>
							<li><a href="#">액세서리</a></li>
							<li><a href="#">이전&nbsp;모델</a></li>
							<li><a href="#">유용한&nbsp;정보</a></li>
							<li><a href="#">ID&nbsp;서비스</a></li>
						</ul>
					</li>
				</div>
				<div class="bottom_group">
					<li class="list">
						<p>테크놀로지</p>
						<ul>
							<li><a href="#">All</a></li>
							<li><a href="#">운전자&nbsp;보조&nbsp;시스템</a></li>
							<li><a href="#">안전&nbsp;및&nbsp;편의사항</a></li>
						</ul>
					</li>
					<li class="list">
						<p>폭스바겐&nbsp;인증&nbsp;중고차</p>
						<ul>
							<li><a href="#">중고차&nbsp;찾기</a></li>
						</ul>
					</li>
					<li class="list english_text">
						<p>
							F<span class="special_text">&amp;</span>Q
						</p>
						<ul>
							<li><a href="/contentsPage/service">F<span class="special_text">&amp;</span>Q
							</a></li>
						</ul>
					</li>
				</div>
			</div>
		</ul>
	</nav>
</div>
<!-- Search -->
<div id="search_wrap">
	<div class="search_sf">
		<i class="fa fa-angle-left before" aria-hidden="true"></i>
		<form action="#" method="post">
			<fieldset>
				<div class="search_bar cf">
					<div class="icon">
						<i class="fa fa-search"></i>
					</div>
					<input type="text" id="text" placeholder="검색">
				</div>
			</fieldset>
		</form>
	</div>
</div>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- 외부 JS -->
<script src="/resources/js/jquery-1.12.4.min.js"></script>
<script src="/resources/js/jquery-3.3.1.min.js"></script>
<script>
	/* category 페이지 열기 */
	$('.gnb .ct').click(function(){
	    	$('#category_wrap').slideDown(300);
	});
	
	/* search 페이지 열기 */
	$('.gnb .sch').click(function(){
	    	$('#search_wrap').fadeIn(300);
	});
	
	/* search 페이지 닫기 */
	$('.before').click(function(){
	    	$('#search_wrap').fadeOut(300);
	});
	
	/* category 페이지 닫기 */
	$('.close').click(function(){
	    	$('#category_wrap').slideUp(300);
	});
	// $('.search_bar').click(function(){
	//     $('.icon i').css('color', '#fff');
	// });
</script>
