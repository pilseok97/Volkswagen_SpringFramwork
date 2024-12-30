<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	/* BoardVO board = (BoardVO) request.getAttribute("board");
	int seq = board.getSeq(); */
%>
<!-- Board -->
<section class="board w960">
	<div class="service" style="padding-bottom: 71px;">
		<h3>
			<span class="korean_text" style="font-size: 5.6rem; border-bottom: 2px solid #000;">1:1문의</span>
		</h3>
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
<!-- 답변된 글일때 답변보이기  -->
<c:if test="${param.isAnswered == '1'}">
		<tr>
	        <td class="inquiryAnswer" colspan="4" style="min-height: 150px !important;">${board.cmt_content }</td>
        </tr>
</c:if>
<!-- 관리자가 답변되지 않은 글을 조회 시 답변작성폼 보이기 -->
<c:if test="${param.isAdmin == '1' and param.isAnswered == '0'}">
        <form action="boardcommentform.do" method="post">
			<tr>
		        <td class="inquiryAnswer" colspan="4">
		        	<textarea name="cmt_content" placeholder="답변내용을 작성해주세요." class="korean_text"></textarea>
		        </td>
        	</tr>
</c:if>
			<!-- 버튼 행 -->
			<tr>
				<td colspan="4" style="border: none;">
					<div class="buttons">
<c:if test="${param.isAdmin == '0' and param.isOwner == '1'}">
						<!-- 본인글 수정화면 버튼 -->
						<button class="post_button">
							<a href="boardrewritepassword.do?seq=${board.seq }&pageNum=${param.pageNum }">수정</a>
						</button>
						<button class="post_button">
							<a href="boarddeletepassword.do?seq=${board.seq }&tab=1&pageNum=${param.pageNum }">삭제</a>
						</button>
						<!-- /본인글 수정화면 버튼 -->
</c:if>
<c:if test="${param.isAdmin == '1' and param.isAnswered == '0'}">
						<!-- 관리자 답변작성화면 버튼 -->
						<input type="hidden" name="seq" value="${board.seq }"/>
						<input type="hidden" name="pageNum" value="${param.pageNum }"/>
						<input type="hidden" name="action" value="insert"/>
						<button type="submit" class="post_button">등록</button>
						<button type="button" class="post_button">
							<a href="boarddelete.do?seq=${board.seq }">문의삭제</a>
						</button>
						<!-- 관리자 답변작성화면 버튼 -->
</c:if>
<c:if test="${param.isAdmin == '1' and param.isAnswered == '1' and param.isAnswerer == '1'}">
						<!-- 관리자 답변수정화면 버튼 -->
						<button type="submit" class="post_button">
							<a href="boardcommentform.do?seq=${board.seq }&pageNum=${param.pageNum }">답변수정</a>
						</button>
						<button type="button" class="post_button">
							<a href="boardcommentdelete.do?seq=${board.seq }&action=delete&pageNum=${param.pageNum }">답변삭제</a>
						</button>
						<button type="button" class="post_button">
							<a href="boarddelete.do?seq=${board.seq }">문의삭제</a>
						</button>
						<!-- 관리자 답변수정화면 버튼 -->
</c:if>
						<!-- (공통)글목록 버튼 -->
						<button class="post_button">
							<a href="boardlist.do?tab=1&pageNum=${param.pageNum }">글목록</a>
						</button>
						<!-- /(공통)글목록 버튼 -->
					</div>
				</td>
			</tr>
			<!-- 버튼행 -->
  		</form>
	</table>
	<!-- / 1:1문의글 상세보기 -->
</section>
<!-- /Board -->