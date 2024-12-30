<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>MODELS | Volkswagen</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- 파비콘(fav) PC -->
	<link rel="shortcut icon" href="/resources/images/header/logo1_withDog2_withoutTxt.png">
	<!-- 파비콘(fav) Moblie -->
	<link rel="apple-touch-icon=precomposed" href="/resources/images/header/logo1_withDog2_withoutTxt.png">
	<!-- Reset CSS -->
	<link rel="stylesheet" href="/resources/css/reset.css">
	<!-- Page CSS -->
	<link rel="stylesheet" href="/resources/css/header.css">
	<link rel="stylesheet" href="/resources/css/models.css">
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
				<img src="/resources/images/contentsPage/models/slider.png" alt="슬라이드">
			</h2>
			<ul class="w1600">
				<li>
					<h3>Vehicle Models</h3>
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
					<li><span class="korean_text">모델정보</span></li>
				</ul>
			</section>
			<!-- /breadcrumb -->
			<!-- Vehicle Models -->
			<section class="vehicle_models_section w1300">
				<h2>Sedan</h2>
				<div class="vehicle_models_box">
					<ul class="vehicle_models">
						<li class="cel_car">
							<a href="#">
								<div class="car">
									<img src="/resources/images/contentsPage/models/art.webp" alt="Arteon">
								</div>
								<div class="cel car_hover">
									<img src="/resources/images/contentsPage/models/art_right.webp" alt="Arteon 옆면">
									<div class="price">
										<h3>Arteon</h3>
										<p>
											From&nbsp;<span class="special_text">&#x20a9;&nbsp;58,700,000</span>
										</p>
										<button>자세히보기</button>
									</div>
								</div>
							</a>
						</li>
						<li class="cel_car2">
						<a href="#">
								<div class="car2">
									<img src="/resources/images/contentsPage/models/jetta.webp" alt="Jetta">
								</div>
								<div class="cel car2_hover">
									<img src="/resources/images/contentsPage/models/jetta_right.webp" alt="Jetta 옆면">
									<div class="price">
										<h3>Jetta</h3>
										<p>
											From&nbsp;<span class="special_text">&#x20a9;&nbsp;38,100,000</span>
										</p>
										<button>자세히보기</button>
									</div>
								</div>
							</a>
						</li>
					</ul>
				</div>
				<h2>SUV</h2>
				<div class="vehicle_models_box">
					<ul class="vehicle_models">
						<li class="cel_car">
							<a href="#">
								<div class="car">
									<img src="/resources/images/contentsPage/models/tiguan.webp" alt="Tiguan">
								</div>
								<div class="cel car_hover">
									<img src="/resources/images/contentsPage/models/tiguan_right.webp" alt="Tiguan 옆면">
									<div class="price">
										<h3>Tiguan</h3>
										<p>
											From&nbsp;<span class="special_text">&#x20a9;&nbsp;45,480,000</span>
										</p>
										<button>자세히보기</button>
									</div>
								</div>
							</a>
						</li>
						<li class="cel_car2">
							<a href="#">
								<div class="car2">
									<img src="/resources/images/contentsPage/models/tiguan_all.webp" alt="Tiguan Allspace">
								</div>
								<div class="cel car2_hover">
									<img src="/resources/images/contentsPage/models/tiguan_allspace_right.webp" alt="Tiguan Allspace 옆면">
									<div class="price">
										<h3>Tiguan Allspace</h3>
										<p>
											From&nbsp;<span class="special_text">&#x20a9;&nbsp;53,740,000</span>
										</p>
										<button>자세히보기</button>
									</div>
								</div>
							</a>
						</li>
						<li class="cel_car3">
							<a href="/contents_touareg/index/">
								<div class="car3">
									<img src="/resources/images/contentsPage/models/touareg.webp" alt="Touareg">
								</div>
								<div class="cel car3_hover">
									<img src="/resources/images/contentsPage/models/touareg_right.webp" alt="Touarg 옆면">
									<div class="price">
										<h3>Touareg</h3>
										<p>
											From&nbsp;<span class="special_text">&#x20a9;&nbsp;100,990,000</span>
										</p>
										<button>자세히보기</button>
									</div>
								</div>
							</a>
						</li>
					</ul>
				</div>
				<h2>Hatchback</h2>
				<div class="vehicle_models_box">
					<ul class="vehicle_models">
						<li class="cel_car">
							<a href="#">
								<div class="car">
									<img src="/resources/images/contentsPage/models/golf.webp" alt="Golf">
								</div>
								<div class="cel car_hover">
									<img src="/resources/images/contentsPage/models/golf_right.webp" alt="Golf 옆면">
									<div class="price">
										<h3>Golf</h3>
										<p>
											From&nbsp;<span class="special_text">&#x20a9;&nbsp;39,850,000</span>
										</p>
										<button>자세히보기</button>
									</div>
								</div>
							</a>
						</li>
						<li class="cel_car2">
							<a href="#">
								<div class="car2">
									<img src="/resources/images/contentsPage/models/golf_GTI.webp" alt="Golf GTI">
								</div>
								<div class="cel car2_hover">
									<img src="/resources/images/contentsPage/models/golf_gti_right.webp" alt="Golf GTI 옆면">
									<div class="price">
										<h3>Golf GTI</h3>
										<p>
											From&nbsp;<span class="special_text">&#x20a9;&nbsp;49,700,000</span>
										</p>
										<button>자세히보기</button>
									</div>
								</div>
							</a>
						</li>
					</ul>
				</div>
				<h2>EV</h2>
				<div class="vehicle_models_box">
					<ul class="vehicle_models">
						<li class="cel_car">
							<a href="/contents_id4/index/">
								<div class="car">
									<img src="/resources/images/contentsPage/models/id4.webp" alt="ID.4">
								</div>
								<div class="cel car_hover">
									<img src="/resources/images/contentsPage/models/id4_right.webp" alt="ID.4 옆면">
									<div class="price">
										<h3>ID.4</h3>
										<p>
											From&nbsp;<span class="special_text">&#x20a9;&nbsp;54,900,000</span>
										</p>
										<button>자세히보기</button>
									</div>
								</div>
							</a>
						</li>
					</ul>
				</div>
			</section>
			<!-- /Vehicle Models -->
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
	<script src="/resources/js/aside.js"></script>
</body>
</html>
