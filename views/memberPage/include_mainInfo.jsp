<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <main class="w1600">
   <div class="name">
        <h3><span class="korean_text">${loginUser.name }님 반갑습니다</span></h3>
   </div>
   <div class="reservation">
        <ul class="no_pb">
            <li>
                <h3><span class="korean_text"><b>예약 자동차</b></span></h3>
                <p><span class="korean_text"><b>예약 차량의 자세한 정보를 확인하실 수 있습니다</b></span></p>
            </li>
        </ul>
        <ul class="bd">
             <li></li>
        </ul>
        <ul class="carimg no_pb">
<%-- <c:if test="${not empty rvo}">
            <li>
                <h3>${rvo.car_name }</h3>
            </li>
            <li style="text-align: center;">
                 <img src="/resources/images/carinfo/${rvo.car_img}" alt="차량이미지">
            </li>
            <li style="text-align: center;">
                 <a href="/memberPage/reservationcarinfo/"><button type="button" style="margin: 0;"><span class="korean_text">상세보기</span></button></a>
            </li>
</c:if>
<c:if test="${empty rvo}">
		<ul class="no_reservation">
			<li><p>예약된 차량이 없습니다.</p></li>
			<li><p>최고의 경험을 제공하는 폭스바겐 차량을 만나보세요.</p></li>
            <li>
                 <a href="/contentsPage/models/"><button type="button"><span class="korean_text">예약하기</span></button></a>
            </li>
		</ul>
</c:if>        --%>
        </ul>
   </div>
   <div class="information">
        <section>
            <ul>
                <li>
                    <a href="/memberPage/updateMemberInfo"><img src="/resources/images/contents/in.png" alt="더미1" /></a>
                </li>
                <li class="w150">
                    <h3><span class="korean_text">회원정보 수정</span></h3>
                    <p><span class="korean_text">본인인증, 휴대폰번호 등 내 정보를 수정하세요</span></p>
                </li>
            </ul>
        </section>
        <section>
            <ul>
                <li>
                    <a href="/memberPage/changePassword"><img src="/resources/images/contents/pwd.png" alt="더미3" /></a>
                </li>
                <li class="w150">
                    <h3><span class="korean_text">비밀번호 변경</span></h3>
                    <p><span class="korean_text">주기적인 변경으로 <br>내 정보를 보호</span></p>
                </li>
            </ul>
        </section>
        <section>
            <ul>
                <li>
                    <a href="/memberPage/deleteMember"><img src="/resources/images/contents/out.png" alt="더미3" /></a>
                </li>
                <li class="w150">
                    <h3><span class="korean_text">회원탈퇴</span></h3>
                    <p><span class="korean_text">회원탈퇴</span></p>
                </li>
            </ul>
        </section>
   </div>
</main>
<c:if test="${! empty msg }">
	<script type="text/javascript">
		alert("${msg}");
	</script>
</c:if>