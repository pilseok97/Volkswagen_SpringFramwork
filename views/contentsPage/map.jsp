<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>LOCATION | Volkswagen</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- 파비콘(fav) PC -->
	<link rel="shortcut icon" href="/resources/images/header/logo1_withDog2_withoutTxt.png">
	<!-- 파비콘(fav) Moblie -->
	<link rel="apple-touch-icon=precomposed" href="/resources/images/header/logo1_withDog2_withoutTxt.png">
	<!-- Reset CSS -->
	<link rel="stylesheet" href="/resources/css/reset.css">
	<!-- Page CSS -->
	<link rel="stylesheet" href="/resources/css/header.css">
	<link rel="stylesheet" href="/resources/css/map.css">
	<link rel="stylesheet" href="/resources/css/footer.css">
	<link rel="stylesheet" href="/resources/css/aside.css">
	<!-- PlugIn JS -->
	<script src="/resources/js/prefixfree.min.js"></script>
	<script src="/resources/js/jquery-1.12.4.min.js"></script>
	<script src="/resources/js/jquery-3.3.1.min.js"></script>
	<!-- 모듈화 스크립트 -->
	<script>
	        $(function(){
	            function loadAndBind(selector, url) {
	                $(selector).load(url, function(){
	                    $('a[href="#"]').on('click', function(x){
	                        x.preventDefault();
	                        $('.alert').stop(1).fadeIn(700);
	                        setTimeout(function(){
	                            $('.alert').fadeOut(700);
	                        }, 2000);
	                    });
	                });
	            }
	        });
	    </script>
	<!-- /모듈화 스크립트 -->
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
				<img src="/resources/images/contentsPage/maps/slider.webp" alt="맵 사진">
			</h2>
			<ul class="w1600">
				<li>
					<h3>LOCATION</h3>
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
					<li><span class="korean_text">MAP</span></li>
				</ul>
			</section>
			<!-- /breadcrumb -->
			<!-- Location_map_section  -->
			<section class="location_map_section">
				<div class="location_map_head w1300">
					<h2>
						<span class="korean_text">전시장찾기</span>
					</h2>
					<h2>
						<span class="korean_text">판매점찾기</span>
					</h2>
					<h2>
						<span class="korean_text">정비소찾기</span>
					</h2>
					<ul class="find_button cf">
						<li><span class="korean_text">전시장찾기</span></li>
						<li><span class="korean_text">판매점찾기</span></li>
						<li class="no_mr"><span class="korean_text">정비소찾기</span></li>
					</ul>
				</div>
				<div class="find_display w1600">
					<!-- Map -->
					<div class="location_map find_left">
						<img src="/resources/images/contentsPage/maps/1.png" alt="지도">
					</div>
					<!-- /Map -->
					<!-- 전시장찾기 -->
					<section class="find_right korean_text cf find_1">
						<h3 class="no_mt">
							<span class="korean_text">전시장 찾기</span>
						</h3>
						<div class="select_wrap">
							<label for="sido">지역</label> <select class="sel1" name="sido" id="sido">
								<option value="서울특별시">서울</option>
							</select>
						</div>
						<div class="select_wrap">
							<label for="gungu">시/군/구</label> <select class="sel2" name="gungu" id="gungu">
								<option value="">전체</option>
								<option value="강남구">강남구</option>
								<option value="강북구">강북구</option>
								<option value="강서구">강서구</option>
								<option value="구로구">구로구</option>
								<option value="성동구">성동구</option>
								<option value="송파구">송파구</option>
								<option value="용산구">용산구</option>
							</select>
						</div>
						<h3>
							<span class="korean_text">전시장</span>
						</h3>
						<ul class="display_place">
							<li><a href="#">강남 대치 판매점</a></li>
							<li><a href="#">강북 미아 판매점</a></li>
							<li><a href="#">구로천왕 판매점</a></li>
							<li><a href="#">성수판매점</a></li>
							<li><a href="#">송파 판매점</a></li>
							<li><a href="#">염창 판매점</a></li>
							<li><a href="#">용산 한강대로 판매점</a></li>
						</ul>
					</section>
					<!-- /전시장찾기 -->
					<!-- 판매점찾기 -->
					<section class="find_right korean_text cf find_2">
						<h3 class="no_mt">
							<span class="korean_text">판매점 찾기</span>
						</h3>
						<div class="select_wrap">
							<label for="sido">지역</label> <select class="sel1" name="sido"
								id="sido">
								<option value="서울특별시">서울</option>
							</select>
						</div>
						<div class="select_wrap">
							<label for="gungu">시/군/구</label> <select class="sel2" name="gungu" id="gungu">
								<option value="">전체</option>
								<option value="강남구">강남구</option>
								<option value="강북구">강북구</option>
								<option value="강서구">강서구</option>
								<option value="구로구">구로구</option>
								<option value="성동구">성동구</option>
								<option value="송파구">송파구</option>
								<option value="용산구">용산구</option>
							</select>
						</div>
						<h3>
							<span class="korean_text">판매점</span>
						</h3>
						<ul class="display_place">
							<li><a href="#">강남 대치 판매점</a></li>
							<li><a href="#">강북 미아 판매점</a></li>
							<li><a href="#">구로천왕 판매점</a></li>
							<li><a href="#">성수판매점</a></li>
							<li><a href="#">송파 판매점</a></li>
							<li><a href="#">염창 판매점</a></li>
							<li><a href="#">용산 한강대로 판매점</a></li>
						</ul>
					</section>
					<!-- /판매점찾기 -->
					<!-- 정비소찾기 -->
					<section class="find_right korean_text cf find_3">
						<h3 class="no_mt">
							<span class="korean_text">정비소 찾기</span>
						</h3>
						<div class="select_wrap">
							<label for="sido">지역</label> <select class="sel1" name="sido"
								id="sido">
								<option value="서울특별시">서울</option>
							</select>
						</div>
						<div class="select_wrap">
							<label for="gungu">시/군/구</label> <select class="sel2"
								name="gungu" id="gungu">
								<option value="">전체</option>
								<option value="강남구">강남구</option>
								<option value="강북구">강북구</option>
								<option value="강서구">강서구</option>
								<option value="구로구">구로구</option>
								<option value="성동구">성동구</option>
								<option value="송파구">송파구</option>
								<option value="용산구">용산구</option>
							</select>
						</div>
						<h3>
							<span class="korean_text">정비소</span>
						</h3>
						<ul class="display_place">
							<li><a href="#">강남 대치 판매점</a></li>
							<li><a href="#">강북 미아 판매점</a></li>
							<li><a href="#">구로천왕 판매점</a></li>
							<li><a href="#">성수판매점</a></li>
							<li><a href="#">송파 판매점</a></li>
							<li><a href="#">염창 판매점</a></li>
							<li><a href="#">용산 한강대로 판매점</a></li>
						</ul>
					</section>
					<!-- /정비소찾기 -->
				</div>
				<!-- Map Footer -->
				<div class="map_footer w1300"></div>
				<!-- /Map Footer -->
			</section>
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
	<!-- pPage JS -->
	<script src="/resources/js/map.js"></script>
	<script src="/resources/js/aside.js"></script>
</body>
</html>
