<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <link rel="stylesheet" href="/resources/css/chPwd.css">
<main>
    <nav class="subNav">
        <ul>
            <li><a href="#">마이페이지</a></li>
            <li>&nbsp;&gt;&nbsp;비밀번호 변경</li>
        </ul>
    </nav>
    <div style="margin-top: 50px;">
    	<h2><span class="korean_text">비밀번호 변경</span></h2>
    </div>
	<div class="chpass">
	        <p><span>&#42;&nbsp;기존 비밀번호를 새 비밀번호로 변경하실 수 있습니다&nbsp;&#42;</span></p>
	        <br>
        <form action="/memberPage/changePassword" method="post">
         	<!-- 히든으로 num 값 넘기기  -->
        	<input type="hidden" value="${loginUser.num}" name="num" />
            <section>
                <table>
                    <tr>
                        <th>
                            현재 비밀번호
                        </th>
                        <td>
                            <input type="password" name="password" required>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            새로운 비밀번호
                        </th>
                        <td>
                            <input type="password" name="newpass" required>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            새로운 비밀번호 확인
                        </th>
                        <td>
                            <input type="password" name="checkNewpass" required>
                        </td>
                    </tr>
                </table>
            </section>
            <input type="submit" value="확인">
        </form>
    </div>
</main>
<c:if test="${not empty msg }">
	<script type="text/javascript">
		alert("${msg}");
	</script>
</c:if>