<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ID4 | Models | Volkswagen</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- 파비콘(fav) PC -->
    <link rel="shortcut icon" href="/resources/images/header/logo1_withDog2_withoutTxt.png">
    <!-- 파비콘(fav) Mobile -->
    <link rel="apple-touch-icon=precomposed" href="/resources/images/header/logo1_withDog2_withoutTxt.png">
    <!-- Reset CSS -->
    <link rel="stylesheet" href="/resources/css/reset.css">
    <!-- Page CSS -->
    <link rel="stylesheet" href="/resources/css/header.css">
    <link rel="stylesheet" href="/resources/css/subPage_b.css">
    <link rel="stylesheet" href="/resources/css/footer.css">
    <link rel="stylesheet" href="/resources/css/aside.css">
    <!-- PlugIn JS -->
    <script src="/resources/js/prefixfree.min.js"></script>
    <script src="/resources/js/jquery-1.12.4.min.js"></script>
    <script src="/resources/js/jquery-3.3.1.min.js"></script>
    <!-- 박스슬라이더 플러그인 -->
	<link rel="stylesheet" href="/resources/css/jquery.bxslider.css">
	<script src="/resources/js/jquery.bxslider.js"></script>

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
            <%@include file="../includes/header.jsp" %>
        </header>
        <!-- /Header -->
        <!-- Slider -->
        <article>
            <h2>
                <img src="/resources/images/subPage/id4/1.png" alt="slide_img">
            </h2>
            <ul class="w1600">
                <li>
                    <h3>The all-electric ID<span class="special_text">.4</span></h3>
                </li>
                <li class="article_btn">
                    <button class="download"><a href="/resources/pdf/ID4.pdf" download><span class="korean_text">리플렛 다운로드</span></a></button>
                    <button class="more"><a href="/contents_id4/index/" target="_blank"><span class="korean_text">자세히보기</span></a></button>
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
            <!-- Vehicle Overview -->
            <section class="vehicle_overview_section w1600">
                <h2>
                    Electric for everyone<br>
                    <span class="korean_text">폭스바겐 순수 전기</span> SUV<span class="special_text">,</span> The all-electric ID<span class="special_text">.4</span>
                </h2>
                <video controls controlslist="nodownload" preload="metadata" src="/resources/videos/id4/sec1_mainVideo.mp4"></video>
            </section>
            <!-- /Vehicle Overview -->
            <!-- Vehicle_features -->
            <section class="vehicle_features_section">  
                <ul class="vehicle_features">
                    <li>
                        <!-- Vehicle_features_btn -->
                        <aside class="vehicle_features_btn">
                            <a class="prev" onclick="plusTab(-1);"><i class="fa fa-angle-double-left"></i></a>
                            <span class="dot">1</span>
                            <span class="dot">2</span>
                            <span class="dot">3</span>
                            <a class="next" onclick="plusTab(1);"><i class="fa fa-angle-double-right"></i></a>
                        </aside>
                        <!-- /Vehicle_features_btn -->
                        <div class="tab tab_content_00">
                            <h2>Exterior</h2>
                            <p>
                                <span class="korean_text">에어로 다이내믹스를 극대화한 외관 디자인은 마치 바람이 빚은 듯 매끄럽고 유려하면서도 파워풀한 스타일을 보여줍니다. 부드럽고 우아한 선의 흐름을 보여줌과 동시에 카리스마 넘치는 LED 헤드라이트와 라이트 스트립이 모던한 자태를 자랑 합니다. ID.<span class="special_text">4</span>는 훌륭한 디자인에 깃든 기능성을 실현했습니다. 에어로 다이내믹스 디자인을 통해 공기저항계수 0.28cd를 달성했으며 이는 효율성과 주행거리 향상에 큰 도움을 줍니다.</span>
                            </p>
                        </div>
                        <div class="tab tab_content_01">
                            <h2>Interior</h2>
                            <p>
                                <span class="korean_text">ID.<span class="special_text">4</span>의 인테리어는 혁신적인 놀라움으로 가득합니다. 전기차 전용 플랫폼 MEB가 완전히 새로운 느낌의 실내공간을 가능하게 했습니다. 넓은 좌석 공간과 더불어 대형 파노라마 글래스 루프가 시원한 개방감을 선사합니다. 또한 요소요소에 ID. Light와 같은 반짝이는 아이디어들이 돋보입니다. ID. Cockpit과 디스커버 프로 인포테인먼트 시스템은 직관적이고 편리한 조작으로 언제나 즐거운 드라이빙을 보장합니다.</span>
                            </p>
                        </div>
                        <div class="tab tab_content_02">
                            <h2>Volkswagen ID.<span class="special_text">4</span></h2>
                            <p>
                                <span class="korean_text">폭스바겐 ID.<span class="special_text">4</span>는 전기차 라이프를 시작하는 모든 이에게 만족감을 선사합니다. 검증된 상품성과 주행 성능, 향상된 에너지 효율로 당신의 기대를 충족시킬 것입니다.
                                운전자를 위한 직관적인 기능과 인테리어, 동승자를 배려한 여유로운 공간과 실용성을 갖춘 ID.<span class="special_text">4</span>는 전기차에 대한 당신의 생각을 새롭게 할 것입니다.
                                폭스바겐 ID.<span class="special_text">4</span>가 제안하는 새로운 라이프를 지금 경험해 보세요.</span>
                            </p>
                        </div>  
                        <li class="no_ml tab_content_00 tabImg">
                            <img src="/resources/images/subPage/id4/sec2_2.jpg" alt="features_img">
                        </li>
                        <li class="no_ml tab_content_01 tabImg">
                            <img src="/resources/images/subPage/id4/sec2_3.jpg" alt="features_img">
                        </li>
                        <li class="no_ml tab_content_02 tabImg">
                            <img src="/resources/images/subPage/id4/sec2_1.jpg" alt="features_img">
                        </li>
                    </li>
                </ul>
            </section>
            <!-- /Vehicle_features -->
            <!-- Additional_features_section -->
            <section class="additional_features_section w1600">
                <h2>Highlights of the all<span class="special_text">-</span>electric ID<span class="special_text">.4</span></h2>
                <ul class="additional_features">
                    <div class="manual_slider">
                        <li>    
                            <a href="#">
                                <video width="" height="520px" autoplay loop muted> 
                                    <source src="/resources/videos/id4/sec3_1.mp4" type="video/mp4">
                                </video>
                                <p>컨텐츠</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="/resources/images/subPage/id4/sec4_2.webp" alt="동영상">
                                <p>컨텐츠</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <video width="" height="520px" autoplay loop muted> 
                                    <source src="/resources/videos/id4/sec3_3.mp4" type="video/mp4">
                                </video>
                                <p>컨텐츠</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <video width="" height="520px" autoplay loop muted> 
                                    <source src="/resources/videos/id4/sec3_4.mp4" type="video/mp4">
                                </video>
                                <p>컨텐츠</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <video width="" height="520px" autoplay loop muted> 
                                    <source src="/resources/videos/id4/sec3_5.mp4" type="video/mp4">
                                </video>
                                <p>컨텐츠</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="/resources/images/subPage/id4/sec4_6.webp" alt="동영상">
                                <p>컨텐츠</p>
                            </a>
                        </li> 
                        <li>
                            <a href="#">
                                <img src="/resources/images/subPage/id4/sec4_7.webp" alt="동영상">
                                <p>컨텐츠</p>
                            </a>
                        </li>
                    </div>
                </ul>
                <div class="other_btn">
                    <a href="/contents_id4/index/" target="_blank"><button>자세히보기</button></a>
                </div>
            </section>
            <!-- /Additional_features_section -->
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
    <script src="/resources/js/sub_page_b.js"></script>
    <script src="/resources/js/aside_v2.js"></script>
<!-- 박스슬라이더 스크립트 -->
<script>
$(document).ready(function() {
    var $slider = $('.manual_slider').bxSlider({
        slideWidth: 480,
        minSlides: 3,
        maxSlides: 4,
        moveSlides: 1,
        slideMargin: 10
    });
});
</script>
</body>
</html>
