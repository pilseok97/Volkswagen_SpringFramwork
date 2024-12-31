$(document).ready(function() {
    // 스크롤 이벤트 리스너
    $(window).scroll(function() {
        // 현재 스크롤 위치가 500px 이상인 경우 aside 요소 보이기
        if ($(this).scrollTop() > 500) {
            $('.aside_nav').fadeIn();
        } else {
            $('.aside_nav').fadeOut();
        }
    });

    // 이벤트 위임을 사용하여 동적으로 로드된 버튼에 이벤트 리스너를 등록
    $(document).on('click', '.aside_nav button', function() {
        $('html, body').animate({ scrollTop: 0 }, 'slow');
        return false;
    });

    // 페이지 미완성 알림
    $('body').append('<div class="alert"><img src="/resources/images/common/alert.png" alt="준비중 경고창"></div>');

    $('a[href="#"]').on('click', function(x){
        x.preventDefault();
        $('.alert').stop(1).fadeIn(700);

        setTimeout(function(){
            $('.alert').fadeOut(700);
        }, 2000); // 2000ms(2초) 후에 경고창을 사라지게 함
    });

});





