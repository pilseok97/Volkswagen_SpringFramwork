<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tiguan | Models | Volkswagen</title>
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
                <img src="/resources/images/subPage/tiguan/1.png" alt="slide_img">
            </h2>
            <ul class="w1600">
                <li>
                    <h3>The Tiguan</h3>
                </li>
                <li class="article_btn">
                    <button class="download"><a href="/resources/pdf/The_Tiguan.pdf" download><span class="korean_text">리플렛 다운로드</span></a></button>
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
                    <span class="korean_text">모든 요소에 완성도를 더하다</span>
                </h2>
                <video controls controlslist="nodownload" preload="metadata" src="/resources/videos/tiguan/sec1_mainVideo.mp4"></video>
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
                                Exterior
                            </h2>
                            <p>
                                <span class="korean_text">완벽한 비율과 세련된 외관, 탄탄한 바디라인의 티구안은 더 와이드해진 전면부와 두터워진 라디에이터 그릴로 더욱 믿음직스러운 인상을 줍니다. 날렵해진 헤드라이트의 눈매는 도로 위에서도 강렬한 존재감을 주기에 충분합니다. 폭스바겐 SUV 만의 완성도 높은 디자인으로 진화한 티구안은 당신의 만족도를 한층 업그레이드 시킵니다.
                            </p>
                        </div>
                        <div class="tab tab_content_01">
                            <h2>
                                IQ.Light / LED <span class="korean_text">테크놀로지 램프</span>
                            </h2>
                            <p>
                                <span class="korean_text">‘IQ.라이트’ 매트릭스 LED 헤드램프는 지능형 제어 기능인 “다이내믹 라이트 어시스트”를 통해, 도로상의 다른 운전자들에게 영향을 주지 않으면서 더욱 넓은 범위를 밝게 비춰줍니다. (매트릭스 LED 헤드램프 Prestige 적용)
                                    LED 테크놀로지 리어 컴비네이션 테일램프는 높은 시인성을 제공하며 또한 다이내믹 턴시그널은 선을 그리는 듯한 애니메이션으로 방향을 바꿀 때마다 눈길을 사로잡습니다. (다이내믹 턴 시그널 Prestige 적용)  </span>
                            </p>
                        </div>
                        <div class="tab tab_content_02">
                            <h2>
                                Interior
                            </h2>
                            <p>
                                <span class="korean_text">내면의 가치를 더 강화한 티구안을 만나보세요. 디지털 콕핏, 무선 충전 그리고 무선 앱커넥트 등 다양하고 편리한 기술을 통해 누리는 이성적 만족감부터 30가지 앰비언트 라이트를 통한 감성적 터치까지, 편안함과 실용성, 그리고 기술력까지 갖춘 티구안은 당신의 어떠한 여정도 완벽하게 만들어줍니다.   </span>
                            </p>
                        </div>  
                        <li class="no_ml tab_content_00 tabImg"><img src="/resources/images/subPage/tiguan/sec2_1.webp" alt="features_img"></li>
                        <li class="no_ml tab_content_01 tabImg"><img src="/resources/images/subPage/tiguan/sec2_2.webp" alt="features_img"></li>
                        <li class="no_ml tab_content_02 tabImg"><img src="/resources/images/subPage/tiguan/sec2_3.webp" alt="features_img"></li>
                    </li>
                </ul>
            </section>
            <!-- /Vehicle_features -->
            <!-- Additional_features_section -->
            <section class="additional_features_section w1600">
                <h2>Highlights of the Tiguan</h2>
                    <ul class="additional_features">
                        <div class="manual_slider">
                            <li>    
                                <a href="#">
                                    <img src="/resources/images/subPage/tiguan/sec3_1.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/tiguan/sec3_2.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/tiguan/sec3_3.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/tiguan/sec3_4.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/tiguan/sec3_5.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/tiguan/sec3_6.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li> 
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/tiguan/sec3_7.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/tiguan/sec3_8.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/tiguan/sec3_9.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>               
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/tiguan/sec3_10.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/tiguan/sec3_11.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/tiguan/sec3_12.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>      
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/tiguan/sec3_13.webp" alt="">
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