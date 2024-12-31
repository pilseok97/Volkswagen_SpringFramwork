<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>password search</title>
	<link rel="stylesheet" href="https://unpkg.com/bootstrap@3.3.7/dist/css/bootstrap.min.css">
<!-- 파비콘(fav) PC -->
	<link rel="shortcut icon" href="/resources/images/header/logo1_withDog2_withoutTxt.png">
	<!-- 파비콘(fav) Mobile -->
	<link rel="apple-touch-icon-precomposed" href="/resources/images/header/logo1_withDog2_withoutTxt.png">
	<!-- Reset CSS -->
	<link rel="stylesheet" href="/resources/css/reset.css">
	<!-- Page CSS -->
	<link rel="stylesheet" href="/resources/css/aside.css">
	<!-- PlugIn JS -->
	<script src="/resources/js/prefixfree.min.js"></script>
	<script src="/resources/js/jquery-1.12.4.min.js"></script>
	<script src="/resources/js/jquery-3.3.1.min.js"></script>
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
	/* 입력 필드 스타일 */
	input[type="email"] {
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
		<h2>비밀번호 찾기</h2>
		<form action="/memberPage/searchpwd" method="post" name="search">
			<ul>
				<li>
					<label for="id">아이디 : </label> 
					<input type="text" name="id"  value="${mvo.id}" id="id" required oninput="korean(this); special(this);"/>
					<label for="email"> 이름 : </label>
					<input type="text" name="name"  value="${mvo.name }"  oninput="number(this); english(this); special(this);" id="name" required>
					<label for="email"> 이메일 : </label>
					<input type="email" name="email"  value="${mvo.email }"  oninput="korean(this)"  id="email"  required/>
				</li>
				<li>
					<input type="submit" value="아이디 찾기"  /> 
					<c:if test="${empty mvo.name or empty mvo.email or empty mvo.id}">
				        <p>정보를 입력해주세요</p>
				    </c:if>
				    <c:if test="${searchPwd == null and not empty mvo.name and not empty mvo.email and not empty mvo.id}">
				        <p>정보를 다시 확인해주세요.</p>
				    </c:if>
					<c:if test="${searchPwd != null }">
						<p>가입하신 비밀번호는 <b>${searchPwd }</b> 입니다.</p>
						<input type="button" onclick="self.close();" value="로그인 페이지로 이동"/>
					</c:if>
				</li>
			</ul>
		</form>
	</div>
	<!-- Page JS -->
	<script src="/resources/js/aside_v2.js"></script>
	<script src="/resources/js/signup.js"></script>
</body>
</html>