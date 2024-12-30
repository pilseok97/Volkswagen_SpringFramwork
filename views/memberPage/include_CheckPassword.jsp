<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="/resources/css/deleteMember.css">

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
    <div class="dm korean_text">
        <form action="/memberPage/updatememberInfoCheck" method="post">
            <input type="password" name="password" placeholder="비밀번호">
            <div>
                <p>&#42; 고객님의 소중한 개인정보보호를 위해서 본인확인를 진행합니다</p>
            </div>
            <div style="text-align: center;">
            	<input type="submit" value="확인">
            </div>
        </form>
    </div>
</main>

<c:if test="${not empty msg }">
	<script type="text/javascript">
		alert("${msg}");
	</script>
</c:if>