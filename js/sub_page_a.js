// Vehicle_features (규래님)
    // DOM 요소 및 변수 설정
    var tabButtons = $('.vehicle_features_btn').find('.dot');
    var tabs = $('.tab');
    var tabimgs = $('.tabImg')
    var tabIndex = 0;

    // 탭 콘텐츠와 버튼 상태 업데이트 함수
    function updateTab(n) {
        if (n >= tabs.length) {
            tabIndex = 0;
        } else if (n < 0) {
            tabIndex = tabs.length - 1;
        } else {
            tabIndex = n;
        }

        tabs.hide(); // 모든 탭 숨기기
        tabimgs.hide();
        tabButtons.css({ backgroundColor: 'black', color: 'white', borderRadius: "50%" }); // 버튼 비활성화 스타일 적용

        $(tabs[tabIndex]).show(); // 현재 탭 표시
        $(tabimgs[tabIndex]).show();
        $(tabButtons[tabIndex]).css({ backgroundColor: 'white', color: 'black', borderRadius: "50%" }); // 버튼 활성화 스타일 적용
    }

    // 탭 좌우 클릭 시 호출되는 함수
    function plusTab(n) {
        updateTab(tabIndex + n);
    }

    // 초기 탭 설정
    updateTab(tabIndex);

    // 버튼 클릭 이벤트 리스너 설정
    $('.dot').on('click', function() {
        var index = $(this).index('.dot');
        updateTab(index);
    });

// collapsible_section
    // 변수 설정
    var convenienceImgs = $('.convenienceImg');
    var driveImgs = $('.driveImg');
    var comfortTabs = $('.comfort li');
    var iqTabs = $('.iq li');

    // 로딩시 첫번째 이미지만 보이도록 설정
    $(convenienceImgs).eq(0).show();
    $(driveImgs).eq(0).show();

    // Convenience 탭 클릭시 슬라이드 효과 및 이미지 전환 함수
    $(comfortTabs).click(function(){
        $(comfortTabs).children('div').stop().slideUp();
        $(this).children('div').stop().slideDown();
        $(convenienceImgs).stop().hide();
        let thisIndex = $(comfortTabs).index(this);
        $(convenienceImgs[thisIndex]).stop().show();
    })

    // iq 탭 클릭시 슬라이드 효과 및 이미지 전환 함수
    $(iqTabs).click(function(){
        $(iqTabs).children('div').stop().slideUp();
        $(this).children('div').stop().slideDown();
        $(driveImgs).stop().hide();
        let thisIndex = $(iqTabs).index(this);
        $(driveImgs[thisIndex]).stop().show();
    })

// gallery
    $('.gallery_sub_img').click(function(){
        var imgSrc = $(this).attr('src');
        $('.gallery_main_img').attr('src', imgSrc);
    })
    // gallery 스와이퍼 커스텀
    var swiper = new Swiper('.swiper-container', {
        slidesPerView: 3, // 한 번에 보여줄 슬라이드 수
        spaceBetween: 10, // 슬라이드 사이의 간격
        loop: true, // 루프 모드
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        }
        // breakpoints: {
        //     640: {
        //         slidesPerView: 1, // 모바일 화면에서 1개의 슬라이드 표시
        //     },
        //     768: {
        //         slidesPerView: 2, // 태블릿 화면에서 2개의 슬라이드 표시
        //     },
        //     1024: {
        //         slidesPerView: 3, // 데스크탑 화면에서 3개의 슬라이드 표시
        //     },
        // },
    });