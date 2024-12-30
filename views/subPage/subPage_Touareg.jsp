<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Touareg | Models | Volkswagen</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- 파비콘(fav) PC -->
    <link rel="shortcut icon" href="/resources/images/header/logo1_withDog2_withoutTxt.png">
    <!-- 파비콘(fav) Moblie -->
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
                <img src="/resources/images/subPage/touareg/slider1.png" alt="slide_img">
            </h2>
            <ul class="w1600">
                <li>
                    <h3>The new Touareg</h3>
                </li>
                <li class="article_btn">
                    <button class="download"><a href="/resources/pdf/Touareg.pdf" download><span class="korean_text">리플렛 다운로드</span></a></button>
                    <button class="more"><a href="/contents_touareg/index/" target="_blank"><span class="korean_text">자세히보기</span></a></button>
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
                    <span>Your shining moment starts</span><br>
                    The new Touareg
                </h2>
                <video controls controlslist="nodownload" preload="metadata" poster="/resources/images/subPage/touareg/sec1_videoThumbnail.png" src="/resources/videos/subPage/touareg/sec1_mainVideo.mp4"></video>
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
                            <span class="dot">9</span>
                            <span class="dot">10</span>
                            <a class="next" onclick="plusTab(1);"><i class="fa fa-angle-double-right"></i></a>
                        </aside>
                        <!-- /Vehicle_features_btn -->
                        <div class="tab tab_content_00">
                            <h2>Exterior</h2>
                            <p>
                                <span class="korean_text">
                                    완전히 새롭게 변화된 신형 투아렉의 외관 디자인은 폭스바겐의 
                                    플래그십 SUV 로서 역동적인 카리스마 디자인을 완성합니다. 
                                    새롭게 업그레이드된 프론트 LED 라이트 스트립과 
                                    라디에이터그릴 그리고 브랜드 최초로 ‘3 Eyes’ 디자인을 
                                    적용한 IQ.라이트 HD 매트릭스 헤드라이트 까지 투아렉만의 
                                    시그니처 프론트 디자인을 보여줍니다.
                                </span>
                            </p>
                        </div>
                        <div class="tab tab_content_01">
                            <h2>IQ.<span class="korean_text">라이트 HD 매트릭스 헤드램프</span></h2>
                            <p>
                                <span class="korean_text">
                                    총 38,000개의 이상의 인터랙티브 LED가 생성하는  밝은 조명은 
                                    도로 위 타 운전자에게 영향을 주지 않고  더욱 넓은 범위를 
                                    밝혀주며, 특히 커밍홈/리빙홈 애니메이션 등의 새로운 기능이 
                                    추가되었습니다.
                                </span>
                            </p>
                        </div>
                        <div class="tab tab_content_02">
                            <h2>Alloy wheels</h2>
                            <p>
                                ‘Leeds’ Black, diamond-turned surface 9.5J x 21” 
                                (R-Line 적용)
                            </p>
                        </div>
                        <div class="tab tab_content_03">
                            <h2><span class="korean_text">소프트 도어 클로징</span></h2>
                            <p>
                                <span class="korean_text">
                                    소프트 도어 클로징은 자동차의 문을 가볍게 닫으면 자동으로 
                                    부드럽게 완전히 닫히도록 하는 기능으로 사용자에게 편리함을 
                                    제공하는 고급 기능입니다.
                                </span>
                            </p>
                        </div>
                        <div class="tab tab_content_04">
                            <h2>LED <span class="korean_text">리어 컴비네이션 램프</span></h2>
                            <p>
                                <span class="korean_text">
                                    테일게이트를 수평으로 길게 연결하는 LED 라인과  6개의 “L”자형 
                                    LED가 결합된 새로운 디자인의 LED 리어 컴비네이션 램프는 
                                    새로운 투아렉의 존재감을 부각시켜 줍니다.
                                </span>
                            </p>
                        </div>
                        <div class="tab tab_content_05">
                            <h2>Interior</h2>
                            <p>
                                <span class="korean_text">
                                    디지털화된 첨단 기술에 안락함을 더한 실내 인테리어로 더욱 
                                    프리미엄해진 편의 사양과 안락한 승차감을 운전자에게 선사합니다. 
                                    새로 탑재된 덴마크 프리미엄 오디오 다인오디오 사운드 시스템과 
                                    12인치 디지털 콕핏과 15인치 인포테인먼트 시스템, 헤드업 
                                    디스플레이로 구성된 이노비전 콕핏은 기능적인 측면뿐 아니라 
                                    디자인과 성능에서도 투아렉만의 존재감을 더욱 부각 시켜줍니다.
                                </span>
                            </p>
                        </div>
                        <div class="tab tab_content_06">
                            <h2><span class="korean_text">드라이빙 프로파일 셀렉션</span></h2>
                            <p>
                                <span class="korean_text">
                                    센터 콘솔 좌측에 위치한 드라이빙 프로파일 셀렉션 스위치 또는 
                                    인포테인먼트 내 드라이빙 모드 셀렉션 화면에서 오프로드 모드를 
                                    포함한 총 7개의 주행상황에 맞는 최적의 드라이빙 모드 설정이 
                                    가능합니다. 선택한  모드에 따라 엔진과 변속기 및 지정된 
                                    보조시스템 세팅이 최적화됩니다.
                                </span>
                            </p>
                        </div>
                        <div class="tab tab_content_07">
                            <h2>Seat</h2>
                            <p>
                                Puglia Leather Seat  Panthera Black (R-Line 적용)
                            </p>
                        </div>
                        <div class="tab tab_content_08">
                            <h2><span class="korean_text">이노비전 콕핏</span></h2>
                            <p>
                                <span class="korean_text">
                                    12인치 디지털 콕핏과 15인치 MIB3 디스커버 프로 맥스 
                                    인포테인먼트 시스템 그리고 헤드업 디스플레이로 구성된 
                                    이노비전 콕핏은 운전자 중심의 유려한 디자인을 자랑합니다. 
                                    특히, MIB3 인포테인먼트 시스템은 한국형 내비게이션, 
                                    제스처 컨트롤, 보이스 컨트롤 등을 통해 운전자가 다양한 
                                    기능을 편리하게 조작할 수 있도록 도와줍니다.
                                </span>
                            </p>
                        </div>
                        <div class="tab tab_content_09">
                            <h2><span class="korean_text">모바일폰 무선 충전, 블루투스 핸즈프리 및 무선</span> App-Connect</h2>
                            <p>
                                <span class="korean_text">
                                    블루투스 핸즈프리 기능을 통해 운전 중 편안한 통화가 
                                    가능해집니다. 또한 무선 App-Connect 기능을 통해 애플 카플레이 
                                    및 안드로이드 오토 기능을 편리하게 이용 가능하며 센터 콘솔에 
                                    위치한 무선 충전기능은  운전자의 편의성을 더욱 향상 시켜 줍니다.
                                </span>
                            </p>
                        </div>
                        <li class="no_ml tab_content_00 tabImg"><img src="/resources/images/subPage/touareg/sec2_1.png" alt="features_img"></li>
                        <li class="no_ml tab_content_01 tabImg"><img src="/resources/images/subPage/touareg/sec2_2.png" alt="features_img"></li>
                        <li class="no_ml tab_content_02 tabImg"><img src="/resources/images/subPage/touareg/sec2_3.png" alt="features_img"></li>
                        <li class="no_ml tab_content_03 tabImg"><img src="/resources/images/subPage/touareg/sec2_4.png" alt="features_img"></li>
                        <li class="no_ml tab_content_04 tabImg"><img src="/resources/images/subPage/touareg/sec2_5.png" alt="features_img"></li>
                        <li class="no_ml tab_content_05 tabImg"><img src="/resources/images/subPage/touareg/sec2_6.webp" alt="features_img"></li>
                        <li class="no_ml tab_content_06 tabImg"><img src="/resources/images/subPage/touareg/sec2_7.webp" alt="features_img"></li>
                        <li class="no_ml tab_content_07 tabImg"><img src="/resources/images/subPage/touareg/sec2_8.png" alt="features_img"></li>
                        <li class="no_ml tab_content_08 tabImg"><img src="/resources/images/subPage/touareg/sec2_9.webp" alt="features_img"></li>
                        <li class="no_ml tab_content_09 tabImg"><img src="/resources/images/subPage/touareg/sec2_10.webp" alt="features_img"></li>
                    </li>
                </ul>
            </section>
            <!-- /Vehicle_features -->
            <!-- Comfort and Convenience -->
            <section class="collapsible_section">
                <h2>Comfort and Convenience</h2>
                <div class="feature">
                    <h3><img class="convenienceImg" src="/resources/images/subPage/touareg/sec3_1display.jpg" alt="comfort convenience_img"></h3>
                    <h3><img class="convenienceImg" src="/resources/images/subPage/touareg/sec3_2assist.png" alt="comfort convenience_img"></h3>
                    <h3><img class="convenienceImg" src="/resources/images/subPage/touareg/sec3_3suspension.jpg" alt="comfort convenience_img"></h3>
                    <h3><img class="convenienceImg" src="/resources/images/subPage/touareg/sec3_4sensor.png" alt="comfort convenience_img"></h3>
                    <h3><img class="convenienceImg" src="/resources/images/subPage/touareg/sec3_5seat.jpg" alt="comfort convenience_img"></h3>
                    <h3><img class="convenienceImg" src="/resources/images/subPage/touareg/sec3_6projection.png" alt="comfort convenience_img"></h3>
                    <h3><img class="convenienceImg" src="/resources/images/subPage/touareg/sec3_7soundSystem.png" alt="comfort convenience_img"></h3>
                    <ul class="comfort">
                        <li>
                            <span class="korean_text">헤드업 디스플레이</span>
                            <div>
                                <h4>Head up display</h4>
                                <p>
                                    <span class="korean_text">
                                        차량 속도, 내비게이션 및 운전자 주행 보조 시스템 등의 주행 정보가 
                                        전면에 명확하게 표시되므로, 운전자가 시선을 돌리지 않고 
                                        집중해서 운전할 수 있도록 도와 줍니다.
                                    </span>
                                </p>
                            </div>
                        </li>
                        <li>
                            <span class="korean_text">파크 어시스트 플러스</span>
                            <div>
                                <h4>Park assist plus</h4>
                                <p>
                                    <span class="korean_text">
                                        파크 어시스트 플러스는 주차 상황에서 스티어링, 
                                        기어 변속, 가속 페달과 브레이크 조절이 모두 자동으로 
                                        진행 되는 스마트한 주차보조 시스템입니다.
                                    </span>
                                </p>
                            </div>
                        </li>
                        <li>
                            <span class="korean_text">에어 서스펜션</span>
                            <div>
                                <h4>Air suspension</h4>
                                <p>
                                    <span class="korean_text">
                                        센터 콘솔 우측에 위치한 에어 서스펜션 로터리 스위치로 
                                        차체의 높낮이를 최저 -40mm부터 최대 70mm 까지 조절이 
                                        가능하며 주행 모드 별 최적화된 차체 높낮이 와 댐핑압 및 
                                        서스펜션 상태 조절을 통해 온 <span class="special_text">&</span> 오프 로드를 아우르는 
                                        편안한 승차감을 제공합니다.
                                    </span>
                                </p>
                            </div>
                        </li>
                        <li>
                            <span class="korean_text">루프 로드 센서</span>
                            <div>
                                <h4>Roof load sensor</h4>
                                <p>
                                    <span class="korean_text">
                                        차체 무게 중심에 큰 영향을 주는 루프박스의 장착 정보가 
                                        루프 로드 센서를 통해 감지되고, 감지된 정보는 투아렉의 
                                        차체 제어 시스템 및 첨단 구동장치와 조합 되어 차량의 주행 
                                        안정성을 향상시켜주고 동시에 더욱 다이내믹한 퍼포먼스를 
                                        발휘할 수 있게 도와줍니다.
                                    </span>
                                </p>
                            </div>
                        </li>
                        <li>
                            <span class="korean_text">18 Way 에르고 컴포트 시트</span>
                            <div>
                                <h4>18 Way Ergo comfort seat</h4>
                                <p>
                                    <span class="korean_text">
                                        공압식 럼버 서포트, 전동식 허벅지 지지대 및 공압식 사이드 
                                        볼스터(쿠션 및 등받이), 메모리 및 컨비니언스 엔트리, 열선 
                                        및 통풍, 그리고 8개 모드의 마사지 기능이 추가되어 운전자에게 
                                        편안하고 여유로운 주행을 제공 합니다.
                                    </span>
                                </p>
                            </div>
                        </li>
                        <li>
                            <span class="korean_text">사이드 미러 로고 프로젝션</span>
                            <div>
                                <h4>Side mirror logo projection</h4>
                                <p>
                                    <span class="korean_text">
                                        투아렉은 어두운 곳에서 더욱 빛을 발합니다. 안전한 탑승을 
                                        위해 바닥에 투사되는 전용 로고가 운전자를 반갑게 맞이합니다.
                                    </span>
                                </p>
                            </div>
                        </li>
                        <li>
                            <span class="korean_text">DYNAUDIO Consequence 사운드 시스템</span>
                            <div>
                                <h4>DYNAUDIO Consequence sound system</h4>
                                <p>
                                    <span class="korean_text">
                                        7.1 돌비 서라운드 사운드, 12+1 스피커, 서브 우퍼, 
                                        16채널 앰프로 730W의 출력을 제공하는 다인오디오 컨시퀀스 
                                        사운드 시스템은 차 안을 웅장한 콘서트 홀로 만들어줍니다.
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
                    <h3><img class="driveImg" src="/resources/images/subPage/touareg/sec4_1steering.png" alt="IQ drive_img"></h3>
                    <h3><img class="driveImg" src="/resources/images/subPage/touareg/sec4_2assist.png" alt="IQ drive_img"></h3>
                    <h3><img class="driveImg" src="/resources/images/subPage/touareg/sec4_3cruiseControl.png" alt="IQ drive_img"></h3>
                    <h3><img class="driveImg" src="/resources/images/subPage/touareg/sec4_4trafficAssist.png" alt="IQ drive_img"></h3>
                    <h3><img class="driveImg" src="/resources/images/subPage/touareg/sec4_5frontAssist.png" alt="IQ drive_img"></h3>
                    <ul class="iq">
                        <li>
                            <span class="korean_text">올 휠 스티어링</span>
                            <div>
                                <h4>All-wheel steering</h4>
                                <p>
                                    <span class="korean_text">
                                        올 휠 스티어링 시스템을 통해 시속 37km 이하에서는 앞바퀴와 
                                        뒷바퀴가 반대 방향으로 회전하여 좁은 길에서의 코너링이나 
                                        유턴이 더욱 쉬워지고 시속 37km 이상에서는 앞바퀴와 뒷바퀴가 
                                        같은 방향으로 회전하여 주행 안정성이 강화 되었습니다.
                                    </span>
                                </p>
                            </div>
                        </li>
                        <li>
                            <span class="korean_text">트래블 어시스트</span>
                            <div>
                                <h4>Travel assist</h4>
                                <p>
                                    <span class="korean_text">
                                        고속도로와 잘 정비된 국도에서 트래블 어시스트는 앞차와의 
                                        거리를 고려하여 운전자가 지정한 속도와 차로를 유지하는데 
                                        도움을 줍니다. 특히, 교통 지체 또는 정체 시에 편안한 주행을 
                                        도와주어 그 진가를 드러냅니다.
                                    </span> (0~250km/h)
                                </p>
                            </div>
                        </li>
                        <li>
                            <span class="korean_text">어댑티브 크루즈 컨트롤</span>
                            <div>
                                <h4>Adaptive cruise control</h4>
                                <p>
                                    <span class="korean_text">
                                        어댑티브 크루즈 컨트롤은 운전자가 설정한 전방 차량과 
                                        차간거리 및 설정 속도를 유지하여 주행을 도와주는 스마트한 
                                        주행보조 시스템입니다.
                                    </span> (0~250km/h)
                                </p>
                            </div>
                        </li>
                        <li>
                            <span class="korean_text">전방 크로스 트래픽 어시스트</span>
                            <div>
                                <h4>Front cross traffic assist</h4>
                                <p>
                                    <span class="korean_text">
                                        전방 크로스 트래픽 어시스트는 예측이 어려운 터널의 출구나 
                                        교차로에서 매우 유용합니다. 차량 전방 레이더 센서를 통해 
                                        차량 앞부분을 모니터링하고 측면에서 접근하는 차량이나 
                                        보행자를 감지합니다. 이 시스템은 교차로 진입 시 좌우 
                                        사각지대로 인해 발생하는 위험을 감지 하여 긴급 정지 또는 
                                        경고를 통해 사고 예방에 도움을 줍니다.
                                    </span>
                                </p>
                            </div>
                        </li>
                        <li>
                            <span class="korean_text">전방추돌경고 및 긴급제동 프론트 어시스트</span>
                            <div>
                                <h4>Forward collision warning <span class="special_text">&</span> front assist</h4>
                                <p>
                                    <span class="korean_text">
                                        전방 카메라 및 레이더 센서를 통해 도로 주변의 보행 자를 
                                        감지하고 충돌이 예상되는 경우 시청각적인 경고와 제동 보조 
                                        혹은 긴급 제동을 통해 사고 발생 가능성 혹은 사고의 
                                        심각성을 경감시켜주는 기능입니다.
                                    </span>
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>
            </section>
            <!-- /IQ Drive -->
            <!-- Video -->
            <section class="video_t w1600">
                <video controls="" controlslist="nodownload" preload="metadata" poster="/resources/images/subPage/touareg/sec5_videoThumbnail.png" src="/resources/videos/subPage/touareg/sec5_touareg.mp4"></video>
            </section>
            <!-- /Video -->
            <!-- Gallery -->
            <section class="gallery_section">
                <h2>Gallery</h2>
                <img src="/resources/images/subPage/touareg/sec6_1.webp" alt="gallery_main_img" class="gallery_main_img">
                <!-- Swiper -->
                <div class="swiper-container">
                    <ul class="gallery cf swiper-wrapper">
                        <li class="swiper-slide"><img src="/resources/images/subPage/touareg/sec6_1.webp" alt="gallery_sub_img01" class="gallery_sub_img"></li>
                        <li class="swiper-slide"><img src="/resources/images/subPage/touareg/sec6_2.png" alt="gallery_sub_img02" class="gallery_sub_img"></li>
                        <li class="swiper-slide"><img src="/resources/images/subPage/touareg/sec6_3.png" alt="gallery_sub_img03" class="gallery_sub_img"></li>
                        <li class="swiper-slide"><img src="/resources/images/subPage/touareg/sec6_4.png" alt="gallery_sub_img04" class="gallery_sub_img"></li>
                        <li class="swiper-slide"><img src="/resources/images/subPage/touareg/sec6_5.png" alt="gallery_sub_img05" class="gallery_sub_img"></li>
                    </ul>
                    <!-- Add Navigation -->
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
                <!-- /Swiper -->
                <button><a href="/contents_touareg/index" target="_blank"><span class="korean_text">자세히보기</span></a></button>
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
<!-- Page JS -->
<script src="/resources/js/sub_page_a.js"></script>
<script src="/resources/js/aside_v2.js"></script>
</body>
</html>
