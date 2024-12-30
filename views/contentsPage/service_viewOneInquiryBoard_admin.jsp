<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<!-- Board -->
    <section class="board w960">
        <div class="service">
            <h2><span class="korean_text">1:1 문의</span></h2>
        </div> 
        <!-- 1:1문의글 상세보기 --> 
        <table class="board_table inquiry_table">
            <tr> 
                <th>제목</th>
                <td colspan="3">${board.title }</td>
            </tr>
            <tr>
                <th>작성자</th>
                <td colspan="3">${board.writer }</td>
            </tr>
            <tr>
                <th>작성일</th>
                <td>${board.regdate }</td>
                <th>조회수</th>
                <td>${board.count }</td>
            </tr>
            <tr>
                <td colspan="4">
                    <p>${board.content }</p>
                </td>
            </tr>
            <tr>
            	<td class="inquiryAnswer" colspan="4">
            <form action="boardcommentform.do">
            			<textarea name="" placeholder="답변내용을 작성해주세요." class="korean_text"></textarea>
  				</form>
            	</td>
            </tr>
        </table>
        <!-- / 1:1문의글 상세보기 -->
        <!-- 1:1문의글 하단 -->
        <div class="buttons">
<c:if test="">
            <button type="submit" class="post_button"><a href="#">등록</a></button>
            <button type="reset" class="post_button"><a href="#">취소</a></button>
</c:if>
<c:if test="">
            <button type="submit" class="post_button"><a href="#">답글수정</a></button>
            <button type="button" class="post_button" onclick="#"><a href="#">답글삭제</a></button>
</c:if>
            <button class="post_button"><a href="#">글목록</a></button>
        </div>
        <!-- /1:1문의글 하단 -->
     </section>
     <!-- /Board -->