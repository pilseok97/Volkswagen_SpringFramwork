<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<style>
/* header button css 덮어쓰기 */
button {
    font-family: "Noto Serif Kr", serif;
    margin: 0;
    width: 0;
    height: 0;
    border: none;
    border-radius: 0;
    font-size: 0;
    text-align: center;
    cursor: pointer;
}
button:hover {
    background-color: none;
    color: none;
 }
</style>
 <main class="w1600 memberlist">
   <div class="name">
        <h2><span class="korean_text">회원리스트</span></h2>
   </div>
   <div class="membertable">
		<table class="memberlist_table">
				<tr>
					<th>회원번호</th>
					<th>아이디</th>
					<th>패스워드</th>
					<th>이름</th>
					<th>성별</th>
					<th>생년월일</th>
					<th>주소</th>
					<th>전화번호</th>
					<th>이메일</th>
					<th>회원가입일</th>
					<th>회원등급</th>
					<th>예약유무</th>
					<th>예약차량</th>
					<th>예약취소</th>
					<th>회원삭제</th>
				</tr>
				<!-- 공지사항 -->
				<c:forEach var="bean" items="${als }" >
				<tr>
					<td>${bean.num }</td>
					<td>${bean.id }</td>
					<td>
						<c:forEach var="i" begin="1" end="${bean.password.length() }" >
							*
						</c:forEach>
					</td>
					<td>${bean.name }</td>
					<td>${bean.gender }</td>
					<td>${bean.birth_day }</td>
					<td>${bean.address }</td>
					<td>${bean.tel }</td>
					<td>${bean.email }</td>
					<td>${bean.regdate }</td>
					<td>${bean.grade }</td>
					<td>${bean.reservation }</td>
					<td>${bean.car_name }</td>
					<td><a href="memberadmin.do?num=${bean.num }&action=cancel&num_chk=${loginUser.num}&pageNum=${param.pageNum}"><span class='reservation_cancel'>예약취소</span></a></td>
					<td><a href="memberadmin.do?num=${bean.num }&action=delete&num_chk=${loginUser.num}&pageNum=${param.pageNum}"><span class='delete_member'>회원삭제</span></a></td>
				</tr>
				</c:forEach>
				<!-- 문의게시판 하단 -->
				<tr>
					<td colspan="15" style="border-bottom: none;">
						<!-- 검색폼 -->
				                <form action="#" class="search_container" method="post">
				                   <input type="hidden" name="pageNum" value="${1 }" />
				                   <select name="searchField" class="search_input korean_text">
				                      <option value="id" ${selectedField == "id" ? "selected" : ""}>ID</option>
				                      <option value="name" ${selectedField == "name" ? "selected" : ""}>이름</option>
				                      <option value="reservation" ${selectedField == "reservation" ? "selected" : ""}>예약유무</option>
				                   </select> &nbsp;&nbsp; 
				                   <input type="text" name="searchText" placeholder="search" class="search_input english_text">
				                   <a href="#">
				                   <button type="button" id="searchButton">
				                      <img src="<%=request.getContextPath()%>/images/contentsPage/service/search.png" alt="돋보기 아이콘">
				                   </button>
				                   </a>
				                </form>
						<!-- 페이징, 카운터 -->
						        
					</td>
				</tr>
		</table>
	</div>
</main>
