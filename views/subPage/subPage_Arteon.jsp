<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Arteon | Models | Volkswagen</title>
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
                <img src="/resources/images/subPage/arteon/1.png" alt="slide_img">
            </h2>
            <ul class="w1600">
                <li>
                    <h3>The Arteon<span class="special_text"></span></h3>
                </li>
                <li class="article_btn">
                    <button class="download"><a href="/resources/pdf/Arteon.pdf" download><span class="korean_text">리플렛 다운로드</span></a></button>
                    <button class="more"><a href="#" target="_blank"><span class="korean_text">자세히보기</span></a></button>
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
                    <span class="korean_text">아테온을 더 아름답고 강렬하게</span><br>
                </h2>
                <img src="/resources/videos/arteon/sec1_mainVideo.jpg" alt="">
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
                            <h2>
                                <span class="korean_text">차, 그 이상의 아름다움</span>
                            </h2>
                            <p>
                                <span class="korean_text">우아한 디자인과 첨단 기술의 아름다운 조화</span>
                            </p>
                        </div>
                        <div class="tab tab_content_01">
                            <h2>Exterior</h2>
                            <p>
                                <span class="korean_text">유려한 바디라인과 낮게 깔린 듯한 에어로다이내믹 실루엣으로 어떤 각도에서든 시선을 사로잡습니다. LED 주간주행등과 이어지는 라디에이터 그릴 라이팅이 적용된 전면 디자인은 우아한 카리스마를 발산하며, 클래식한 패스트백 세단 스타일을 반영한 후면부 디자인과 아름다운 조화를 이룹니다. 특히, 도어의 프레임리스 윈도우는 그랜드 투어러의 전형적인 스타일 요소를 담아냈으며, 뒷유리와 함께 위로 크게 열리는 테일게이트가 적용되어 여유로운 적재공간을 보다 손쉽게 이용할 수 있어 편리합니다.</span>
                            </p>
                        </div>
                        <div class="tab tab_content_02">
                            <h2>Interior <span class="special_text">&</span> Ambient light</h2>
                            <p>
                                <span class="korean_text">30가지 색상 설정이 가능한 엠비언트 라이트로 실내 분위기를 업그레이드 시킬 수 있습니다. 고급스러운 ‘Nappa’ 가죽 시트로, 앞좌석에는 통풍시트, 요추지지대를 포함한 전동 시트가 적용되어 편안하고 안정적인 착좌감을 제공합니다. 앞좌석은 물론 뒷좌석에도 충분한 헤드룸 및 레그룸이 안락함과 여유로움을 선사합니다.<span class="special_text">4</span>가 제안하는 새로운 라이프를 지금 경험해 보세요.</span>
                            </p>
                        </div>
                        <li class="no_ml tab_content_00 tabImg">
                            <img src="/resources/images/subPage/arteon/sec2_1.webp" alt="features_img">
                        </li>
                        <li class="no_ml tab_content_01 tabImg">
                            <img src="/resources/images/subPage/arteon/sec2_2.webp" alt="features_img">
                        </li>
                        <li class="no_ml tab_content_02 tabImg">
                            <img src="/resources/images/subPage/arteon/sec2_3.webp" alt="features_img">
                        </li>
                    </li>
                </ul>
            </section>
            <!-- /Vehicle_features -->
            <!-- Additional_features_section -->
            <section class="additional_features_section w1600">
                <h2>Highlights of the Arteon</h2>
                <ul class="additional_features">
                    <div class="manual_slider">
                        <li>
                            <a href="#">
                                <img src="/resources/images/subPage/arteon/sec3_1.webp" alt="">
                                <p>컨텐츠</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="/resources/images/subPage/arteon/sec3_2.webp" alt="">
                                <p>컨텐츠</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="/resources/images/subPage/arteon/sec3_3.webp" alt="">
                                <p>컨텐츠</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="/resources/images/subPage/arteon/sec3_4.webp" alt="">
                                <p>컨텐츠</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="/resources/images/subPage/arteon/sec3_5.webp" alt="">
                                <p>컨텐츠</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="/resources/images/subPage/arteon/sec3_6.webp" alt="">
                                <p>컨텐츠</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="/resources/images/subPage/arteon/sec3_7.webp" alt="">
                                <p>컨텐츠</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="/resources/images/subPage/arteon/sec3_8.webp" alt="">
                                <p>컨텐츠</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="/resources/images/subPage/arteon/sec3_9.webp" alt="">
                                <p>컨텐츠</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="/resources/images/subPage/arteon/sec3_10.webp" alt="">
                                <p>컨텐츠</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="/resources/images/subPage/arteon/sec3_11.webp" alt="">
                                <p>컨텐츠</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="/resources/images/subPage/arteon/sec3_12.webp" alt="">
                                <p>컨텐츠</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="/resources/images/subPage/arteon/sec3_13.webp" alt="">
                                <p>컨텐츠</p>
                            </a>
                        </li>
                    </div>
                </ul>
                <div class="other_btn">
                    <a href="#" target="_blank"><button>자세히보기</button></a>
                </div>
            </section>
            <!-- /Additional_features_section -->
        </main>
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
        var $slider = $('.manual_slider').bxSlider({
            slideWidth: 480,
            minSlides: 3,
            maxSlides: 4,
            moveSlides: 1,
            slideMargin: 10
        });
    </script>
</body>
</html>
