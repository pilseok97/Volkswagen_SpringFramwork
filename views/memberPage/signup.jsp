<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Sign Up | Volkswagen</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- 파비콘(fav) PC -->
	<link rel="shortcut icon" href="/resources/images/header/logo1_withDog2_withoutTxt.png">
	<!-- 파비콘(fav) Mobile -->
	<link rel="apple-touch-icon-precomposed" href="/resources/images/header/logo1_withDog2_withoutTxt.png">
	<!-- Reset CSS -->
	<link rel="stylesheet" href="/resources/css/reset.css">
	<!-- Page CSS -->
	<link rel="stylesheet" href="/resources/css/sign_up.css">
	<link rel="stylesheet" href="/resources/css/aside.css">
	<!-- PlugIn JS -->
	<script src="/resources/js/prefixfree.min.js"></script>
	<script src="/resources/js/jquery-1.12.4.min.js"></script>
	<script src="/resources/js/jquery-3.3.1.min.js"></script>
</head>
<body>
	<div id="wrap">
		<!-- Header -->
		<header></header>
		<!-- /Header -->
		<!-- Contents -->
		<main>
			<!-- Slider -->
			<div class="slider"></div>
			<!-- /Slider -->
			<!-- Form -->
			<div class="signup_box">
				<form action="/memberPage/signup" method="post" name="sgp" autocomplete="off">
					<table>
						<tr>
							<td class="logo">
								<a href="/"><img src="/resources/images/member/signup/logo.png" alt="폭스바겐로고"></a>
							</td>
						</tr>
						<tr>
							<td class="text_box no_mb">
								<label for="id"><img src="/resources/images/member/signup/icon_user.png" alt="아이디아이콘"></label>
								<input type="text" id="id" name="id" placeholder="아이디" oninput="korean(this); special(this); checkId(this);" maxlength="20" ondblclick ="clearInput(this)">
								<input type="hidden" name="reid" id="reid" />
								<input type="button" value="중복 체크" onclick="idCheck()" id="id_check" disabled>	
							</td>
						</tr>
						<tr>
							<td>
								<p id="id_error" style="color: red;	margin-bottom: 0.74vh;	font-weight: 700;	text-align : left; padding-left: 0.72vw;">ID는 3~20자 이내 영문, 숫자로 이루어져야하고 영문으로 시작되어야 합니다.</p>
							</td>
						</tr>
						<tr>
							<td>
								<p id="id_success" style="color: green;	margin-top : -0.22vh;	margin-bottom: 0.98vh;	font-weight: 700;	text-align : left; padding-left: 0.72vw; display: none;"></p>
							</td>
						</tr>
						<tr>
							<td class="text_box no_mb">
								<label for="password"><img src="/resources/images/member/signup/icon_password.png" alt="비밀번호아이콘"></label> 
								<input type="password" id="password" name="password" placeholder="비밀번호" maxlength="16" ondblclick ="clearInput(this)" oninput="checkpwd(this); korean(this);">
								<button type="button" onclick="togglePassword()"><img src="/resources/images/member/signup/private.png" alt="사진"  id="toggleImage"/></button>
							</td>
						</tr>
						<tr>
							<td>
								<p id="pwd_error" style="color: red;	margin-bottom: 0.74vh;	font-weight: 700;	text-align : left; padding-left: 0.72vw; ">비밀번호는 8~16자 사이의 영문+숫자+특수문자를 포함되어야 합니다.</p>
							</td>
						</tr>
						<tr>
							<td>
								<p id="pwd_success" style="color: green; margin-top : -0.22vh;	margin-bottom: 0.98vh;	font-weight: 700;	text-align : left; padding-left: 0.72vw; display: none;">비밀번호 확인</p>
							</td>
						</tr>
						<tr>
							<td class="text_box">
								<label for="password_chk"><img src="/resources/images/member/signup/icon_password.png" alt="비밀번호아이콘"></label> 
								<input type="password" id="password_chk" name="password_chk" placeholder="비밀번호 확인" ondblclick ="clearInput(this)" oninput="korean(this);">
							</td>
						</tr>
						<tr>
							<td class="text_box">
								<label for="name"><img src="/resources/images/member/signup/icon_user.png" alt="이름아이콘"></label> 
								<input type="text" id="name" name="name" placeholder="이름"  oninput="number(this); special(this); english(this);"  ondblclick ="clearInput(this)">
							</td>
						</tr>
						<tr>
							<td class="text_box">
								<label for="birth_day"><img src="/resources/images/member/signup/icon_user.png" alt="이름아이콘"></label> 
								<input type="text" id="birth_day" name="birth_day" min="0" oninput="korean(this); english(this); special(this); autoMoveToNext(this, 6, 'gender');" placeholder="주민등록번호" maxlength="6" ondblclick ="clearInput(this)">
								<p style="padding-left: -15px;"><img src="/resources/images/member/signup/line.png" alt="" /></p>
								<input type="text" id="gender" name="gender" placeholder="1" maxlength="1"oninput="number1(this); korean(this); english(this); special(this);" ondblclick ="clearInput(this)">
								 <span class="masked-ssn">******</span>
							</td>
						</tr>
						<tr>
							<td class="text_box">
								<label for="tel"><img src="/resources/images/member/signup/phone.png" alt="휴대전화아이콘"></label> 
								<input type="text" id="tel" name="tel" placeholder="휴대전화번호" ondblclick ="clearInput(this)" oninput=" tel(this); korean(this); english(this); special1(this);" maxlength="13">
							</td>
						</tr>
						<tr>
							<td class="text_box">
								<label for="address"><img src="/resources/images/member/signup/home.png" alt="주소아이콘"></label> 
								<input type="text" id="address" name="address" placeholder="주소" ondblclick ="clearInput(this)" oninput="special1(this);">
							</td>
						</tr>
						<tr>
							<td class="text_box">
								<label for="email"><img src="/resources/images/member/signup/icon_mailAddress.png" alt="메일아이콘"></label> 
								<input type="email" id="email" name="email" placeholder="이메일" ondblclick ="clearInput(this)" oninput="korean(this)">
							</td>
						</tr>
						<tr>
							<td>
								<div class="signup_check">
									<label for="info_certified"><input type="checkbox" id="info_certified"  name="checkbox" >개인 정보 동의</label>
								</div> 
								<input type="submit" value="회원가입" id="signup_button" onclick ="return signup_chk()">
							</td>
						</tr>
						<!-- Email SignUp -->
<!-- 						<tr> -->
<!-- 							<td class="social_signup"> -->
<!-- 								<a href="#" class="slt">  -->
<%-- 									<img src="/resources/images/member/signup/icon_google.png"> --%>
<!-- 									<p>Google로 회원가입</p> -->
<!-- 								</a> -->
<%-- 								 	<a href="#" class="slt"> <img src="/resources/images/member/signup/icon_apple.png"> --%>
<!-- 									<p>Apple로 회원가입</p> -->
<!-- 								</a>  -->
<!-- 								<a href="#" class="no_mr slt"> -->
<%-- 									<img src="/resources/images/member/signup/icon_naver.png"> --%>
<!-- 									<p>Naver로 회원가입</p> -->
<!-- 								</a> -->
<!-- 							</td> -->
<!-- 						</tr> -->
					</table>
				</form>
			</div>
			<!-- /Form -->
		</main>
		<!-- /Contents -->
		<!-- Footer -->
		<footer>
			<div class="bg">
				<p>&nbsp;COPYRIGHT &copy; DFBF</p>
			</div>
		</footer>
	</div>
	<!-- Page JS -->
	<script src="/resources/js/aside.js"></script>
	<script src="/resources/js/signup.js"></script>
<script>
	//비밀번호 password 타입 -> text 타입으로 변환
	function togglePassword() {
	    const passwordInput = document.getElementById("password");
	    const toggleImage = document.getElementById("toggleImage");
	    if (passwordInput.type === "password") {
	    	passwordInput.type = "text";
	    	toggleImage.src="/resources/images/member/signup/eye.png";
	    } else {
	    	passwordInput.type = "password";
	    	toggleImage.src="/resources/images/member/signup/private.png";
	    }
	}
</script>
</body>
</html>