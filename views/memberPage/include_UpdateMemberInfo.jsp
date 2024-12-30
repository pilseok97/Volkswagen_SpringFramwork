<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
    <link rel="stylesheet" href="/resources/css/updateMemberInfo.css">
<main>
    <nav class="subNav">
        <ul>
            <li><a href="#">마이페이지</a></li>
            <li>&nbsp;&gt;&nbsp;회원정보 수정</li>
        </ul>
    </nav>
    <div style="margin-top: 50px;">
    	<h2><span class="korean_text">회원정보 수정</span></h2>
    </div>
    <div class="updatemb korean_text">
        <form action="/memberPage/updateMemberInfo" method="post">
        <input type="hidden" value="${loginUser.num }" name="num" />
            <table> 
                <tr>    
                    <th>
                        아이디   
                    </th>
                    <td>
                       	<span class="english_text">${mvo.id }</span>
                    </td>
                </tr>
                <tr>
                    <th>
                        이름
                    </th>
                    <td>
                        ${mvo.name }
                    </td>
                </tr>
                <tr>
                    <th>
                        성별
                    </th>
                    <td>
                        ${mvo.gender }
                    </td>
                </tr>
                <tr>
                    <th>
                        휴대전화
                    </th>
                    <td>
                        <input type="tel" name="tel" value="${mvo.tel }" required>
                    </td>
                </tr>
                <tr>
                    <th>
                        주소
                    </th>
                    <td>
                        <input type="text" name="address" value="${mvo.address}" required>
                    </td>
                </tr>
                <tr>
                    <th>
                        이메일
                    </th>
                    <td>
                        <input type="text" name="email" value="${mvo.email }" required>
                    </td>
                </tr>
                <tr>
                    <th>
                        회원등급
                    </th>
                    <td>
                        ${mvo.grade }
                    </td>
                </tr>
                <tr>
                    <th>
                        생년원일
                    </th>
                    <td>
                        ${mvo.birth_day}
                    </td>
                </tr>
            </table>       
            <div class="btn">
                <input type="submit" value="회원정보 수정">
                <input type="reset" value="취소">
            </div>    
        </form>
    </div>
</main>

<script>
window.onload = function() {
    // 화면이 렌더링된 후 비동기로 세션 속성 삭제 요청
    fetch('/memberPage/removeMvoSession', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        }
    })
    .then(response => response.text())
    .then(data => console.log("세션 속성 삭제 결과:", data))
    .catch(error => console.error("세션 삭제 중 오류 발생:", error));
};
</script>