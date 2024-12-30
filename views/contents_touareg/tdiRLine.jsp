<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>투아렉 만들기 3.0 TDI R-Line</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- 파비콘(fav) PC -->
    <link rel="shortcut icon" href="/resources/images/header/logo1_withDog2_withoutTxt.png">
    <!-- 파비콘(fav) Moblie -->
    <link rel="apple-touch-icon=precomposed" href="/resources/images/header/logo1_withDog2_withoutTxt.png">
    <!-- Reset CSS -->
    <link rel="stylesheet" href="/resources/css/reset.css">
    <!-- Page CSS -->
    <link rel="stylesheet" href="/resources/css/header.css">
    <link rel="stylesheet" href="/resources/css/contents_touareg.css">
    <link rel="stylesheet" href="/resources/css/footer.css">
    <link rel="stylesheet" href="/resources/css/aside.css">
    <!-- 추가 CSS -->
    <link rel="stylesheet" href="/resources/css/contents_touareg_new.css">
    <link rel="stylesheet" href="/resources/css/touareg.css">
    <!-- PlugIn JS -->
    <script src="./js/prefixfree.min.js"></script>
    <script src="./js/jquery-1.12.4.min.js"></script>
    <script src="./js/jquery-3.3.1.min.js"></script>
</head>
<body>
    <div id="wrap">
        <!-- Header --> 
        <header>
            <%@include file="../includes/header.jsp" %>
        </header>
        <!-- /Header -->
        <!-- Aarticle -->
        <article></article>
        <!-- /Aarticle -->
        <!-- Contents -->
        <main class="w1600">
            <!-- HeadLine -->
            <section class="headLine_section">
                <h2>The new Touareg</h2>
            </section>
            <!-- /HeadLine -->
            <!-- Aside -->
            <aside class="Aside_section cf">
                <ul>
                    <li class="no_mr no_ml"><a class="prev" onclick="plusSlides(-1);"><img src="/resources/images/contents_touareg/left.png" alt="왼쪽"></a></li>
                    <div class="slides">
                        <li><img class="size" onclick="menu(0);" src="/resources/images/contents_touareg/R-LineTouaregBlueCrystal 1.jpg" alt="차1"></li>
                        <li><img class="size" onclick="menu(1);" src="/resources/images/contents_touareg/R-LineTouaregBlueCrystal 2.png" alt="차2"></li>
                        <li><img class="size" onclick="menu(2);" src="/resources/images/contents_touareg/R-LineTouaregBlueCrystal 3.png" alt="차3"></li>
                        <li><img class="size" onclick="menu(3);" src="/resources/images/contents_touareg/R-LineTouaregBlueCrystal 4.png" alt="차4"></li>
                        <li><img class="size" onclick="menu(4);" src="/resources/images/contents_touareg/R-LineTouaregBlueCrystal 5.jpg" alt="차5"></li>
                        <li><img class="size" onclick="menu(5);" src="/resources/images/contents_touareg/R-LineTouaregBlueCrystal 6.png" alt="차6"></li>
                        <li><img class="size" onclick="menu(6);" src="/resources/images/contents_touareg/R-LineTouaregBlueCrystal 7.png" alt="차7"></li>
                    </div>
                    <li class="no_mr no_ml"><a class="next" onclick="plusSlides(1);"><img src="/resources/images/contents_touareg/right.png" alt="오른쪽"></a></li>
                </ul>
            </aside>
            <!-- /Aside -->
            <!-- Design -->
            <section class="design_section w1300">
                <ul class="design cf">
                    <li>
                        <h2>&nbsp;Trim<br><br></h2>
                        <span class="trim"><img src="/resources/images/contents_touareg/check.png" alt="check_box01"></span>
                        <div class="section trim_section">
                            <h4>Choose your Trim</h4>
                            <ul>
                                <li class="no_mr no_mt"><a href="/contents_touareg/tdiPrestige"><img src="/resources/images/contents_touareg/mainPrestige.png" alt="3.0 TDI Prestige">&nbsp;<span class="special_text">3.0</span> TDI Prestige</a></li>
                                <li class="no_mr"><img src="/resources/images/contents_touareg/mainR-Line.png" alt="3.0 TDI R-Line">&nbsp;<span class="special_text">3.0</span>TDI R<span class="special_text">-</span>Line</li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <h2>&nbsp;Color<br><br></h2>
                        <span class="color"><img src="/resources/images/contents_touareg/button.png" alt="check_box02"></span>
                        <div class="section color_section">
                            <h4>Choose your Color</h4>
                            <ul>
                                <li class="no_mr no_mt"><img src="/resources/images/contents_touareg/R-LineColor 1.png" alt="멜로 블루 크리스탈 이펙트">&nbsp;&nbsp;&nbsp;<span class="korean_text">멜로 블루 크리스탈 이펙트</span></li>
                                <li class="no_mr"><img src="/resources/images/contents_touareg/R-LineColor2.png" alt="오릭스 화이트 마더 오브 펄 이펙트"></a>&nbsp;&nbsp;&nbsp;<span class="korean_text">오릭스 화이트 마더 오브 펄 이펙트</span></li>
                                <li class="no_mr"><img src="/resources/images/contents_touareg/R-LineColor3.png" alt="그레나딜라 블랙 메탈릭"></a>&nbsp;&nbsp;&nbsp;<span class="korean_text">그레나딜라 블랙 메탈릭</span></li>
                                <li class="no_mr"><img src="/resources/images/contents_touareg/R-LineColor4.png" alt="실리콘 그레이 메탈릭"></a>&nbsp;&nbsp;&nbsp;<span class="korean_text">실리콘 그레이 메탈릭</span></li>
                                <li class="no_mr"><img src="/resources/images/contents_touareg/R-LineColor5.png" alt="오이스터 실버 메탈릭"></a>&nbsp;&nbsp;&nbsp;<span class="korean_text">오이스터 실버 메탈릭</span></li>    
                            </ul>
                        </div>
                    </li>
                    <li>
                        <h2>&nbsp;Wheel<br><br></h2>
                        <span class="wheel"><img src="/resources/images/contents_touareg/button.png" alt="check_box03"></span>
                        <div class="section wheel_section">
                            <h4>Choose your Wheel</h4>
                            <ul>
                                <li class="no_mr no_mt"><img src="/resources/images/contents_touareg/R-LineWheel.png" alt="휠">&nbsp;&nbsp;&nbsp;<span class="korean_text">니즈 블랙</span> <span class="special_text">9.5</span>J X <span class="special_text">21"</span></li>
                            </ul>
                        </div>
                    </li>
                    <li class="no_mr">
                        <h2>&nbsp;Seat<br><br></h2>
                        <span class="seat"><img src="/resources/images/contents_touareg/button.png" alt="check_box04"></span>
                        <div class="section seat_section">
                            <h4>Choose your Seat</h4>
                            <img src="/resources/images/contents_touareg/R-LineSeat.jpg" alt="시트">
                            <ul>
                                <li class="no_mr no_mt"><img src="/resources/images/contents_touareg/R-LineSeat1.jpg" alt="시트">&nbsp;&nbsp;&nbsp;<span class="korean_text">풀리아 가죽 시트 판테라 블랙</span></li>
                            </ul>
                        </div>
                    </li>
                </ul>
                <div class="design_main_img00">
                    <img src="/resources/images/contents_touareg/R-LineTouaregBlueCrystal 1.jpg" alt="design_main_img">
                </div>
                <div class="design_main_img01">
                    <img src="/resources/images/contents_touareg/R-LineTouaregBlueCrystal 2.png" alt="design_main_img">
                </div>
                <div class="design_main_img02">
                    <img src="/resources/images/contents_touareg/R-LineTouaregBlueCrystal 3.png" alt="design_main_img">
                </div>
                <div class="design_main_img03">
                    <img src="/resources/images/contents_touareg/R-LineTouaregBlueCrystal 4.png" alt="design_main_img">
                </div>
                <div class="design_main_img04">
                    <img src="/resources/images/contents_touareg/R-LineTouaregBlueCrystal 5.jpg" alt="design_main_img">
                </div>
                <div class="design_main_img05">
                    <img src="/resources/images/contents_touareg/R-LineTouaregBlueCrystal 6.png" alt="design_main_img">
                </div>
                <div class="design_main_img06">
                    <img src="/resources/images/contents_touareg/R-LineTouaregBlueCrystal 7.png" alt="design_main_img">
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
                        <img src="/resources/images/contents_touareg/mainR-Line.png" alt="">
                        <p><span class="special_text">3.0</span> TDI R<span class="special_text">-</span>Line</p>
                        <input type="hidden" name="car_name" value="Touareg 3.0 TDI R-Line" />
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
                    <h3><span class="korean_text">차량가격</span>&nbsp;&nbsp;<span class="special_text">106,990,000</span><span class="korean_text">원</span></h3>
                    <input type="hidden" value="106,990,000" name="car_price" />
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
<script src="/resources/js/3.0 TDI R-Line.js"></script>
<script src="/resources/js/aside.js"></script>
<script>
function Payment() {
	if(${empty loginUser} ){
		if(confirm('로그인 해주세요')){
			location.href='#';
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
