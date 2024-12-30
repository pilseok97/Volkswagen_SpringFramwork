<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Golf GTI | Models | Volkswagen</title>
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
                <img src="/resources/images/subPage/golfGTI/1.png" alt="slide_img">
            </h2>
            <ul class="w1600">
                <li>
                    <h3>The Golf GTI</h3>
                </li>
                <li class="article_btn">
                    <button class="download"><a href="/resources/pdf/Golf_GTI.pdf" download><span class="korean_text">리플렛 다운로드</span></a></button>
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
                    Real performance icon<br>
                    The Golf GTI
                </h2>
                <video controls controlslist="nodownload" preload="metadata" src="/resources/videos/golfGTI/sec1_mainVideo.mp4"></video>
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
                                Real performance icon
                            </h2>
                            <p>
                                <span class="korean_text">골프 GTI는 1976년, 폭스바겐 엔지니어들의 ‘내가 타고 싶은 차’를 만들겠다는 열정으로 탄생했습니다. 그들의 꿈은 8세대를 거치면서 여전히 발전해나가고 있으며, 골프 GTI는 퍼포먼스 해치백의 아이콘이자 가장 사랑받는 폭스바겐의 모델이 되었습니다. 8세대 신형 골프 GTI는 더욱 업그레이드된 서스펜션, 견고한 움직임, 민첩한 핸들링 성능으로 궁극의 퍼포먼스를 보여줍니다. 모든 면에서 업그레이드된 리얼 퍼포먼스 아이콘, 골프 GTI를 경험해보세요.
                                </span>
                            </p>
                        </div>
                        <div class="tab tab_content_01">
                            <h2>
                                Exterior
                            </h2>
                            <p>
                                <span class="korean_text">8세대 골프 GTI의 디자인은 오리지널 핫 해치의 명성에 걸맞은 GTI 헤리티지를 그대로 계승합니다. 전면 디자인은 GTI의 상징인 레드 스트립과 GTI 엠블럼 그리고 허니컴 그릴 에어 인테이크가 시선을 사로잡습니다. 레드컬러 브레이크 캘리퍼가 적용된 19인치 애들레이드 휠과 리어 블랙 디퓨저, GTI 전용 크롬 트윈 배기구가 적용된 후면부는 강렬한 고성능 스포츠카임을 증명합니다.</span>
                            </p>
                        </div>
                        <div class="tab tab_content_02">
                            <h2>
                                Interior
                            </h2>
                            <p>
                                <span class="korean_text">8세대 골프 GTI는 디지털 시대에 맞게 가장 순수하고 효율적이며 첨단기술로 가다듬어졌습니다. 운전석에 앉으면 시동을 걸기 전부터 엔진 스타트/스톱 버튼이 심장 박동이 뛰는 것처럼 반짝입니다. GTI만의 감성으로 디자인된 최첨단 10.25인치 디지털 콕핏 프로와 10인치 MIB3 디스커버프로 인포테인먼트 시스템은 직관적이고 디지털화 된 인터페이스를 자랑합니다. 특히 다이내믹한 주행이 가능한 GTI의 특성에 맞게 디지털 콕핏 프로를 통해서 순간 출력, 엔진 부스트 압력, 랩 타이머 등등의 정보를 GTI 전용 그래픽 기능을 통해 확인하실 수 있습니다.</span>
                            </p>
                        </div>  
                        <li class="no_ml tab_content_00 tabImg"><img src="/resources/images/subPage/golfGTI/sec2_1.webp" alt="features_img"></li>
                        <li class="no_ml tab_content_01 tabImg"><img src="/resources/images/subPage/golfGTI/sec2_2.webp" alt="features_img"></li>
                        <li class="no_ml tab_content_02 tabImg"><img src="/resources/images/subPage/golfGTI/sec2_3.webp" alt="features_img"></li>
                    </li>
                </ul>
            </section>
            <!-- /Vehicle_features -->
            <!-- Additional_features_section -->
            <section class="additional_features_section w1600">
                <h2>Highlights of the Golf GTI</h2>
                    <ul class="additional_features">
                        <div class="manual_slider">
                            <li>    
                                <a href="#">
                                    <img src="/resources/images/subPage/golfGTI/sec3_1.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/golfGTI/sec3_2.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/golfGTI/sec3_3.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/golfGTI/sec3_4.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/golfGTI/sec3_5.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/golfGTI/sec3_6.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li> 
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/golfGTI/sec3_7.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/golfGTI/sec3_8.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/golfGTI/sec3_9.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>               
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/golfGTI/sec3_10.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/golfGTI/sec3_11.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/golfGTI/sec3_12.webp" alt="">
                                <p>
                                    컨텐츠
                                </p>
                                </a>
                            </li>      
                            <li>
                                <a href="#">
                                    <img src="/resources/images/subPage/golfGTI/sec3_13.webp" alt="">
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
