// 탭 클릭 이벤트: 탭 클릭 시 URL에 'tab' 파라미터 추가 및 탭 상태 변경
$('.board .service li').click(function(e) {
	e.preventDefault();

	const idx = $(this).index(); // 클릭한 탭의 index 값
	const tabTitles = ["FAQ", "1:1문의"];
	const newUrl = new URL(window.location.href);
	newUrl.searchParams.set('tab', idx); // 선택한 탭의 index 값 추가

	// 만약 클릭한 탭이 '1:1문의'라면 pageNum을 1로 설정
	if (idx === 1) {
		newUrl.searchParams.set('pageNum', 1);
	}
	
	// 만약 'searchField' 값이 URL에 포함되어 있고, 클릭한 탭이 '1:1문의'라면 서블릿으로 전송
	if (newUrl.searchParams.has('searchField') && idx === 1) {
		window.location.href = `/contentsPage/viewAllBoard?tab=1&pageNum=1`; // 서블릿으로 리다이렉트
		return;
	}
	if (newUrl.searchParams.has('pageNum') && idx === 1) {
		window.location.href = `/contentsPage/viewAllBoard?tab=1&pageNum=1`; // 서블릿으로 리다이렉트
		return;
	}

	// URL 업데이트 (페이지 리로드 없이)
	window.history.replaceState(null, '', newUrl);

	// 탭 상태 및 컨텐츠 표시 변경
	$('.board .service li').removeClass('on');
	$(this).addClass('on');
	$('.board .board_table, .search_container, .buttons').hide();
	$('.board .board_table').eq(idx).stop().fadeIn(300);
	$('.service h2').text(tabTitles[idx]);

	// 1:1 문의 탭인 경우 추가 요소 표시
	if (idx === 1) {
		$('.buttons, .search_container').stop().fadeIn(300);
	}
});
