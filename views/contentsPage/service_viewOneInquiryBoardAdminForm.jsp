<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	/* BoardDAO bdao = BoardDAO.getInstance();
	BoardVO board = bdao.getBoard(Integer.parseInt(request.getParameter("seq")));
	request.setAttribute("board", board); */
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
		<!-- 답변작성폼 -->
        <form action="<%=request.getContextPath() %>/boardcommentform.do" method="post">
			<tr>
		        <td class="inquiryAnswer" colspan="4">
		        	<textarea name="cmt_content" class="korean_text">${board.cmt_content }</textarea>
		        </td>
        	</tr>
			<!-- 버튼 행 -->
			<tr>
				<td colspan="4" style="border: none;">
					<div class="buttons">
						<input type="hidden" name="seq" value="${board.seq }"/>
						<input type="hidden" name="pageNum" value="${param.pageNum }"/>
						<input type="hidden" name="action" value="update"/>
						<button type="submit" class="post_button">답변수정</button>
						<button class="post_button">
							<a href="boardlist.do?tab=1&pageNum=${param.pageNum }">글목록</a>
						</button>
					</div>
				</td>
			</tr>
			<!-- 버튼행 -->
  		</form>
		<!-- /답변작성폼 -->
	</table>
	<!-- / 1:1문의글 상세보기 -->
</section>
<!-- /Board -->