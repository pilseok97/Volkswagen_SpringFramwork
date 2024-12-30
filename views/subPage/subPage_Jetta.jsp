<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jetta | Models | Volkswagen</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- 파비콘(fav) PC -->
    <link rel="shortcut icon" href="/resources/images/header/logo1_withDog2_withoutTxt.png">
    <!-- 파비콘(fav) Mobile -->
    <link rel="apple-touch-icon=precomposed" href="/resources/images/header/logo1_withDog2_withoutTxt.png">
    <!-- Reset CSS -->
    <link rel="stylesheet" href="/resources/css/reset.css">
    <link rel="stylesheet" href="/resources/css/swiper-bundle.css">
    <!-- Page CSS -->
    <link rel="stylesheet" href="/resources/css/header.css">
    <link rel="stylesheet" href="/resources/css/subPage_a.css">
    <link rel="stylesheet" href="/resources/css/footer.css">
    <link rel="stylesheet" href="/resources/css/aside.css">
    <!-- PlugIn JS -->
    <script src="/resources/js/prefixfree.min.js"></script>
    <script src="/resources/js/jquery-1.12.4.min.js"></script>
    <script src="/resources/js/jquery-3.3.1.min.js"></script>
    <script src="/resources/js/swiper-bundle.js"></script>
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
                <img src="/resources/images/subPage/jetta/slider1.png" alt="slide_img">
            </h2>
            <ul class="w1600">
                <li>
                    <h3>The new Jetta</h3>
                </li>
                <li class="article_btn">
                    <button class="download"><a href="/resources/pdf/Jetta.pdf" download><span class="korean_text">리플렛 다운로드</a></span></button>
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
                    <span>My Next Premium</span><br>
                    The new Jetta
                </h2>
                <video controls="" controlslist="nodownload" preload="metadata" src="/resources/videos/jetta/sec1_mainVideo.mp4"></video>
            </section>
            <!-- /Vehicle Overview -->
            <!-- Vehicle_features -->
            <section class="vehicle_features_section">
                <ul class="vehicle_features">
                    <li>
                        <!-- Vehicle_features_btn -->
                        <aside class="vehicle_features_btn special_text">
                            <a class="prev" onclick="plusTab(-1);"><i class="fa fa-angle-double-left"></i></a>
                            <span class="dot">1</span>
                            <span class="dot">2</span>
                            <span class="dot">3</span>
                            <span class="dot">4</span>
                            <span class="dot">5</span>
                            <span class="dot">6</span>
                            <span class="dot">7</span>
                            <span class="dot">8</span>
                            <a class="next" onclick="plusTab(1);"><i class="fa fa-angle-double-right"></i></a>
                        </aside>
                        <!-- /Vehicle_features_btn -->
                        <div class="tab tab_content_00">
                            <h2>Exterior</h2>
                            <p>
                                <span class="korean_text">
                                    제타는 불필요한 장식 대신 매끈하고 개성 있는 라인으로 채워졌습니다. 
                                    옆면을 가로지르는 캐릭터 라인과 새로워진 전면 디자인은 다이내믹한 느낌을 주며 
                                    크롬으로 마무리된 리어범퍼 디퓨저는 고급스러운 세단의 뒷모습을 완성합니다.
                                </span>
                            </p>
                        </div>
                        <div class="tab tab_content_01">
                            <h2>Alloy wheels</span></h2>
                            <p>
                                <span class="special_text">7J x 17”</span> alloy wheels
                            </p>
                        </div>
                        <div class="tab tab_content_02">
                            <h2><span class="korean_text">LED 헤드램프 & LED 주간 주행등</span></h2>
                            <p>
                                <span class="korean_text">
                                    LED 헤드램프는 선명한 라인의 LED 주간 주행등과 스포티한 정면 디자인을 완성하며 
                                    높은 시인성으로 편안하고 안전한 주행을 보장합니다. 특히 제타에는 하이빔 컨트롤 
                                    라이트 어시스트 기능이 탑재되어 운전자의 야간 주행 시인성을 매우 향상시켜 줍니다.
                                </span>
                            </p>
                        </div>
                        <div class="tab tab_content_03">
                            <h2><span class="korean_text">파노라믹 선루프</span></h2>
                            <p>
                                <span class="korean_text">
                                    Rail-2-Rail 기술을 적용하여 한층 더 시원 한 개방감을 선사하는 파노라믹 선루프는 
                                    슬라이딩/틸팅 기능을 제공하며 루프 상단으로 개방되는 설계로 뒷좌석 
                                    헤드룸 공간 손실이 없습니다. (Prestige 적용)
                                </span>
                            </p>
                        </div>
                        <div class="tab tab_content_04">
                            <h2><span class="korean_text">멀티펑션 스티어링 휠</span></h2>
                            <p>
                                <span class="korean_text">
                                    스티어링 휠에 위치한 버튼으로 다양한 기능 조작이 가능한 멀티펑션 스티어링 휠은 
                                    운전에 집중할 수 있게 도와줍니다. Prestige트림에는 히팅 기능이 함께 제공됩니다.
                                </span>
                            </p>
                        </div>
                        <div class="tab tab_content_05">
                            <h2><span class="korean_text">통풍 시트</span></h2>
                            <p>
                                <span class="korean_text">
                                    앞좌석에 제공되는 통풍 시트는 더운 날씨에도 운전자에게 쾌적한 드라이빙 환경을 제공합니다.
                                </span>
                            </p>
                        </div>
                        <div class="tab tab_content_06">
                            <h2><span class="korean_text">접이식 뒷좌석 시트</span></h2>
                            <p>
                                <span class="korean_text">
                                    6:4 접이식 뒷좌석 시트는 길이가 긴 물건을 적재할 때 매우 유용하며 
                                    2열 시트를 모두 폴딩하면 최대 986 리터까지 적재가 가능합니다.
                                </span>
                            </p>
                        </div>
                        <div class="tab tab_content_07">
                            <h2><span class="korean_text">2존 클리마트로닉 자동 에어컨</span></h2>
                            <p>
                                <span class="korean_text">
                                    2존 클리마트로닉 자동 에어컨은 바람 세기 조절을 통해 자동 공기 재순환 기능과 함께 
                                    운전석, 동승석의 온도와 히팅 및 통풍 기능을 독립적으로 설정할 수 있어 쾌적한 탑승자 모두 
                                    쾌적한 드라이빙을 즐길 수 있어 탑승자 모두에게 쾌적한 드라이빙을 제공합니다.
                                </span>
                            </p>
                        </div>
                        <li class="no_ml tab_content_00 tabImg"><img src="/resources/images/subPage/jetta/sec2_1.jpg" alt="features_img"></li>
                        <li class="no_ml tab_content_01 tabImg"><img src="/resources/images/subPage/jetta/sec2_2.jpg" alt="features_img"></li>
                        <li class="no_ml tab_content_02 tabImg"><img src="/resources/images/subPage/jetta/sec2_3.jpg" alt="features_img"></li>
                        <li class="no_ml tab_content_03 tabImg"><img src="/resources/images/subPage/jetta/sec2_4.jpg" alt="features_img"></li>
                        <li class="no_ml tab_content_04 tabImg"><img src="/resources/images/subPage/jetta/sec2_5.jpg" alt="features_img"></li>
                        <li class="no_ml tab_content_05 tabImg"><img src="/resources/images/subPage/jetta/sec2_6.jpg" alt="features_img"></li>
                        <li class="no_ml tab_content_06 tabImg"><img src="/resources/images/subPage/jetta/sec2_7.jpg" alt="features_img"></li>
                        <li class="no_ml tab_content_07 tabImg"><img src="/resources/images/subPage/jetta/sec2_8.jpg" alt="features_img"></li>
                    </li>
                </ul>
            </section>
            <!-- /Vehicle_features -->
            <!-- Comfort and Convenience -->
            <section class="collapsible_section">
                <h2>Comfort and Convenience</h2>
                <div class="feature">
                    <h3><img class="convenienceImg" src="/resources/images/subPage/jetta/sec3_1.jpg" alt="comfort convenience_img"></h3>
                    <h3><img class="convenienceImg" src="/resources/images/subPage/jetta/sec3_2.jpg" alt="comfort convenience_img"></h3>
                    <h3><img class="convenienceImg" src="/resources/images/subPage/jetta/sec3_3.jpg" alt="comfort convenience_img"></h3>
                    <h3><img class="convenienceImg" src="/resources/images/subPage/jetta/sec3_4.jpg" alt="comfort convenience_img"></h3>
                    <ul class="comfort">
                        <li>
                            <span class="korean_text">디지털 콕핏</span>
                            <div>
                                <h4>Digital cockpit</h4>
                                <p>
                                    <span class="korean_text">
                                        디지털 계기판인 디지털 콕핏은 주행 정보, 연료 상태 외에도 원하는 정보를 맞춤 구성하여 
                                        다양한 정보를 원하는 대로 표시할 수 있습니다. 
                                        (Premium: 8인치 / Prestige: 10.25인치 디지털 콕핏 프로)
                                    </span>
                                </p>
                            </div>
                        </li>
                        <li>
                            <span class="korean_text">MIB3 디스커버 미디어 인포테인먼트 시스템</span>
                            <div>
                                <h4>MIB3 Discover media infortainment system</h4>
                                <p>
                                    <span class="korean_text">
                                        8인치 멀티 컬러 터치스크린 디스플레이의 인포테인먼트 시스템은 음성인식 기능과 
                                        근접센서 및 제스처 컨트롤 기능이 탑재되어 있어 다양한 정보와 기능을 편리하게 
                                        조작할 수 있습니다. (Prestige 내비게이션 적용)
                                    </span>
                                </p>
                            </div>
                        </li>
                        <li>
                            <span class="korean_text">모바일폰 무선 충전 및 블루투스 핸즈프리</span>
                            <div>
                                <h4>Mobile phone wireless charger & Bluetooth handsfree</h4>
                                <p>
                                    <span class="korean_text">
                                        블루투스 핸즈프리 기능을 통해 운전 중 편안한 통화가 가능해집니다. 
                                        블루투스 핸즈프리 시스템은 멀티펑션 스티어링휠 또는 인포테인먼트 시스템의 
                                        터치스크린을 통해 편리하게 이용 가능합니다. 또한 센터콘솔에 위치한 
                                        무선 충전기능이 특히 실용성을 더합니다.
                                    </span>
                                </p>
                            </div>
                        </li>
                        <li>
                            <span class="korean_text">무선 앱 커넥트</span>
                            <div>
                                <h4>App-connect</h4>
                                <p>
                                    <span class="korean_text">
                                        App-connect 기능(애플 카플레이 / 안드로이드 오토) 으로 모바일폰을 제타와 
                                        연결할 수 있어 다양한 기능을 편리하게 이용 가능합니다.
                                    </span>
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>
            </section>
            <!-- /Convenience -->
            <!-- IQ Drive -->
            <section class="collapsible_section">
                <h2>IQ<span class="special_text">.</span> DRIVE</h2>
                <div class="feature">
                    <h3><img class="driveImg" src="/resources/images/subPage/jetta/sec4_1.jpg" alt="IQ drive_img"></h3>
                    <h3><img class="driveImg" src="/resources/images/subPage/jetta/sec4_2.jpg" alt="IQ drive_img"></h3>
                    <h3><img class="driveImg" src="/resources/images/subPage/jetta/sec4_3.jpg" alt="IQ drive_img"></h3>
                    <h3><img class="driveImg" src="/resources/images/subPage/jetta/sec4_4.jpg" alt="IQ drive_img"></h3>
                    <ul class="iq">
                        <li>
                            <span class="korean_text">트래블 어시스트(~210km/h)</span>
                            <div>
                                <h4>Travel assist(~210km/h)</h4>
                                <p>
                                    <span class="korean_text">
                                        고속도로와 잘 정비된 국도에서 트래블 어시스트는 앞차와의 거리를 고려하여 
                                        운전자가 지정한 속도와 차로를 유지하는데 도움을 줍니다. 특히, 교통 지체 또는 
                                        정체 시에 편안한 주행을 도와주어 그 진가를 드러냅니다.
                                    </span>
                                </p>
                            </div>
                        </li>
                        <li>
                            <span class="korean_text">어탭티브 크루즈 컨트롤(~210km/h)</span>
                            <div>
                                <h4>Adaptive cruise control(~210km/h)</h4>
                                <p>
                                    <span class="korean_text">
                                        어댑티브 크루즈 컨트롤은 전방 차량과 차간거리 및 운전자의 설정 속도를 유지하여 
                                        주행을 도와주는 스마트한 주행보조 시스템입니다.
                                    </span>
                                </p>
                            </div>
                        </li>
                        <li>
                            <span class="korean_text">프론트 어시스트 및 보행자 모니터링 시스템</span>
                            <div>
                                <h4>Front assist & Pedestrian monitoring system</h4>
                                <p>
                                    <span class="korean_text">
                                        전방 카메라 및 레이더 센서를 통해 도로 주변의 보행자를 감지하고 
                                        충돌이 예상되는 경우 시청각적인 경고와 제동 보조 혹은 긴급 제동을 통해 
                                        사고 발생 가능성 혹은 사고의 심각성을 경감시켜주는 기능입니다.
                                    </span>
                                </p>
                            </div>
                        </li>
                        <li>
                            <span class="korean_text">레인 어시스트</span>
                            <div>
                                <h4>Lane assist</h4>
                                <p>
                                    <span class="korean_text">
                                        레인 어시스트는 차량의 차선 이탈을 방지하는데 도움을 주는 차선 유지 시스템입니다. 
                                        차량이 차선을 이탈 하는 움직임이 감지되면, 운전자에게 즉각 경고를 보내고 스티어링 
                                        보조를 통해 보다 안전하고 편안한 주행을 돕습니다.
                                    </span>
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>
            </section>
            <!-- /IQ Drive -->
            <!-- Gallery -->
            <section class="gallery_section">
                <h2>Gallery</h2>
                <img src="/resources/images/subPage/jetta/sec5_1.jpg" alt="gallery_main_img" class="gallery_main_img">
                <!-- Swiper -->
                <div class="swiper-container">
                    <ul class="gallery cf swiper-wrapper">
                        <li class="swiper-slide"><img src="/resources/images/subPage/jetta/sec5_1.jpg" alt="gallery_sub_img01" class="gallery_sub_img"></li>
                        <li class="swiper-slide"><img src="/resources/images/subPage/jetta/sec5_2.jpg" alt="gallery_sub_img02" class="gallery_sub_img"></li>
                        <li class="swiper-slide"><img src="/resources/images/subPage/jetta/sec5_3.jpg" alt="gallery_sub_img03" class="gallery_sub_img"></li>
                    </ul>
                    <!-- Add Navigation -->
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
                <!-- /Swiper -->
                <button><a href="#" target="_blank"><span class="korean_text">자세히보기</span></a></button>
            </section>
            <!-- /Gallery -->
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
<script src="/resources/js/sub_page_a.js"></script>
<script src="/resources/js/aside_v2.js"></script>
</body>
</html>
