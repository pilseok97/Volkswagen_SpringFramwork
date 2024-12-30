<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <link rel="stylesheet" href="/resources/css/deleteMember.css">
<main>
    <nav class="subNav">
        <ul>
            <li><a href="#">마이페이지</a></li>
            <li>&nbsp;&gt;&nbsp;회원탈퇴</li>
        </ul>
    </nav>
    <div style="margin-top: 50px;">
    	<h2><span class="korean_text">회원탈퇴</span></h2>
    </div>
    <div class="dm korean_text">
        <form id="deleteForm" action="/memberPage/deleteMember" method="post">
 			<input type="hidden" value="${loginUser.num }" name="num" />
            <input type="password" name="password" placeholder="비밀번호">
            <div>
                <p>&#42; 계정 탈퇴를 완료하더라도 오프라인 서비스는 유지됩니다.</p>
                <p>&#42; 오프라인 서비스 탈퇴는 각 고객센터를 통해 별도로 진행해주세요.</p>
                <p>&#42; 탈퇴 후 개인정보가 삭제되면 어떠한 방법으로도 복원할 수 없습니다.</p>
            </div>
            <div style="text-align: center;">
            	<input type="submit" value="탈퇴" onclick="return confirmDelete();" >
            </div>
        </form>
        
        <script>
		    function confirmDelete() {
		        return confirm("정말로 회원 탈퇴를 하시겠습니까?");
		    }
		</script>
        
    </div>
</main>
<c:if test="${not empty msg }">
	<script type="text/javascript">
		alert("${msg}");
	</script>
</c:if>