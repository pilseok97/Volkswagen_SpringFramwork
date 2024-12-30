<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!-- Board -->
          <section class="board w960">
              <div class="service" style="padding-bottom: 71px;">
			<h3>
				<span class="korean_text" style="font-size: 5.6rem; border-bottom: 2px solid #000;">1:1문의</span>
			</h3>
		</div>
              <!-- 1:1문의글 상세보기 --> 
              <form action="<%=request.getContextPath() %>/boardupdate.do" method="post">
              	<table class="board_table inquiry_table">
                  <tr> 
                      <th>제목</th>
                      <td colspan="3">
                      	<input class="korean_text" type="text" name="title" value="${vo.title }" style="line-height: 40px;" required/>
                      </td>
                  </tr>
                  <tr>
                      <th class="korean_text">작성자</th>
                      <td colspan="3" class="korean_text">${vo.writer }</td>
                  </tr>
                  <tr>
                      <th class="korean_text">작성일</th>
                      <td>${vo.regdate }</td>
                      <th class="korean_text">조회수</th>
                      <td>${vo.count }</td>
                  </tr>
                  <tr>
                      <td colspan="4">
                          <p>
                          	<textarea rows="5" cols="30" name="content" maxlength="2000" class="korean_text">${vo.content }</textarea>
                          </p>
                      </td>
                  </tr>
                </table>
              
              
              <!-- / 1:1문의글 상세보기 -->
              <!-- 1:1문의글 하단 -->
	              <div class="buttons">
	              	  <input type="submit" class="post_button" value="수정"/>
	              	  <input type="hidden" name="seq" value="<%=request.getParameter("seq")%>"/>
	              	  <input type="hidden" name="pageNum" value="${param.pageNum }"/>
	              	  <input type="hidden" name="tab" value="${1 }"/>
	                  <button type="button" class="post_button"><a href="boardlist.do?tab=1&pageNum=${param.pageNum }">글목록</a></button>
	              </div>
              </form>
              <!-- /1:1문의글 하단 -->
           </section>
           <!-- /Board -->