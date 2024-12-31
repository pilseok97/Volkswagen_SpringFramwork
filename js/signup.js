/**
 * 
 */
/* 주민번호 입력시 다음 필드로 포커스 이동 */
function autoMoveToNext(current, maxLength, nextFieldId) {
    if (current.value.length >= maxLength) {
        document.getElementById(nextFieldId).focus();
    }
}
function signup_chk() {
    const form = document.sgp;
    const id = form.id;
    const password = form.password;
    const password_chk1 = form.password.value;
    const password_chk2 = form.password_chk.value;
    const name = form.name;
    const birth_day = form.birth_day;
    const gender = form.gender;
    const tel = form.tel;
    const address = form.address;
    const email = form.email;
    const checkbox = form.info_certified.checked;
	
	
    const inputs = [id, password, name, birth_day, form.password_chk, gender, tel, address, email];
    inputs.forEach(input => input.classList.remove('error'));

    if (id.value.length == 0) {
        alert("아이디를 입력해주세요");
        id.classList.add('error');
        id.focus();
        return false;
    }
    if (id.value.length < 3) {
        alert("아이디를 3글자 이상으로 입력해주세요");
        id.classList.add('error');
        id.focus();
        return false;
    }
    if (password.value.length == 0) {
        alert("비밀번호를 입력해주세요");
        password.classList.add('error');
        password.focus();
        return false;
    }
    if (password.value.length < 8) {
        alert("비밀번호를 8글자 이상 입력해주세요");
        password.classList.add('error');
        password.focus();
        return false;
    }
    if (password_chk2 == "") {
        alert("비밀번호 확인을 입력해주세요");
        form.password_chk.classList.add('error');
        form.password_chk.focus();
        return false;
    }
    if (password_chk1 !== password_chk2) {
        alert("입력한 비밀번호가 맞지 않습니다.");
        password.classList.add('error');
        password.focus();
        return false;
    }
    if (name.value.length == 0) {
        alert("이름을 입력해주세요");
        name.classList.add('error');
        name.focus();
        return false;
    }
    if (birth_day.value.length == 0) {
        alert("주민등록번호를 입력해주세요");
        birth_day.classList.add('error');
        birth_day.focus();
        return false;
    }
    if (gender.value.length == 0) {
        alert("주민등록번호 뒷자리를 입력해주세요");
        gender.classList.add('error');
        gender.focus();
        return false;
    }
    if (tel.value.length == 0) {
        alert("전화번호를 입력해주세요");
        tel.classList.add('error');
        tel.focus();
        return false;
    }
    if (address.value.length == 0) {
        alert("주소를 입력해주세요");
        address.classList.add('error');
        address.focus();
        return false;
    }
    if (email.value.length == 0) {
        alert("이메일을 입력해주세요");
        email.classList.add('error');
        email.focus();
        return false;
    }
    if (!checkbox) {
        alert("개인정보동의를 해주세요");
        return false;
    }
	if (document.sgp.reid.value.length == 0) {
	    alert("중복 체크를 하지 않았습니다.");
	    id.focus();
	    return false;
	}
    return true;
}
/* 한글을 입력하지 못하게 띄우는 경고창 함수 */
function korean(input) {
    // 한글이 포함된 경우 경고창을 띄우고 포커스를 유지
	// .test는 비교
    if (/[\u3131-\uD79D]/.test(input.value)) {
        alert("한글을 입력할 수 없습니다.");
        input.value = input.value.replace(/[\u3131-\uD79D]/g, ''); // 입력된 한글 제거
        input.focus();
    }
}
/* 숫자를 입력하지 못하게 띄우는 경고창 함수 */
function number(input) {
    // 숫자가 포함된 경우 경고창을 띄우고 포커스를 유지
	// .test는 비교
    if (/[0-9]/.test(input.value)) {
        alert("숫자를 입력할 수 없습니다.");
        input.value = input.value.replace(/[0-9]/g, ''); // 입력된 숫자 제거
        input.focus();
    }
}
/* 숫자5~9를 입력하지 못하게 띄우는 경고창 함수 */
function number1(input) {
    // 숫자가 포함된 경우 경고창을 띄우고 포커스를 유지
	// .test는 비교
    if (/[5-9]/.test(input.value)) {
        alert("1~4중에 입력해주세요.");
        input.value = input.value.replace(/[5-9]/g, ''); // 입력된 숫자 제거
        input.focus();
    }
}
/* 영어를 입력하지 못하게 띄우는 경고창 함수 */
function english(input) {
    // 영어가 포함된 경우 경고창을 띄우고 포커스를 유지
	// .test는 비교
    if (/[a-zA-z]/.test(input.value)) {
        alert("영어를 입력할 수 없습니다.");
        input.value = input.value.replace(/[a-zA-Z]/g, ''); // 입력된 영어 제거
        input.focus();
    }
}
/* 특수문자를 입력하지 못하게 띄우는 경고창 함수 */
function special(input) {
    // 특수문자가 포함된 경우 경고창을 띄우고 포커스를 유지
	// .test는 비교
    if (/[!@#$%^&*()~_+\-=\[\]{};':"\\|,.<>\/?]+/.test(input.value)) {
        alert("특수문자를 입력할 수 없습니다.");
        input.value = input.value.replace(/[!@#$%^&*()_+\-=\[\]~{};':"\\|,.<>\/?]+/g, ''); // 입력된 특수문자 제거
        input.focus();
    }
}

/*특수문자를 입력하지 못하게 띄우는 경고창 함수  (하이푼- 제거용) */
function special1(input) {
    // 특수문자가 포함된 경우 경고창을 띄우고 포커스를 유지
	// .test는 비교
    if (/[!@#$%^&*()~_+\=\[\]{};':"\\|,.<>\/?]+/.test(input.value)) {
        alert("특수문자를 입력할 수 없습니다.");
        input.value = input.value.replace(/[!@#$%^&*()_+\=\[\]~{};':"\\|,.<>\/?]+/g, ''); // 입력된 특수문자 제거
        input.focus();
    }
}

// id
function checkId(input) {
    const first = input.value.charAt(0); // 첫번째 오는 글자
    const id = /^[a-zA-Z]/;
	// 아이디가 비어있는지 체크
	if (input.value === ""){
		document.getElementById('id_error').textContent = "ID는 3~20자 이내 영문, 숫자로 이루어져야하고 영문으로 시작되어야 합니다.";
        document.getElementById('id_success').style.display = "none";
        document.getElementById('id_error').style.display = "block";
		return; // 함수 종료
	}

    if (input.value.length > 0 && !id.test(first)) {
        document.getElementById('id_error').textContent = "*숫자로 시작 불가능!! 영어로 시작바람*";
        document.getElementById('id_error').style.display = "block";
        input.value = '';
        return; // 함수 종료
    }

    const id1 = /^(?=.*[a-zA-Z])(?=.*\d)/;
    if (!id1.test(input.value)) {
        document.getElementById('id_error').textContent = '아이디는 영어로 시작하고 숫자를 포함';
        document.getElementById('id_error').style.display = "block";
        document.getElementById('id_success').style.display = "none";
        document.getElementById("id_check").disabled = true;
    } else {
        document.getElementById('id_success').textContent = '아이디 형식 사용 가능!!';
        document.getElementById('id_success').style.display = "block";
        document.getElementById('id_error').style.display = "none";
        document.getElementById("id_check").disabled = false;
    }
}
// pwd
/* 비밀번호 영문 + 숫자 + 특수문자 포함인지 확인 해주는 함수 */
function checkpwd(input) {
	// (?=.*[a-zA-Z]) = 영문이 하나이상 포함되어있어야함
	// (?=.*\d) = 숫자가 하나이상 포함되어있어야함
	// (?=.*[!@#$%~^&*(),.?":{}|<>]) = 특수문자가 하나이상 포함되어있어함
    // 비밀번호 정규 표현식 (8~16자, 영문, 숫자, 특수문자 포함)
    const pwd = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[!@#$%~^&*(),.?":{}|<>]).{8,16}$/;

    // 비밀번호가 비어있는지 체크
    if (input.value === "") {
        document.getElementById('pwd_error').textContent = "비밀번호는 8~16자 사이의 영문+숫자+특수문자를 포함되어야 합니다.";
        document.getElementById('pwd_success').style.display = "none";
        document.getElementById('pwd_error').style.display = "block";
        return; // 함수 종료
    }

    // 비밀번호 유효성 체크
    if (!pwd.test(input.value)) {
        document.getElementById('pwd_error').textContent = '비밀번호는 8~16자 영문+숫자+특수문자를 포함해야 합니다.';
        document.getElementById('pwd_error').style.display = "block";
        document.getElementById('pwd_success').style.display = "none";
    } else {
        document.getElementById('pwd_success').textContent = '비밀번호 형식 사용 가능';
        document.getElementById('pwd_success').style.display = "block";
        document.getElementById('pwd_error').style.display = "none";
    }
}

// input 더블클릭시 입력한 값 삭제 
function clearInput(input) {
    input.value = ''; // 입력값을 빈 문자열로 설정
}

// 아이디 중복 팝업창 열기
function idCheck(){
    var url = "/memberPage/idcheck?id=" + document.sgp.id.value;
	window.open(url, "idCheck", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=400,height=260");
}
// 아이디 유효성검사 후 창 닫기
function checkclose() {
    var id = document.getElementById('id1').value; // 팝업에서 아이디 값을 가져옴
    window.opener.document.sgp.id.value = id; // 원래 창의 폼에 값을 설정
    window.opener.document.sgp.reid.value = id; // 원래 창의 히든값에 값을 설정
	window.opener.hidden();
    self.close(); // 팝업 닫기
}
// 아이디 중복확인 유효성 검사1
function ckid(input) {
    const first = input.value.charAt(0); // 첫번째 오는 글자
    const id = /^[a-zA-Z]/; // 영문으로 시작하는지 체크

    if (input.value.length > 0 && !id.test(first)) {
        alert("영문으로 시작바랍니다.");
        input.value = ''; // 입력 필드 초기화
        return; // 함수 종료
    }
}
// 아이디 중복확인 유효성 검사2
function ckidok(){
	const id1 = /^(?=.*[a-zA-Z])(?=.*\d).{3,20}$/;
    if (!id1.test(document.sgp.id.value) && document.sgp.id.value.length > 0) {
        alert("영문+숫자로 기입해주세요");
        return false; // 함수 종료
    }
    if (document.sgp.id.value.length<3) {
        alert("3~20자 이내로 기입해주세요");
        return false; // 함수 종료
    }
        return true;
}

function hidden(){
	if(document.getElementById("reid").value != null){
		const successMessage = document.getElementById("id_success");
        successMessage.textContent = "사용 가능한 아이디입니다.";
        successMessage.style.display = "block";
	}
	
}


