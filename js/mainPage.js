/* hover 하면 내용 및 이미지 변경 */
/* jQuery 사용본 */
$('.car_showcase .new_car').on('mouseenter',function(){
    $('.car_showcase h2').html('The new Touareg 출시') /* 차량 이름 변경 */
    $('.car_showcase p').html('<span class="korean_text">화려함 보다는 내면의 가치를 좇기를 <br> 험지를 만나도 중심을 잃지 않기를 <br> 얼마나 놀라운 당신인지 꾸준히 발견하기를.</span>');
    $('.car_showcase li img').attr('src', '/resources/images/contents/sec1_3_touareg.webp'); // 이미지 변경
});

$('.car_showcase .bev').on('mouseenter',function(){
    $('.car_showcase h2').html('The new ID<span class="special_text">.4</span> 출시') /* 차량 이름 변경 */
    $('.car_showcase p').html('<span class="korean_text">폭스바겐 <span class="special_text">.4</span>는 전기차 라이프를 시작하는 모든 이에게 <br>만족감을 선사합니다. 검증된 상품성과 주행 성능, <br>향상된 에너지 효율로 당신의 기대를 충족시킬 것입니다. <br></span>');
    $('.car_showcase li img').attr('src', '/resources/images/contents/sec1_6_id4.webp'); // 이미지 변경
});



/* 자바스크립트 코드 */
// document.addEventListener('DOMContentLoaded', function() {
//     document.querySelector('.car_showcase .new_car').addEventListener('mouseenter', function() {
//         document.querySelector('.car_showcase h2').textContent = 'Touareg'; /* 차량 이름 변경 */
//         document.querySelector('.car_showcase p').innerHTML = '화려함 보다는 내면의 가치를 좇기를 <br> 험지를 만나도 중심을 잃지 않기를 <br> 얼마나 놀라운 당신인지 꾸준히 발견하기를.';
//         document.querySelector('.car_showcase li img').setAttribute('src', '/resources/images/임시/20240806_COM_1722905034352.png'); // 이미지 변경
//     });
// });

// document.addEventListener('DOMContentLoaded', function() {
//     document.querySelector('.car_showcase .bev').addEventListener('mouseenter', function() {
//         document.querySelector('.car_showcase h2').textContent = 'ID.4'; /* 차량 이름 변경 */
//         document.querySelector('.car_showcase p').innerHTML = '폭스바겐 ID.4는 전기차 라이프를 시작하는 모든 이에게 <br>만족감을 선사합니다. 검증된 상품성과 주행 성능, <br>향상된 에너지 효율로 당신의 기대를 충족시킬 것입니다. <br>';
//         document.querySelector('.car_showcase li img').setAttribute('src', '/resources/images/임시/20240802_m9L_1722571530576.png'); // 이미지 변경
//     });
// });

/* --------------------------------------------------------------------------------------------------------------------------- */

/* 8개 이미지가 무한 슬라이드 */
let $slider = $('.model_promotion');
let $slides = $slider.find('li');
let totalSlides = $slides.length;
let slidesToShow = 4; // 한 번에 보여줄 슬라이드 수
var currentIndex = 0;
var slideInterval; // 자동 슬라이드 인터벌을 저장할 변수

// 슬라이드 복사하여 무한 루프 구현
for (var i = 0; i < slidesToShow; i++) {
    const $clone = $slides.eq(i).clone();
    $slider.append($clone);
}

function goToSlide(index) {
    $slider.css({
        'transition': 'transform 0.5s ease-in-out',
        'transform': `translateX(${-index * 100 / slidesToShow}%)`
    });
    currentIndex = index;
}

function nextSlide() {
    currentIndex++;
    goToSlide(currentIndex);

    // 슬라이드가 끝까지 갔다면 첫 번째 슬라이드로 돌아가도록 설정
    if (currentIndex >= totalSlides) {
        setTimeout(function() {
            $slider.css({
                'transition': 'none',
                'transform': `translateX(0)`
            });
            currentIndex = 0;
            // 짧은 시간 후 애니메이션 재시작
            setTimeout(function() {
                $slider.css('transition', 'transform 0.5s ease-in-out');
            }, 20);
        }, 500); // 애니메이션 시간과 동일하게 설정
    }
}

// 자동 슬라이드 시작
function startSlide() {
    slideInterval = setInterval(nextSlide, 2250);
}

// 자동 슬라이드 멈춤
function stopSlide() {
    clearInterval(slideInterval);
}

// 자동 슬라이드 시작
startSlide();

// 마우스가 슬라이더 위에 올라가면 자동 슬라이드 멈춤
$slider.on('mouseenter', stopSlide);

// 마우스가 슬라이더에서 벗어나면 자동 슬라이드 다시 시작
$slider.on('mouseleave', startSlide);