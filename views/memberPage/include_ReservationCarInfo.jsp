<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/resources/css/updateMemberInfo.css">
<link rel="stylesheet" href="/resources/css/reservationcarinfo.css">

<%-- <link rel="stylesheet" href="/resources/css/f.css"> --%>
<%-- <link rel="stylesheet" href="/resources/css/reset.css"> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<main class="w1600">
	<nav class="subNav">
        <ul>
            <li><a href="#">마이페이지</a></li>
            <li>&nbsp;&gt;&nbsp;예약 상세보기</li>
        </ul>
   	</nav>
   	<section class="receipt_info w1600">
	   		<ul>
	   			<li style="font-size: 32px;"><span class="korean_text">예약 정보</span></li>
	   		</ul>
	   		<ul style="font-size: 24px; margin-top: 20px; padding-left: 3px">
	   			<li><span class="korean_text">예약하신 ${bean.car_name}의 출고 및 검수를 진행하고 있습니다.</span></li>		
	   		</ul>
	</section>
   	<div class="receipt">
	   	<section style="margin-right : 0">
	   		<ul style="padding-top: 120px;">
	   			<li><span class="korean_text" style="font-weight: 700;">예약자명</span></li>
	   			<li>${bean.user_name}</li>
	   		</ul>
	   		<ul class="no_pt">
	   			<li style="padding-right: 48px;"><span class="korean_text" style="font-weight: 700;">모델명</span></li>
	   			<li>${bean.car_name}</li>
	   		</ul>
	   		<ul class="no_pt">
	   			<li><span class="korean_text" style="font-weight: 700;">예약날짜</span></li>
	   			<li>${bean.reservation_date}</li>
	   		</ul>
	   		<ul class="no_pt">
	   			<li><span class="korean_text" style="font-weight: 700;">출고날짜</span></li>
	   			<li>${bean.car_ReleaseDate}</li>
	   		</ul>
	   		<ul class="no_pt">
	   			<li style="padding-right: 62px;"><span class="korean_text" style="font-weight: 700;">색상</span></li>
	   			<li>${bean.car_color}</li>
	   		</ul>
	   		<ul class="no_pt">
	   			<li style="padding-right: 78px;"><span class="korean_text" style="font-weight: 700;">휠</span></li>
	   			<li>${bean.car_wheel}</li>
	   		</ul>
	   		<ul class="no_pt">
	   			<li style="padding-right: 62px;"><span class="korean_text" style="font-weight: 700;">시트</span></li>
	   			<li>${bean.car_seat}</li>
	   		</ul>
	   		<ul class="no_pt">
	   			<li style="padding-right: 48px;"><span class="korean_text" style="font-weight: 700;">총금액</span></li>
	   			<li>${bean.car_price}</li>
	   		</ul>
	   		<ul>
	   			<button type="button" onclick="cancel()">예약취소</button>
	   			<button type="button" ><a href="/memberPage/memberinfo/">상세 페이지</a></button>
	   		</ul>
	   	</section>
	   	<section class="receipt_img no_ml"style="margin-top: 60px;">
	   		<ul class="no_pb">
	            <li>
	                <h3><span class="korean_text"><b>예약 자동차</b></span></h3>
	                <p style="margin-top: 10px; width: 400px;"><span class="korean_text">예약 차량의 이미지를 확인하실 수 있습니다</span></p>
	            </li>
	        </ul>
	   		<ul>
	   	        <li>
	                <h3>${bean.car_name }</h3>
					<img alt="차이미지" src="/resources/images/carinfo/${bean.car_img }" width="700">
	            </li>
	        </ul>
	   	</section>
   	</div>
</main>
<script>
function cancel(){
	if (confirm('예약을 취소하시겠습니까?')) {
	    location.href = '/memberPage/reservationcarcancel/';
	}
}
</script>