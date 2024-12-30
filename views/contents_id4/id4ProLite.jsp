<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>나만의 ID.4 만들기 Lite</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- 파비콘(fav) PC -->
    <link rel="shortcut icon" href="/resources/images/header/logo1_withDog2_withoutTxt.png">
    <!-- 파비콘(fav) Moblie -->
    <link rel="apple-touch-icon=precomposed" href="/resources/images/header/logo1_withDog2_withoutTxt.png">
    <!-- Reset CSS -->
    <link rel="stylesheet" href="/resources/css/reset.css">
    <!-- Page CSS -->
    <link rel="stylesheet" href="/resources/css/header.css">
    <link rel="stylesheet" href="/resources/css/contents_id4.css">
    <link rel="stylesheet" href="/resources/css/contents_id4_new.css">
    <link rel="stylesheet" href="/resources/css/ID.4 Pro.css">
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
        <!-- Article -->
        <article></article>
        <!-- /Article -->
        <!-- Contents -->
        <main class="w1600">
            <!-- HeadLine -->
            <section class="headLine_section">
                <h2>ID<span class="special_text">.4</span></h2>
            </section>
            <!-- /HeadLine -->
            <!-- Aside -->
            <aside class="Aside_section cf">
                <ul>
                    <li class="no_mr no_ml"><a class="prev" onclick="plusSlides(-1);"><img src="/resources/images/contents_id4/left.png" alt="왼쪽"></a></li>
                    <div class="slides">
                        <li><img class="size" onclick="menu(0);" src="/resources/images/contents_id4/proLiteWhite1.png" alt="차1"></li>
                        <li><img class="size" onclick="menu(1);" src="/resources/images/contents_id4/proLiteWhite2.png" alt="차2"></li>
                        <li><img class="size" onclick="menu(2);" src="/resources/images/contents_id4/proLiteWhite3.png" alt="차3"></li>
                        <li><img class="size" onclick="menu(3);" src="/resources/images/contents_id4/proLiteWhite4.png" alt="차4"></li>
                        <li><img class="size" onclick="menu(4);" src="/resources/images/contents_id4/proLiteWhite5.png" alt="차5"></li>
                        <li><img class="size" onclick="menu(5);" src="/resources/images/contents_id4/proLiteWhite6.png" alt="차6"></li>
                        <li><img class="size" onclick="menu(6);" src="/resources/images/contents_id4/proLiteWhite7.png" alt="차7"></li>
                    </div>
                    <li class="no_mr no_ml"><a class="next" onclick="plusSlides(1);"><img src="/resources/images/contents_id4/right.png" alt="오른쪽"></a></li>
                </ul>
            </aside>
            <!-- /Aside -->
            <!-- Design -->
            <section class="design_section w1300">
                <ul class="design cf">
                    <li>
                        <h2>&nbsp;Trim<br><br></h2>
                        <span class="trim"><img src="/resources/images/contents_id4/check.png" alt="check_box01"></span>
                        <div class="section trim_section">
                            <h4>Choose your Trim</h4>
                            <ul>
                                <li class="no_mr no_mt"><a href="/contents_id4/id4Pro"><img src="/resources/images/contents_id4/mainPro.png" alt="ID.4 Pro">&nbsp;ID<span class="special_text">.4</span> Pro</a></li>
                                <li class="no_mr"><img src="/resources/images/contents_id4/mainProLite.png" alt="ID.4 Pro Lite">&nbsp;ID<span class="special_text">.4</span> Pro Lite</li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <h2>&nbsp;Color<br><br></h2>
                        <span class="color"><img src="/resources/images/contents_id4/button.png" alt="check_box02"></span>
                        <div class="section color_section">
                            <h4>Choose your Color</h4>
                            <ul>
                                <li class="no_mr no_mt"><img src="/resources/images/contents_id4/proLiteColor1.png" alt="글레이셔 화이트 메탈릭">&nbsp;&nbsp;&nbsp;<span class="korean_text">글레이셔 화이트 메탈릭</span></li>
                                <li class="no_mr"><img src="/resources/images/contents_id4/proLiteColor2.png" alt="그레나딜라 블랙 메탈릭">&nbsp;&nbsp;&nbsp;<span class="korean_text">그레나딜라 블랙 메탈릭</span></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <h2>&nbsp;Wheel<br><br></h2>
                        <span class="wheel"><img src="/resources/images/contents_id4/button.png" alt="check_box03"></span>
                        <div class="section wheel_section">
                            <h4>Choose your Wheel</h4>
                            <ul>
                                <li class="no_mr no_mt"><img src="/resources/images/contents_id4/proWheel.jpg" alt="휠">&nbsp;&nbsp;&nbsp;<span class="korean_text">드람멘</span> <span class="special_text">9</span>J x <span class="special_text">20”</span></li>
                            </ul>
                        </div>
                    </li>
                    <li class="no_mr">
                        <h2>&nbsp;Seat<br><br></h2>
                        <span class="seat"><img src="/resources/images/contents_id4/button.png" alt="check_box04"></span>
                        <div class="section seat_section">
                            <h4>Choose your Seat</h4>
                            <img src="/resources/images/contents_id4/proSeatImage.jpg" alt="시트">
                            <ul>
                                <li class="no_mr no_mt"><img src="/resources/images/contents_id4/proSeat.png" alt="시트">&nbsp;&nbsp;&nbsp;<span class="korean_text">블랙</span> <span class="special_text">+</span> <span class="korean_text">브라운 레더 시트</span></li>
                            </ul>
                        </div>
                    </li>
                </ul>
                <div class="design_main_img00">
                    <img src="/resources/images/contents_id4/proLiteWhite1.png" alt="design_main_img">
                </div>
                <div class="design_main_img01">
                    <img src="/resources/images/contents_id4/proLiteWhite2.png" alt="design_main_img">
                </div>
                <div class="design_main_img02">
                    <img src="/resources/images/contents_id4/proLiteWhite3.png" alt="design_main_img">
                </div>
                <div class="design_main_img03">
                    <img src="/resources/images/contents_id4/proLiteWhite4.png" alt="design_main_img">
                </div>
                <div class="design_main_img04">
                    <img src="/resources/images/contents_id4/proLiteWhite5.png" alt="design_main_img">
                </div>
                <div class="design_main_img05">
                    <img src="/resources/images/contents_id4/proLiteWhite6.png" alt="design_main_img">
                </div>
                <div class="design_main_img06">
                    <img src="/resources/images/contents_id4/proLiteWhite7.png" alt="design_main_img">
                </div>
            </section>
            <!-- /Design -->
            <!-- Customization Option -->
             <form onsubmit="Payment(); return false;" method="post" name="pay">
            <section class="customization_option_section w1300">
                <h2><span class="korean_text">나의 옵션 선택</span></h2>
                <ul class="customization_option">
                    <li class="trim_option">
                        <h3>Trim</h3><br><br>
                        <img src="/resources/images/contents_id4/mainProLite.png" alt="">
                        <input type="hidden" name="car_name" value="ID.4 Pro Lite" />
                        <p>ID<span class="special_text">.4</span> Pro Lite</p>
                    </li>
                    <li class="color_option">
                        <h3>Color</h3>
                        <p>
                        	옵션을 선택해 주세요
                        	<input type="hidden" name="car_color" value="" />
                        </p>
                    </li>
                    <li class="wheel_option">
                        <h3>Wheel</h3>
                        <p>
                        	옵션을 선택해 주세요
                        	 <input type="hidden" name="car_wheel" value="" />
                        </p>
                       </li>
                    <li class="seat_option">
                        <h3>Seat</h3>
                        <p>
                        	옵션을 선택해 주세요
                        	<input type="hidden" name="car_seat" value="" />
                        </p>
                    </li>
                </ul>
                <div>
                    <h3><span class="korean_text">차량가격</span>&nbsp;&nbsp;<span class="special_text">59,900,000</span><span class="korean_text">원</span></h3>
                    <input type="hidden" value="59,900,000" name="car_price" />
                    <button class="no_ml"><a href="#"><span class="korean_text">시승/상담 신청</span></a></button>
                    <button type="submit"><span class="korean_text">예약하기</span></button>
                </div>
            </section>
            </form>
            <!-- /Customization Option -->
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
<script src="/resources/js/ID.4 Pro Lite.js"></script>
<script src="/resources/js/aside.js"></script>
<script>
function Payment() {
	if(${empty loginUser} ){
		if(confirm('로그인 해주세요')){
			location.href='<%= request.getContextPath() %>/login.do';
			return;
		}
	}else if(${loginUser.grade eq "Admin"}){
		alert('관리자는 예약 불가');
	}else if(document.pay.car_color.value == ''){
		alert('색상을 선택해주세요.');
	}else if(document.pay.car_wheel.value == ''){
		alert('휠을 선택해주세요.');
	}else if(document.pay.car_seat.value == ''){
		alert('시트를 선택해주세요.');
	}else{
		var url = "<%= request.getContextPath()%>/reservationcarpay.do?car_name=" + document.pay.car_name.value + "&car_color="+ document.pay.car_color.value +"&car_wheel="+document.pay.car_wheel.value+"&car_seat="+document.pay.car_seat.value+"&car_price="+document.pay.car_price.value;
		window.open(url, "payment", "toolbar=no, menubar=no, scrollbars=no, resizable=no, width=500,height=600");
	}
}
</script>
</body>
</html>
