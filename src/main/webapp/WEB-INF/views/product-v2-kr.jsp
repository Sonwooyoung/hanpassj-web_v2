<%@ page import="java.util.Date" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko" xml:lang="ko">
<head>
<meta charset="utf-8">
<title>한패스</title>
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link href="static/images/favicon.ico?" rel="icon" type="image/x-icon" />
<link rel="shortcut icon" href="static/images/favicon.ico?" type="image/x-icon" />
<link rel="stylesheet" href="static/css/base.css">
<link rel="stylesheet" href="static/css/contents.css">
<link rel="stylesheet" href="static/css/owl.carousel.min.css">
<link rel="stylesheet" href="static/css/plugin/ionicons-2.0.1/css/ionicons.min.css" >
<link rel="stylesheet" href="static/css/owl.theme.default.css" >
<script type="text/javascript" src="static/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="static/js/owl.carousel.min.js"></script>
<script type="text/javascript" src="static/js/common.js"></script>
<!--[if lt IE 9]>
	<script src="static/js/html5shiv.min.js"></script>
	<script src="static/js/respond.min.js"></script>
<![endif]-->
<script type="text/javascript" src="static/js/hanpass_product.js"></script>
</head>
<body>
	<!-- wrapper -->
	<div id="wrapper">
		<!-- all menu -->
		<div class="mobile-menu-wrap">
			<div class="mobile-menu-inner">
				<p class="mobile-logo ns-en"><a href="/kr/product"><span class="hanpass">HANPASS</span><span class="title">PRODUCT</span></a></p>
				<p class="mobile-close-btn"><a href="#"></a></p>
				<ul class="mobile-mneu ns-en">
					<li>
						<a href="#">PRODUCT <span class="ico-minus"></span></a>
						<ul class="depth-2">
							<li>
								<a href="/kr/product" class="active">REMITTANCE</a>
							</li>
							<%--<li>
								<a href="/exchange">EXCHANGE</a>
							</li>--%>
						</ul>
					</li>
					<li>
						<a href="#">COMPANY <span class="ico-minus"></span></a>
						<ul class="depth-2">
							<li>
								<a href="/kr/company">Hi, HANPASS</a>
							</li>
							<li>
								<a href="/kr/aboutus">ABOUT US</a>
							</li>
							<li>
								<a href="/kr/service">SERVICE</a>
							</li>
							<li>
								<a href="/kr/partner">PARTNER</a>
							</li>
							<li>
								<a href="/kr/news">NEWS</a>
							</li>
							<li>
								<a href="/kr/contactus">CONTACT US</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#">SNS <span class="ico-minus"></span></a>
						<ul class="depth-2 dep">
							<li>
								<a href="#">INSTAGRAM<span class="ico-minus"></span><i class="menu-line"></i></a>
								<ul class="depth-3">
									<li>
										<a href="https://www.instagram.com/hanpass_korea/" target="_blank">@hanpass.korea</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="#">FACEBOOK <span class="ico-minus"></span><i class="menu-line"></i></a>
								<ul class="depth-3 pos2">
									<li>
										<a href="https://www.facebook.com/hanpass.kr" target="_blank">@hanpass.kr</a>
									</li>
									<li>
										<a href="https://www.facebook.com/Hanpass.id/" target="_blank">@hanpass.id</a>
									</li>
									<li>
										<a href="https://www.facebook.com/Hanpass.ph/" target="_blank">@hanpass.ph</a>
									</li>
									<li>
										<a href="https://www.facebook.com/Hanpass.khmer/" target="_blank">@hanpass.khmer</a>
									</li>
									<li>
										<a href="https://www.facebook.com/hanpass.np" target="_blank">@hanpass.np</a>
									</li>
                                    <li>
                                        <a href="https://www.facebook.com/hanpass.vnm" target="_blank">@hanpass.vnm</a>
                                    </li>
								</ul>
							</li>
							<li>
								<a href="#">NAVERPOST<span class="ico-minus"></span><i class="menu-line"></i></a>
								<ul class="depth-3 pos3">
									<li>
										<a href="http://post.naver.com/lbcandhanpass" target="_blank">/lbcandhanpass</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="https://blog.naver.com/hanpassmaster">NAVERBLOG<i class="menu-line"></i></a>
							</li>
							<li>
								<a href="https://www.youtube.com/channel/UCukxZqozxNQft2H60_E0e2A/featured">YOUTUBE<i class="menu-line"></i></a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#">LANGUAGE<span class="ico-minus"></span></a>
						<ul class="depth-2">
							<li>
								<a href="/kr/product"><i class="lang ko"></i>KOREAN</a>
							</li>
							<li>
								<a href="/product"><i class="lang en"></i>ENGLISH</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="/kr/faq">FAQ</a>
					</li>
					<li>
						<a href="/kr/terms">TERMS</a>
					</li>
				</ul>
				<div class="phone-wrap">
					<span class="one-text">송금고객센터</span>
					<span class="two-text">02.1522.0767</span>
					<span class="three-text">
						평일 : 09:00 - 21:00<br/>
						주말 / 공휴일 : 10:00 - 18:00<br/><br/>
						전화 . (+82) 2.3409.1540<br/>
						평일 . 09:00AM - 06:00PM 점심시간 . 12:00PM - 01:00PM (토/일/공휴일 휴무)

					</span>
				</div>
			</div>
		</div><!--// all menu -->
		<!-- header -->
		<header>
			<div class="header-inner">
				<h1 class="ns-en"><a href="/kr/product"><span class="hanpass">HANPASS</span><span class="title">PRODUCT</span></a></h1>
				<!-- gnb -->
				<nav class="gnb ns-en">
					<ul>
						<li><a href="/kr/product" class="active">REMITTANCE</a></li>
						<%--<li><a href="/exchange" >EXCHANGE</a></li>--%>
					</ul>
				</nav><!--// gnb -->
				<ul class="util ns-en">
					<li><a href="/kr/company" class="active">COMPANY</a></li>
					<li>
						<a href="#"><i class="lang ko"></i>KOR <span class="ion-android-arrow-dropdown"></span></a>
						<ul>
							<li><a href="/kr/product"><i class="lang ko"></i><span class="line">KOR</span></a></li>
							<li><a href="/product"><i class="lang en"></i><span class="line">ENG</span></a></li>
						</ul>
					</li>
				</ul>
				<div class="mobile-open-btn">
					<a href="#"></a>
				</div>
			</div>
		</header><!--// header -->
		<div id="product">
			<!-- HANPASS SOURCE HTML -->
			<section id="section-1">
				<div class="bg-wrap">
					<div class="money-text-set">
						<p class="pd-first-middle">이제는 나만의 방식으로!</p>
						<p class="pd-first-large ns-en">HANPASS</p>
						<p class="pd-first-small">비싼 해외송금 수수료가 부담되시나요? <br class="mobile-hidden">이제 한패스와 함께 최대 90% 저렴한 수수료로 송금하세요.</p>
					</div>
					<!-- money-infor-wrap -->
					<div class="money-infor-wrap">
						<div class="money-infor">
							<!-- money-infor-inner -->
							<div class="money-infor-inner deposit">
								<p class="money-title">입금액 <span>(수수료 포함)</span></p>
								<p id="deposit_error_txt" class="input-error-text" style="display:inline-block; height:15"></p>
								<div class="input-inbox ns-en">
									<input type="text" id="deposit_amount" name="" value="">
									<div class="flag-btn">
										<a href="#">
											<span class="flag-large kr"></span><span id="deposit_curr" class="flag-btn-txt">KRW</span><i class="icon-arrow"></i>
										</a>
									</div>
								</div>
							</div><!--// money-infor-inner -->
							<!-- money-infor-inner -->
							<div class="money-infor-inner recipient">
								<p class="money-title">받는 금액</p>
								<p id="receive_error_txt" class="input-error-text" style="display:inline-block; height:15"><span class="ns-en"></span></p>
								<div class="input-inbox ns-en">
									<input type="text" id="receive_amount" name="" value="">
									<div class="flag-btn recipient">
										<input id="selected_reci_country_code" type="hidden" value="ph"/>
										<a href="#">
											<span class="flag-large ph"></span><span id="receive_curr" class="flag-btn-txt">PHP</span> <i class="icon-arrow"></i>
										</a>
									</div>
									<!-- popup -->
									<div class="currencies-popup">
										<p class="currencies-title">Currencies</p>
										<ul>

										</ul>
									</div><!--// popup -->
								</div>
							</div><!--// money-infor-inner -->
						</div>
						<!-- option-wrap -->
						<div class="option-wrap">
							<div class="option-inner">
								<div class="option-title">받는 방법<span>(서비스 요금은 다를 수 있습니다)</span></div>
								<div class="option-btn">
									<a href="#"><input id="selected_option" type="hidden" value="CASH_PICK_UP"/><span class="currencies-list-txt">캐시 픽업</span> <i class="icon-arrow white"></i></a>
								</div>
								<!-- popup -->
								<div class="currencies-popup">
									<p class="currencies-title">받는 방법</p>
									<ul>
										<li class="option"><a href="#" onclick="return false"><span class="currencies-list-txt"><input type="hidden" value="CASH_PICK_UP"/>캐시 픽업</span></a></li>
										<li class="option"><a href="#" onclick="return false"><span class="currencies-list-txt"><input type="hidden" value="BANK_TRANSFER"/>계좌 이체</span></a></li>
									</ul>
								</div><!--// popup -->
							</div>
							<div id="currency_rate" class="rate-text ns-en">
								1KRW = 0.0472069 PHP
							</div>
							<div class="service-wrap">
								<p class="left-text">서비스 수수료<span>(한패스 + 받는 방법 수수료)</span></p>
								<p id="service_charge" class="right-text ns-en">8,000 KRW</p>
							</div>
						</div><!--// option-wrap -->
					</div><!-- money-infor-wrap -->
					<div class="bank-list-wrap">
						* 받는 방법에 따라 수수료가 추가될 수 있습니다.<br>
						* 궁금한 점이 있으시면 고객센터로 문의해주세요.
					</div>
				</div>
			</section>
			<!-- app-download -->
			<div class="app-download-wrap">
				<a href="https://play.google.com/store/apps/details?id=com.hanpass.remittance" target="_blank" class="app-btn google ns-en">
					<img src="static/images/ico-googleplay-1920.png" alt=""> Google Play
				</a>
				<a href="https://itunes.apple.com/app/id1344407760" target="_blank" class="app-btn ios ns-en">
					<img src="static/images/ico-iosplay-1920.png" alt=""> App Store
				</a>
			</div>
			<!--// app-download -->
			<!--// HANPASS SOURCE HTML -->
			<section id="section-2" class="text-align-center">
				<div class="text-wrap">
					<p class="pd-large">최소한의 터치로 <span class="pd-block">간편송금</span></p>
					<p class="pd-small">궁금하다구요? 아래의 소개영상과 함께 지금 시작하세요!</p>
				</div>
				<div class="img">
					<picture>
						<source media="(max-width:320px)" srcset="static/images/img-pd-2-480.jpg">
						<source media="(max-width:480px)" srcset="static/images/img-pd-2-480.jpg">
						<source media="(max-width:750px)" srcset="static/images/img-pd-2-1920.jpg">
						<source media="(max-width:1024px)" srcset="static/images/img-pd-2-1920.jpg">
						<img src="static/images/img-pd-2-1920.jpg" alt="">
					</picture>
				</div>
				<div class="btn-set">
					<a href="#m1">
						<span>
							<picture>
								<source media="(max-width:480px)" srcset="static/images/btn-play-480.png">
								<img src="static/images/btn-play.png" alt="">
							</picture>
						</span>
						송금방법</a>
					<a href="#m1">
						<span>
							<picture>
								<source media="(max-width:480px)" srcset="static/images/btn-play-480.png">
								<img src="static/images/btn-play.png" alt="">
							</picture>
						</span>
					계좌등록방법</a>
				</div>
			</section>
			<section id="section-3" class="text-align-center">
				<div class="text-wrap">
					<p class="pd-large">언제, 어디서나 <span class="pd-block"><span class="font-color-black">가능한</span> 해외송금</span></p>
					<p class="pd-small">원하는 시간에 최저의 송금 수수료로 송금이 가능합니다.</p>
				</div>
				<div class="owl-carousel owl-theme">
					<div class="item"><img src="static/images/img-pd-3-1.jpg" alt=""><span class="item-title">어디서나</span><span class="item-infor">이제 단 한번의 클릭으로 쉽게!</span></div>
					<div class="item"><img src="static/images/img-pd-3-2.jpg" alt=""><span class="item-title">언제든지</span><span class="item-infor">365일 내내 주말, 휴일없이 송금하세요.</span></div>
					<div class="item"><img src="static/images/img-pd-3-3.jpg" alt=""><span class="item-title">수수료 90%까지</span><span class="item-infor">은행보다 최대 90%까지 저렴한 송금수수료</span></div>
					<div class="item"><img src="static/images/img-pd-3-4.jpg" alt=""><span class="item-title">24시간 이내</span><span class="item-infor">최대 24시간 이내 송금보장</span></div>
				</div>
				<ul class="item-lst">
					<li>
						<a href="#" class="active">
							<span class="number">1</span>
							<span class="txt">어디서나</span>
						</a>
					</li>
					<li>
						<a href="#">
							<span class="number">2</span>
							<span class="txt">언제든지</span>
						</a>
					</li>
					<li>
						<a href="#">
							<span class="number">3</span>
							<!-- HANPASS SOURCE HTML -->
							<span class="txt">수수료<br class="mobile-hidden"> 90%까지</span>
							<!--// HANPASS SOURCE HTML -->
						</a>
					</li>
					<li>
						<a href="#">
							<span class="number">4</span>
							<span class="txt">24시간 이내</span>
						</a>
					</li>
				</ul>
			</section>
			<section id="section-4" class="text-align-center">
				<div class="text-wrap">
					<p class="pd-large">이제는 <span>나만의 방식</span>으로!</p>
					<p class="pd-small">다양한 해외 송금 방법으로 더욱 쉽고, 빠르게 보냅니다.</p>
				</div>
				<div class="img">
					<div class="item pos1">
						<p class="large-text">캐시 픽업</p>
						<p class="small-text">한패스 공식 파트너<br class="mobile-hidden">현지 지점에서 수령가능</p>
					</div>
					<div class="item pos2">
						<p class="large-text">계좌 이체</p>
						<p class="small-text">원하는 현지 은행계좌로 송금가능</p>
					</div>
					<div class="item pos3">
						<p class="large-text">캐시 카드</p>
						<p class="small-text">이젠 해외송금도<br class="mobile-hidden">캐시 카드와 함께</p>
					</div>
					<div class="item pos4">
						<p class="large-text">캐시 딜리버리</p>
						<p class="small-text">집으로 직접 찾아가는 송금</p>
					</div>
				</div>
			</section>
			<section id="section-5" class="text-align-center">
				<div class="text-wrap">
					<p class="pd-large">당신의 <span>탁월한 선택</span></p>
					<p class="pd-small">한패스만의 강력한 보안 검증으로 인해 안전하게 송금이 가능합니다.</p>
				</div>
				<div class="img">
					<div class="content-inner">
						<ul class="right-cont">
							<li>
								<a href="#" class="active">
									<span class="pic img1"></span>
									<span class="pic-750">
										<img src="static/images/img-pd-5-2-750.jpg" alt="">
									</span>
									<span class="number">1</span>
									<span class="text-wrap">
										<span class="title">철저한 보안</span>
										<span class="infor">
											고객들의 개인정보 보호를 위해 한패스만의 강력한 보안 검증으로 데이터가 암호화 됩니다.
										</span>
									</span>
								</a>
							</li>
							<li>
								<a href="#">
									<span class="pic img2"></span>
									<span class="pic-750">
										<img src="static/images/img-pd-5-3-750.jpg" alt="">
									</span>
									<span class="number">2</span>
									<span class="text-wrap">
										<span class="title">인증된 파트너사</span>
										<span class="infor">
											글로벌 네트워크, 해외 파트너사들이 저희와 함께 합니다.
										</span>
									</span>
								</a>
							</li>
							<li>
								<a href="#">
									<span class="pic img3"></span>
									<span class="pic-750">
										<img src="static/images/img-pd-5-4-750.jpg" alt="">
									</span>
									<span class="number">3</span>
									<span class="text-wrap">
										<span class="title">신뢰할 수 있는 송금 서비스</span>
										<span class="infor">
											송금과정의 투명성을 높여 고객의 해외 송금 거래를 100% 책임집니다.
										</span>
									</span>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</section>
			<section id="section-6" class="text-align-center">
				<div class="text-wrap">
					<p class="pd-large">누구나 쉽게 만나는 <span>한패스</span></p>
					<p class="pd-small">한패스는 고객을 위한 노력을 멈추지 않을 것입니다.<br class="mobile-hidden">우리는 글로벌 고객들을 위해 다국어 고객센터를 운영하여 보다 가깝게 다가갑니다.</p>
				</div>
				<!-- 0802 수정 -->
				<div class="map-wrap">
					<div class="flag-lst">
						<span class="flag-item">
							<span class="flag-ico kr"></span><span class="flag-name ns-en">Korean</span>
						</span>
						<span class="flag-item">
							<span class="flag-ico en"></span><span class="flag-name ns-en">English</span>
						</span>
						<span class="flag-item">
							<span class="flag-ico kh"></span><span class="flag-name" style="font-family:Noto Sans Khmer UI">ភាសាខ្មែរ</span>
						</span>
						<span style="display:block">
							<span class="flag-item">
								<span class="flag-ico id"></span><span class="flag-name ns-en">Bahasa Indonesia</span>
							</span>
							<span class="flag-item">
								<span class="flag-ico np"></span><span class="flag-name" style="font-family:Noto Sans Devanagari UI">नेपाली</span>
							</span>
							<span class="flag-item">
								<span class="flag-ico ph"></span><span class="flag-name ns-en">Tagalog</span>
							</span>
							<span class="flag-item">
								<span class="flag-ico vn"></span><span class="flag-name" style="font-family:Noto Serif Thai;">Tiếng Việt</span>
							</span>
						</span>
					</div>
					<div class="flag-map">
						<picture>
							<source media="(max-width:750px)" srcset="static/images/exchange/img-pd-6-1-750@2x.png">
							<img src="static/images/exchange/img-pd-6-1-bg.png" alt="">
						</picture>
					</div>
				</div>
				<!--// 0802 수정 -->
			</section>

		</div>
<%@include file="./footer-kr.jsp"%>
		<!-- movie-layer -->
		<div class="movie-layer" style="display:none">
			<div class="movie-layer-inner">
				<p class="movie-layer-title"></p>
				<p class="movie-close"><a href="#"><img src="static/images/btn-movie-close.png" alt=""></a></p>
				<div id="m1"><iframe src="https://www.youtube.com/embed/K4QvatKcSvA" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe></div>
				<div id="m2"><iframe src="https://www.youtube.com/embed/1YUzidhdqXM" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe></div>
			</div>
		</div>
		<!--// movie-layer -->
	</div><!--// wrapper -->
	<script src="static/js/jquery.mousewheel.min.js"></script>
</body>
</html>