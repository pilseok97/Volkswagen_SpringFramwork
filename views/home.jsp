<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>폭스바겐코리아</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- 파비콘(fav) PC -->
	<link rel="shortcut icon" href="/resources/images/header/logo1_withDog2_withoutTxt.png">
	<!-- 파비콘(fav) Moblie -->
	<link rel="apple-touch-icon=precomposed" href="/resources/images/header/logo1_withDog2_withoutTxt.png">
	<!-- Reset CSS -->
	<link rel="stylesheet" href="/resources/css/reset.css">
	<!-- Page CSS -->
	<link rel="stylesheet" href="/resources/css/header.css">
	<link rel="stylesheet" href="/resources/css/main_page.css">
	<link rel="stylesheet" href="/resources/css/footer.css">
	<link rel="stylesheet" href="/resources/css/aside.css">
	<!-- PlugIn JS -->
	<script src="/resources/js/prefixfree.min.js"></script>
	<script src="/resources/js/jquery-1.12.4.min.js"></script>
	<script src="/resources/js/jquery-3.3.1.min.js"></script>
	<!-- 모듈화 스크립트 -->
	<script>
		$(function() {
			function loadAndBind(selector, url) {
				$(selector).load(url, function() {
					$('a[href="#"]').on('click', function(x) {
						x.preventDefault();
						$('.alert').stop(1).fadeIn(700);
						setTimeout(function() {
							$('.alert').fadeOut(700);
						}, 2000);
					});
				});
			}
		});
	</script>
</head>
<body>
	<div id="wrap">
		<!-- Header -->
		<header>
			<%@ include file="./includes/header.jsp" %>
		</header>
		<!-- /Header -->
		<!-- Slider -->
		<article>
			<h2>
				<div class="welcome w1600">
					<p>Welcome to Volkswagen</p>
					<p class="korean_text">
						<span>모두를 위한 폭스바겐 <br></span> 
						<span class="second">폭스바겐의 새로운 모델과 혁신적인 기술을 경험해보세요.</span>
					</p>
				</div>
				<img src="/resources/images/contents/1.png" alt="slide_img">
			</h2>
		</article>
		<!-- /Slider -->
		<!-- Contents -->
		<main>
			<!-- Shortcut_icons -->
			<section class="shortcut_section w1300">
				<ul class="shortcut_icons">
					<li>
						<a href="/contentsPage/models">
							<img src="/resources/images/contents/icon1_estimate.png" alt="shortcut_icons01">
							<p><span class="korean_text">모델정보</span></p>
						</a>
					</li>
					<li>
						<a href="#">
							<img src="/resources/images/contents/icon2_buy.png" alt="shortcut_icons02">
							<p><span class="korean_text">구매상담</span></p>
						</a>
					</li>
					<li>
						<a href="/contentsPage/map">
							<img src="/resources/images/contents/icon3_showRoom.png" alt="shortcut_icons03">
							<p><span class="korean_text">전시장찾기</span></p>
						</a>
					</li>
					<li>
						<a href="#">
							<img src="/resources/images/contents/icon4_promotion.png" alt="shortcut_icons04">
							<p><span class="korean_text">프로모션</span></p>
						</a>
					</li>
					<li>
						<a href="/contentsPage/service">
							<img src="/resources/images/contents/icon5_service.png" alt="shortcut_icons05">
							<p><span class="korean_text">서비스</span></p>
						</a>
					</li>
				</ul>
			</section>
			<!-- /Shortcut_icons -->
			<!-- Car_showcase -->
			<section class="car_showcase_section">
				<ul class="car_showcase w1600">
					<li>
						<div class="car_showcase_contents">
							<h2>The new Touareg 출시</h2>
							<p>
								<span class="korean_text"> 화려함 보다는 내면의 가치를 좇기를 <br> 험지를 만나도 중심을 잃지 않기를 <br> 얼마나 놀라운 당신인지 꾸준히 발견하기를.</span>
							</p>
						</div>
						<button class="new_car">
							<a href="/subPage/subPage_Touareg">
								<span class="english_text">New Touareg</span>
							</a>
						</button>
						<button class="bev">
							<a href="/subPage/subPage_id4">
								<span class="english_text">The all-electric ID<span class="special_text">.4</span></span>
							</a>
						</button>
					</li>
					<li><img src="/resources/images/contents/sec1_3_touareg.png" alt="car_img"></li>
				</ul>
			</section>
			<!-- /Car-showcase -->
			<!-- Model&Promotion -->
			<section class="model_promotion_section">
				<h2>
					Model&nbsp;<span class="special_text">&amp;</span>&nbsp;Promotion
				</h2>
				<div class="slider">
					<ul class="model_promotion">
						<li>
							<a href="subPage/subPage_TiguanAllspace.jsp"> 
								<img src="/resources/images/contents/sec1_1tiguanAllspace.webp" alt="promotion_img01">
								<h2>The Tiguan Allspace</h2>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="/resources/images/contents/sec1_2_checkBattery.webp" alt="promotion_img02">
								<h2>The checkBattery</h2>
							</a>
						</li>
						<li>
							<a href="subPage/subPage_Touareg.jsp"> 
								<img src="/resources/images/contents/sec1_3_touareg.webp" alt="promotion_img03">
								<h2>The touareg</h2>
							</a>
						</li>
						<li>
							<a href="subPage/subPage_Jetta.jsp"> 
								<img src="/resources/images/contents/sec1_4_jetta.webp" alt="promotion_img04">
								<h2>The jetta</h2>
							</a>
						</li>
						<li>
							<a href="subPage/subPage_Tiguan.jsp"> 
								<img src="/resources/images/contents/sec1_5_tiguan.webp" alt="promotion_img05">
								<h2>The tiguan</h2>
							</a>
						</li>
						<li>
							<a href="subPage/subPage_id4.jsp"> 
								<img src="/resources/images/contents/sec1_6_id4.webp" alt="promotion_img06">
								<h2>The id<span class="special_text">.4</span></h2>
							</a>
						</li>
						<li>
							<a href="subPage/subPage_GolfGTI.jsp"> 
								<img src="/resources/images/contents/sec1_7_golfGTI.webp" alt="promotion_img07">
								<h2>The GolfGTI</h2>
							</a>
						</li>
						<li>
							<a href="subPage/subPage_Golf8.jsp"> 
								<img src="/resources/images/contents/sec1_8_golf8.webp" alt="promotion_img08">
								<h2>The Golf8</h2>
							</a>
						</li>
					</ul>
				</div>
			</section>
			<!-- /Model&Promotion -->
			<!-- Owner&Driver -->
			<section class="owner_driver_section  w1600">
				<h2>
					Owner&nbsp;<span class="special_text">&amp;</span>&nbsp;Driver
				</h2>
				<a href="#"><img src="/resources/images/contents/sec2_service.webp"
					alt="O&D main_img"></a>
				<ul class="owner_driver korean_text">
					<li>
						<h2>
							<p>
								<span>폭스바겐 공식 서비스</span><br>저희 공식 서비스는 순정 부품과 제조사 매뉴얼을 통한
								수리로 고객님의<br>폭스바겐을 위한 최적화된 서비스를 제공하고 있습니다. 폭스바겐 맞춤<br>형
								부품과 수리로 안전하고 편안한 주행을 즐겨 보십시오.
							</p>
						</h2>
					</li>
					<li>
						<h2>
							<span>사고 수리 온라인 견적</span><br>저희 공식 서비스는 순정 부품과 제조사 매뉴얼을 통한
							수리로 고객님의<br>폭스바겐을 위한 최적화된 서비스를 제공하고 있습니다. 폭스바겐 맞춤<br>형
							부품과 수리로 안전하고 편안한 주행을 즐겨 보십시오.
						</h2>
					</li>
					<li>
						<h2>
							<span>My Volkswagen App</span><br>내 차 관련한 정보를 한눈에 손쉽게 확인해
							보시고. 다양한 혜택도 누려 보시기 바랍니다.
						</h2>
					</li>
				</ul>
			</section>
			<!-- /Owner&Driver -->
			<!-- News -->
			<section class="news_section w1600">
				<h2>News</h2>
				<ul class="news_list">
					<li class="news_item">
						<div class="news_hover_box">
							<img class="news_img" src="/resources/images/contents/sec3_news1.webp" alt="new_img01">
						</div>
						<div class="news_content">
							<span class="special_text">2024.08.06</span>
							<h2 class="korean_text">폭스바겐코리아, ‘신형 투아렉’ 공식 출시</h2>
							<p>
								<span class="korean_text"> 
									틸 셰어(Till Scheer) 폭스바겐그룹코리아
									대표이사 사장은 "폭스바겐의 가장 진보된 SUV, 투아렉은 '혁신'이라는 <br> 가치와 가장 잘
									부합하는 모델”이라고 설명하며, “‘신형 투아렉’은 혁신적인 첨단 기술, 최상의 안락함과 강력한 ... 
									<!-- 성능 등 프리미엄 SUV에게 요구되는 모든 미덕을 갖춘 모델로, 첨단기능과 신뢰할 수 있는 고성능, 합리적인<br>
                                    					가격과 경제성 등 까다로운 기준을 가진 고객들에게 높은 호응을 얻을 것으로 기대한다”고 말했다. -->
								</span>
							</p>
							<button>
								<a href="#"><span class="korean_text">자세히보기</span></a>
							</button>
						</div>
					</li>
					<li class="news_item">
						<div class="news_hover_box">
							<img class="news_img" src="/resources/images/contents/sec3_news2.webp" alt="new_img02">
						</div>
						<div class="news_content">
							<span class="special_text">2024.07.09</span>
							<h2>
								<span class="korean_text">폭스바겐코리아,<br> 장마철 침수피해 차량 지원 캠페인 실시
								</span>
							</h2>
							<p>
								<span class="korean_text"> 
									이번 캠페인은 집중호우로 인해 침수 피해를 본 폭스바겐
									고객 중 자차보험에 가입하지 않아 본인 부담으로 차량<br> 수리를 진행하는 고객을 대상으로 진행된다.
									대상 고객이 폭스바겐 공식 서비스센터에서 침수 피해 차량 수리 시 ... 
									<!-- 수리비 중 부품 가격 30%를 지원한다(*부품 단독 구매 제외). -->
								</span>
							</p>
							<button>
								<a href="#"><span class="korean_text">자세히보기</span></a>
							</button>
						</div>
					</li>
				</ul>
			</section>
			<!-- /News -->
		</main>
		<!-- /Contents -->
		<!-- Footer -->
		<footer class="w1600">
			<%@include file="./includes/footer.jsp" %>
		</footer>
		<!-- /Footer -->
		<!-- Aside -->
		<aside class="aside_nav">
			<%@include file="./includes/aside.jsp" %>
		</aside>
		<!-- /Aside -->
	</div>
	<c:if test="${not empty msg }">
		<script type="text/javascript">
			alert("${msg}");
		</script>
	</c:if>
	<!-- Page JS -->
	<script src="/resources/js/mainPage.js"></script>
	<script src="/resources/js/aside.js"></script>
</body>
</html>