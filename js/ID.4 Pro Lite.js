// 슬라이드 인덱스 초기 변수값 설정 = 1
var slideIndex = 1;
// 실제 수동 슬라이드 동작 함수 호출
showSlide(slideIndex);


/* 슬라이드 좌우이미지 클릭시 EventListener | 인자값 -1,1 */
function plusSlides(num){
    showSlide(slideIndex += num)
}
function showSlide(num){
    var i;
    var size = $('.Aside_section>ul>div>li');
    /* 1. 좌우 화살표 클릭시 수동 슬라이드 제약사항 체크 */
    // 1-1. 매개변수값이 슬라이드 박스 갯수보다 크면 초깃값 1로 세팅
    if(num>size.length){
        slideIndex=1;
    }
    // 1-2. 매개변수값이 0이하면 slideIndex 변수값을 슬라이드 박스 갯수로 세팅
    if(num<=0){
        slideIndex = size.length;
    }
    /* 2. 수동 슬라이드 구현 */
    // 2-1. 모든 슬라이드 이미지 박스 가리기 
    for(var i=0; i<size.length; i++){
        $('.Aside_section>ul>div>li').eq(i).css({display:'none'});
    }
    // 2-2. 첫번째 슬라이드 이미지 나오도록 코딩
    $('.Aside_section>ul>div>li').eq(slideIndex-1).css({display:'block'});
}

/* 링크 클릭시 위로 이동 x */
$('a[href="#"]').on('click',function(e){
    e.preventDefault();
});

// 목록에 있는 사진 누르면 그 사진으로 이동
var imge1 = $('.size');
console.log(imge1.length);
var a;
function menu(num){
    for(var a=0; a<imge1.length; a++){
        if(num==a){
            // 해당 콘텐츠 보여주기
            $('.design_main_img0'+a).stop().show();
        }else{
            // 해당 콘텐츠 가리기
            $('.design_main_img0'+a).stop().hide();
        }
    }
}

/* trim 버튼 */
$('.trim').click(function(e) {
    e.stopPropagation(); // 클릭 이벤트가 부모 요소로 전파되지 않도록 함
    // .trim_section을 제외하고 닫기
    $('.color_section').stop().hide();
    $('.wheel_section').stop().hide();
    $('.seat_section').stop().hide();

    // 클릭한 .trim의 관련 .trim_section 열기
    $(this).next('.trim_section').stop().toggle();
});
$('.trim_option').click(function(e){
    e.stopPropagation(); // 클릭 이벤트가 부모 요소로 전파되지 않도록 함
    // .trim_section을 제외하고 닫기
    $('.color_section').stop().hide();
    $('.wheel_section').stop().hide();
    $('.seat_section').stop().hide();

    // 클릭한 .trim의 관련 .trim_section 열기
    $('.trim_section').stop().toggle();
});


// 문서의 다른 곳을 클릭할 때 `.trim_section`을 닫음
$(document).click(function() {
    $('.trim_section').stop().hide(); // 애니메이션 효과로 닫기
});

// `.trim_section` 클릭 시 이벤트 전파를 막아 문서 클릭 이벤트가 발생하지 않도록 함
$('.trim_section').click(function(e) {
    e.stopPropagation(); // 클릭 이벤트가 문서로 전파되지 않도록 함
});

/* color 버튼 */
$('.color').click(function(e) {
    e.stopPropagation(); // 클릭 이벤트가 부모 요소로 전파되지 않도록 함
    //.color_section 제외하고 닫기
    $('.trim_section').stop().hide();
    $('.wheel_section').stop().hide();
    $('.seat_section').stop().hide();

    // 클릭한 .color의 관련 .color_section 열기
    $(this).next('.color_section').stop().toggle();
});

$('.color_option').click(function(e) {
    e.stopPropagation(); // 클릭 이벤트가 부모 요소로 전파되지 않도록 함
    //.color_section 제외하고 닫기
    $('.trim_section').stop().hide();
    $('.wheel_section').stop().hide();
    $('.seat_section').stop().hide();

    // 클릭한 .color의 관련 .color_section 열기
    $('.color_section').stop().toggle();
});

// 문서의 다른 곳을 클릭할 때 `.color_section`을 닫음
$(document).click(function() {
    $('.color_section').stop().hide(); // 애니메이션 효과로 닫기
});

// `.color_section` 클릭 시 이벤트 전파를 막아 문서 클릭 이벤트가 발생하지 않도록 함
$('.color_section').click(function(e) {
    e.stopPropagation(); // 클릭 이벤트가 문서로 전파되지 않도록 함
});

/* wheel 버튼 */
$('.wheel').click(function(e) {
    e.stopPropagation(); // 클릭 이벤트가 부모 요소로 전파되지 않도록 함

    //.wheel_section을 제외하고 닫기
    $('.trim_section').stop().hide();
    $('.color_section').stop().hide();
    $('.seat_section').stop().hide();

    // 클릭한 .wheel의 관련 .wheel_section만 열기
    $(this).next('.wheel_section').stop().toggle();
});
$('.wheel_option').click(function(e) {
    e.stopPropagation(); // 클릭 이벤트가 부모 요소로 전파되지 않도록 함

    //.wheel_section을 제외하고 닫기
    $('.trim_section').stop().hide();
    $('.color_section').stop().hide();
    $('.seat_section').stop().hide();

    // 클릭한 .wheel의 관련 .wheel_section만 열기
    $('.wheel_section').stop().toggle();
});


// 문서의 다른 곳을 클릭할 때 `.wheel_section`을 닫음
$(document).click(function() {
    $('.wheel_section').stop().hide(); // 애니메이션 효과로 닫기
});

// `.wheel_section` 클릭 시 이벤트 전파를 막아 문서 클릭 이벤트가 발생하지 않도록 함
$('.wheel_section').click(function(e) {
    e.stopPropagation(); // 클릭 이벤트가 문서로 전파되지 않도록 함
});

/* Seat 버튼 */
// .seat를 클릭하면 .seat_section을 열기
$('.seat').click(function(e) {
    e.stopPropagation(); // 클릭 이벤트가 부모 요소로 전파되지 않도록 함
    
    // .seat_section을 제외하고 닫기
    $('.trim_section').stop().hide();
    $('.color_section').stop().hide();
    $('.wheel_section').stop().hide();
    
    // 클릭한 .seat의 관련 .seat_section만 열기
    $(this).next('.seat_section').stop().toggle();
});
$('.seat_option').click(function(e) {
    e.stopPropagation(); // 클릭 이벤트가 부모 요소로 전파되지 않도록 함
    
    // .seat_section을 제외하고 닫기
    $('.trim_section').stop().hide();
    $('.color_section').stop().hide();
    $('.wheel_section').stop().hide();
    
    // 클릭한 .seat의 관련 .seat_section만 열기
    $('.seat_section').stop().toggle();
});

// 문서의 다른 곳을 클릭할 때 .seat_section을 닫기
$(document).click(function() {
    $('.seat_section').stop().hide(); // 애니메이션 효과로 닫기
});

// .seat_section 클릭 시 이벤트 전파를 막아 문서 클릭 이벤트가 발생하지 않도록 함
$('.seat_section').click(function(e) {
    e.stopPropagation(); // 클릭 이벤트가 문서로 전파되지 않도록 함
});

// .trim_section을 닫기
$('.trim_section>ul>li').eq(1).click(function(){
    $('.trim_section').stop().hide();
});

/* pro color 적용 */
$('.color_section>ul>li').eq(0).click(function(){
    // check 버튼 넣기
    $('.design>li>img').eq(1).stop().hide();
    $('.design>li>span').eq(1).html('<img src="/resources/images/contents_id4/check.png" alt="check_box01" class="trim">');

    // 글레이셔 화이트 메탈릭 색상을 눌렀을때 사진 적용
    $('.color_option>h3').html('<h3 style="margin-bottom:0; margin-top: -59px;">Color</h3><br><img src="/resources/images/contents_id4/proLiteColor1.png" alt="" style="margin-bottom: -15px; margin-top: -10px;">');
    $('.color_option>p').html('<span class="korean_text">글레이셔 화이트 메탈릭</span><input type="hidden" name="car_color" value="글레이셔 화이트 메탈릭" />');
    $('.design_main_img00').html('<img src="/resources/images/contents_id4/proLiteWhite1.png" alt="design_main_img">');
    $('.design_main_img01').html('<img src="/resources/images/contents_id4/proLiteWhite2.png" alt="design_main_img">');
    $('.design_main_img02').html('<img src="/resources/images/contents_id4/proLiteWhite3.png" alt="design_main_img">');
    $('.design_main_img03').html('<img src="/resources/images/contents_id4/proLiteWhite4.png" alt="design_main_img">');
    $('.design_main_img04').html('<img src="/resources/images/contents_id4/proLiteWhite5.png" alt="design_main_img">');
    $('.design_main_img05').html('<img src="/resources/images/contents_id4/proLiteWhite6.png" alt="design_main_img">');
    $('.design_main_img06').html('<img src="/resources/images/contents_id4/proLiteWhite7.png" alt="design_main_img">');
    $('.slides li').eq(0).html('<img class="size" onclick="menu(0);" src="/resources/images/contents_id4/proLiteWhite1.png">');
    $('.slides li').eq(1).html('<img class="size" onclick="menu(1);" src="/resources/images/contents_id4/proLiteWhite2.png">');
    $('.slides li').eq(2).html('<img class="size" onclick="menu(2);" src="/resources/images/contents_id4/proLiteWhite3.png">');
    $('.slides li').eq(3).html('<img class="size" onclick="menu(3);" src="/resources/images/contents_id4/proLiteWhite4.png">');
    $('.slides li').eq(4).html('<img class="size" onclick="menu(4);" src="/resources/images/contents_id4/proLiteWhite5.png">');
    $('.slides li').eq(5).html('<img class="size" onclick="menu(5);" src="/resources/images/contents_id4/proLiteWhite6.png">');
    $('.slides li').eq(6).html('<img class="size" onclick="menu(6);" src="/resources/images/contents_id4/proLiteWhite7.png">');
    // .color_section을 닫기
    $('.color_section').stop().hide();
});
$('.color_section>ul>li').eq(1).click(function(){
    // check 버튼 넣기
    $('.design>li>img').eq(1).stop().hide();
    $('.design>li>span').eq(1).html('<img src="/resources/images/contents_id4/check.png" alt="check_box01" class="trim">');

    // 그레나딜라 블랙 메탈릭 색상을 눌렀을때 사진 적용
    $('.color_option>h3').html('<h3 style="margin-bottom:0; margin-top: -59px;">Color</h3><br><img src="/resources/images/contents_id4/proLiteColor2.png" alt="" style="margin-bottom: -15px; margin-top: -10px;">');
    $('.color_option>p').html('<span class="korean_text">그레나딜라 블랙 메탈릭</span><input type="hidden" name="car_color" value="그레나딜라 블랙 메탈릭" />');
    $('.design_main_img00').html('<img src="/resources/images/contents_id4/proLiteBlack1.png" alt="design_main_img">');
    $('.design_main_img01').html('<img src="/resources/images/contents_id4/proLiteBlack2.png" alt="design_main_img">');
    $('.design_main_img02').html('<img src="/resources/images/contents_id4/proLiteBlack3.png" alt="design_main_img">');
    $('.design_main_img03').html('<img src="/resources/images/contents_id4/proLiteBlack4.png" alt="design_main_img">');
    $('.design_main_img04').html('<img src="/resources/images/contents_id4/proLiteBlack5.png" alt="design_main_img">');
    $('.design_main_img05').html('<img src="/resources/images/contents_id4/proLiteBlack6.png" alt="design_main_img">');
    $('.design_main_img06').html('<img src="/resources/images/contents_id4/proLiteBlack7.png" alt="design_main_img">');
    $('.slides li').eq(0).html('<img class="size" onclick="menu(0);" src="/resources/images/contents_id4/proLiteBlack1.png">');
    $('.slides li').eq(1).html('<img class="size" onclick="menu(1);" src="/resources/images/contents_id4/proLiteBlack2.png">');
    $('.slides li').eq(2).html('<img class="size" onclick="menu(2);" src="/resources/images/contents_id4/proLiteBlack3.png">');
    $('.slides li').eq(3).html('<img class="size" onclick="menu(3);" src="/resources/images/contents_id4/proLiteBlack4.png">');
    $('.slides li').eq(4).html('<img class="size" onclick="menu(4);" src="/resources/images/contents_id4/proLiteBlack5.png">');
    $('.slides li').eq(5).html('<img class="size" onclick="menu(5);" src="/resources/images/contents_id4/proLiteBlack6.png">');
    $('.slides li').eq(6).html('<img class="size" onclick="menu(6);" src="/resources/images/contents_id4/proLiteBlack7.png">');
    // .color_section을 닫기
    $('.color_section').stop().hide();
});

/* pro wheel 적용 */
$('.wheel_section>ul>li').click(function(){
    // check 버튼 넣기
    $('.design>li>img').eq(2).stop().hide();
    $('.design>li>span').eq(2).html('<img src="/resources/images/contents_id4/check.png" alt="check_box01" class="trim">');

    // Wheel를 눌렀을때 사진 적용
    $('.wheel_option>h3').html('<h3 style="margin-bottom:0; margin-top: -59px;">Wheel</h3><img src="/resources/images/contents_id4/proWheel.jpg" alt="" style="margin-bottom: -10px; margin-top: 10px;">');
    $('.wheel_option>p').html('<span class="korean_text">드람멘</span> <span class="special_text">9</span>J x <span class="special_text">20”</span><input type="hidden" name="car_wheel" value="요크 9J X 20"" />');

    // .wheel_section을 닫기
    $('.wheel_section').stop().hide();
});
/* pro seat 적용 */
$('.seat_section>ul>li').click(function(){
    // check 버튼 넣기
    $('.design>li>img').eq(3).stop().hide();
    $('.design>li>span').eq(3).html('<img src="/resources/images/contents_id4/check.png" alt="check_box01" class="trim">');
    
    // Wheel를 눌렀을때 사진 적용
    $('.seat_option>h3').html('<h3 style="margin-bottom:0; margin-top: -59px;">Wheel</h3><img src="/resources/images/contents_id4/proSeat.png" alt="" style="margin-bottom: -10px; margin-top: 10px;">');
    $('.seat_option>p').html('<span class="korean_text">블랙</span> <span class="special_text">+</span> <span class="korean_text">브라운 레더 시트</span><input type="hidden" name="car_seat" value="블랙 + 브라운 레더 시트"" />');

    // .seat_section 닫기
    $('.seat_section').stop().hide();
});


