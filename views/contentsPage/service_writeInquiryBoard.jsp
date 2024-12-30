<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/service_writeInquiryBoard.css" />
<script type="text/javascript" src="<%= request.getContextPath() %>/js/boardwrite.js"></script>
	<h2>1:1 문의하기</h2>
       <nav class="writeInquiry">
           <form action="<%= request.getContextPath() %>/boardform.do" method="post">
               <ul>
                   <li>
                       <p>제목</p>
                       <input type="text" name="title" id="input" placeholder="제목을 입력해주세요" required>
                   </li>
                   <li>
                       <p>
                           글 비밀번호 설정
                           <input type="checkbox" id="checkbox" name="secret" value="1">
                           <span>(미선택시 공개글로 작성됩니다)</span>
                       </p>
                       <input type="password" name="password" id="passwordInput" required>
                   </li>
                   <li>
                       <p>문의 내용</p>
                       <textarea name="content" id="content" placeholder="문의 내용을 자세히 입력해주세요" required></textarea>
                   </li>
                   <li class="submitButton" align="right">
	              	  <input type="hidden" name="tab" value="${1 }"/>
	              	  <input type="hidden" name="pageNum" value="${1 }"/>
                       <input type="submit" id="submitInput" value="문의하기">
                   </li>
               </ul>
           </form>
       </nav>