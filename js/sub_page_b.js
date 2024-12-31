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