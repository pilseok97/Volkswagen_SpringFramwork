<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/rewriteBoardPwd.css">
<main>
    <div style="margin-top: 50px;">
       <h2><span class="korean_text">글 수정</span></h2>
    </div>
    <div class="dm korean_text">
        <form action="boardrewritepassword.do" method="post">
          <input type="hidden" value="${loginUser.num }" name="num" />
          	<input type="hidden" name="password" value="${password }" />
          	<input type="hidden" name="seq" value="${seq }" />
          	<input type="hidden" name="pageNum" value="${pageNum }" />
            <input type="password" name="password2" placeholder="글 비밀번호">
            <div>
                <p>&#42; 고객님의 소중한 개인정보보호를 위해서 글작성 시 입력한 비밀번호를 입력해주세요</p>
            </div>
            <div style="text-align: center;">
               <input type="submit" value="확인">
            </div>
        </form>
    </div>
</main>