<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Golf 8 | Models | Volkswagen</title>
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
                <img src="/resources/images/subPage/golf/1.png" alt="slide_img">
            </h2>
            <ul class="w1600">
                <li>
                    <h3>The Golf 8</h3>
                </li>
                <li class="article_btn">
                    <button class="download"><a href="/resources/pdf/The_Golf8.pdf" download><span class="korean_text">리플렛 다운로드</span></a></button>
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
                    Timeless icon <br>
                    The Golf 8
                </h2>
                <video controls controlslist="nodownload" preload="metadata" src="/resources/videos/golf/sec1_mainVideo.mp4"></video>
            </section>
            <!-- /Vehicle Overview -->
            <!-- Vehicle_features -->
            <section class="vehicle_features_section">  
                <ul class="vehicle_features">
                    <li>
                        <!-- Vehicle_features_btn -->
                        <aside class="vehicle_features_btn">
                            <a class="prev" onclick="plusTab(-1);"><i class="fa fa-angle-double-left"></i></a>
                            <span class="dot" >1</span>
                            <span class="dot">2</span>
                            <span class="dot">3</span>
                            <a class="next" onclick="plusTab(1);"><i class="fa fa-angle-double-right"></i></a>
                        </aside>
                        <!-- /Vehicle_features_btn -->
                        <div class="tab tab_content_00">
                            <h2>
                                Exterior design
                            </h2>
                            <p>
                                <span class="korean_text">감각적인 디자인으로 눈길을 사로잡는 신형 8세대 골프는 세대마다 진화를 거듭해온 해치백의 아이콘입니다.
                                    골프 본연의 실루엣은 유지하면서도 현대적인 디자인에 혁신적인 기술을 담아내는 것은 골프가 추구하는 핵심 가치 입니다. 날렵하고 선명해진 LED 헤드라이트와 라디에이터 그릴 라이팅, 직관적이면서도 다이내믹한 볼륨과 캐릭터 라인은 또 한번 골프만의 독보적인 디자인으로 완성되었습니다.  </span>
                            </p>
                        </div>
                        <div class="tab tab_content_01">
                            <h2>
                                Interior design
                            </h2>
                            <p>
                                <span class="korean_text"> 30가지 컬러로 커스텀 가능한 앰비언트 라이트, 10.25인치 TFT 디스플레이 디지털 콕핏 프로, 터치와 제스처로 컨트롤이 가능한 MIB3 디스커버 프로 인포테인먼트 시스템과 간결하고 직관적인 구성으로 새로워진 센터콘솔 디자인은 운전자에게 또 다른 만족감을 선사 할 것입니다. </span>
                            </p>
                        </div>
                        <div class="tab tab_content_02">
                            <h2>
                                IQ.Light
                            </h2>
                            <p>
                                <span class="korean_text">LED 매트릭스 헤드라이트와 지능형 조명제어 기능인 "다이내믹 라이트 어시스트", 그리고 "다이내믹 코너링 어시스트"를 통해, 도로 상의 다른 운전자들에게 영향을 최소화 하면서, 더욱 넓은 범위를 밝게 비춰주고 운전자의 안전하고 편안한 주행과 코너링을 도와줍니다. (Prestige 적용)</span>
                            </p>
                        </div>  
                        <li class="no_ml tab_content_00 tabImg"><img src="/resources/images/subPage/golf/sec2_1.webp" alt="features_img"></li>
                        <li class="no_ml tab_content_01 tabImg"><img src="/resources/images/subPage/golf/sec2_2.webp" alt="features_img"></li>
                        <li class="no_ml tab_content_02 tabImg"><img src="/resources/images/subPage/golf/sec2_3.webp" alt="features_img"></li>
                    </li>
                </ul>
            </section>
            <!-- /Vehicle_features -->
            <!-- Additional_features_section -->
            <section class="additional_features_section w1600">
                <h2>Highlights of the Golf</h2>
                    <ul class="additional_features">
                        <div class="manual_slider">
                            <li>    
                                <a href="#">
                                    <img src="/resources/images/subPage/golf/sec3_1.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/golf/sec3_2.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/golf/sec3_3.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/golf/sec3_4.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/golf/sec3_5.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/golf/sec3_6.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li> 
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/golf/sec3_7.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/golf/sec3_8.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/golf/sec3_9.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>               
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/golf/sec3_10.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/golf/sec3_11.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/golf/sec3_12.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>      
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/golf/sec3_13.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>                      
                        </div>
                    </ul>
                <div class="other_btn"><a href="#" target="_blank"><button>자세히보기</button></a></div>
            </section>
            <!-- /Additional_features_section -->
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
