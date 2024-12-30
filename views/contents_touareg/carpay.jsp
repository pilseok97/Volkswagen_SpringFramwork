<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Car Pay | Volkswagen</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- 파비콘(fav) PC -->
	<link rel="shortcut icon" href="<%=request.getContextPath()%>/images/header/logo1_withDog2_withoutTxt.png">
	<!-- 파비콘(fav) Mobile -->
	<link rel="apple-touch-icon-precomposed" href="<%=request.getContextPath()%>/images/header/logo1_withDog2_withoutTxt.png">
	<!-- Reset CSS -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/reset.css">
	<!-- Page CSS -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/aside.css">
	<!-- PlugIn JS -->
	<script src="<%=request.getContextPath()%>/js/prefixfree.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery-1.12.4.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery-3.3.1.min.js"></script>
<style>
	/* 전체 랩핑 스타일 */
	#wrap {
	    max-width: 400px; /* 최대 너비 */
	    margin: 0 auto; /* 중앙 정렬 */
	    padding: 20px; /* 패딩 추가 */
	    border: 1px solid #ccc; /* 테두리 */
	    border-radius: 8px; /* 둥근 모서리 */
	    background-color: #f9f9f9; /* 배경색 */
	    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* 그림자 효과 */
	}
	
	/* 제목 스타일 */
	h2 {
	    text-align: center; /* 중앙 정렬 */
	    color: #333; /* 글자 색 */
	}
	
	/* 라벨 스타일 */
	label {
	    display: block; /* 블록 요소로 설정 */
	    margin-bottom: 10px; /* 아래 여백 */
	    font-weight: bold; /* 굵은 글씨 */
	}
	
	/* 입력 필드 스타일 */
	input[type="text"] {
	    width: 100%; /* 전체 너비 */
	    padding: 10px; /* 패딩 */
	    margin-bottom: 15px; /* 아래 여백 */
	    border: 1px solid #ccc; /* 테두리 */
	    border-radius: 4px; /* 둥근 모서리 */
	    font-size: 16px; /* 글자 크기 */
	}
	
	/* 버튼 스타일 */
	input[type="button"] {
	    width: 100%; /* 전체 너비 */
	    padding: 10px; /* 패딩 */
	    border: none; /* 테두리 없음 */
	    border-radius: 12px; /* 둥근 모서리 */
	    background-color: #00184f; /* 배경색 */
	    color: white; /* 글자 색 */
	    font-size: 16px; /* 글자 크기 */
	    cursor: pointer; /* 커서 변경 */
	    transition: background-color 0.3s; /* 배경색 전환 효과 */
	}
	input[type="submit"] {
	    width: 100%; /* 전체 너비 */
	    padding: 10px; /* 패딩 */
	    border: none; /* 테두리 없음 */
	    border-radius: 12px; /* 둥근 모서리 */
	    background-color: #f0f0f0; /* 연한 회색 배경색 */
	    color: #333; /* 글자 색 (어두운 회색) */
	    font-size: 16px; /* 글자 크기 */
	    cursor: pointer; /* 커서 변경 */
	    transition: background-color 0.3s, color 0.3s; /* 배경색 및 글자색 전환 효과 */
	}

	/* 호버 및 포커스 상태 스타일 */
	input[type="submit"]:hover,
	input[type="submit"]:focus {
	    background-color: #e0e0e0; /* 호버 시 조금 더 어두운 회색 */
	    color: #000; /* 호버 시 글자 색을 검은색으로 변경 */
	    outline: none; /* 포커스 시 기본 테두리 제거 */
	}
	
	input[type="button"]:hover {
	    background-color: #003366; /* 호버 시 배경색 변경 */
	}
	
	/* 결과 메시지 스타일 */
	p {
	    text-align: center; /* 중앙 정렬 */
	    color: #000; /* 경고 색상 */
	    margin-top: 10px; /* 위 여백 */
	    margin-bottom: 10px;
	}
</style>
</head>
<body>
<div id="wrap">
	<h2>차량 구매 정보</h2>
	<form action="reservationcar.do" method="post" autocomplete="off">
			<input type="hidden" value="${loginUser.num}" name="num">
			<label > 구매자 : </label>
			<input type="text" value="${loginUser.name}" readonly name="name">
			<label > 모델명 : </label>
			<input type="text" value="${rvo.car_name}" readonly name="car_name">
			<label > 모델 색상 : </label>
			<input type="text" value="${rvo.car_color}" readonly name="car_color">
			<label > 모델 휠 종류 : </label>
			<input type="text" value="${rvo.car_wheel}" readonly name="car_wheel">
			<label > 모델 시트 종류 : </label>
			<input type="text" value="${rvo.car_seat}" readonly name="car_seat">
			<label > 모델 가격 : </label>
			<input type="text" value="${rvo.car_price}" readonly name="car_price">
			<input type="submit" value="최종 예약" onclick="closes()">
	</form>
</div>
	<!-- Page JS -->
	<script src="<%=request.getContextPath()%>/js/aside_v2.js"></script>
	<script src="<%=request.getContextPath()%>/js/signup.js"></script>
<script>
function closes(){
	// 부모 창의 메서드를 호출하여 예약 완료 후 필요한 후속 작업을 수행하게 합니다.
	if (window.opener && !window.opener.closed) {
		window.opener.location.href = "memberinfo.do"; // 부모 창에서 이동할 페이지 설정
		 window.opener.focus(); // 부모 창에 포커스를 맞춤
	    return;
	}
}
</script>
</body>
</html>