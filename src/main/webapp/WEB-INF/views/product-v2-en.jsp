<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en" xml:lang="en">
<head>
<meta charset="utf-8">
<title>한패스</title>
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta id="_csrf" name="_csrf" th:content="${_csrf.token}"/>
<meta id="_csrf_header" name="_csrf_header" th:content="${_csrf.headerName}"/>
<link href="static/images/favicon.ico?" rel="icon" type="image/x-icon" />
<link rel="shortcut icon" href="static/images/favicon.ico?" type="image/x-icon" />
<link rel="stylesheet" href="static/css/base-en.css">
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
				<p class="mobile-logo"><a href="/product"><span class="hanpass">HANPASS</span><span class="title">PRODUCT</span></a></p>
				<p class="mobile-close-btn"><a href="#"></a></p>
				<ul class="mobile-mneu">
					<li>
						<a href="#">PRODUCT <span class="ico-minus"></span></a>
						<ul class="depth-2">
							<li>
								<a href="/product" class="active">REMITTANCE</a>
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
								<a href="/company">Hi, HANPASS</a>
							</li>
							<li>
								<a href="/aboutus">ABOUT US</a>
							</li>
							<li>
								<a href="/service">SERVICE</a>
							</li>
							<li>
								<a href="/partner">PARTNER</a>
							</li>
							<li>
								<a href="/news">NEWS</a>
							</li>
							<li>
								<a href="/contactus">CONTACT US</a>
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
						<a href="/faq">FAQ</a>
					</li>
					<li>
						<a href="/terms">TERMS</a>
					</li>
				</ul>
				<div class="phone-wrap">
					<span class="one-text">Customer Service</span>
					<span class="two-text">02.1522.0767</span>
					<span class="three-text">
						Weekdays : 09:00 - 21:00<br/>
						Weekends / Holidays : 10:00 - 18:00<br/><br/>
						Tel .  (+82) 2.3409.1540<br/>
						Business hours 09:00AM - 06:00PM  Lunch hour 12:00PM - 01:00PM (Closed on weekends and national holidays)

					</span>
				</div>
			</div>
		</div><!--// all menu -->
		<!-- header -->
		<header>
			<div class="header-inner">
				<h1><a href="/product"><span class="hanpass">HANPASS</span><span class="title">PRODUCT</span></a></h1>
				<!-- gnb -->
				<nav class="gnb ns-en">
					<ul>
						<li><a href="/product" class="active">REMITTANCE</a></li>
						<%--<li><a href="/exchange" >EXCHANGE</a></li>--%>
					</ul>
				</nav><!--// gnb -->
				<ul class="util">
					<li><a href="/company" class="active">COMPANY</a></li>
					<li>
						<a href="#"><i class="lang en"></i>ENG <span class="ion-android-arrow-dropdown"></span></a>
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
		</header>
		<div id="product">
			<!-- HANPASS SOURCE HTML -->
			<section id="section-1">
				<div class="bg-wrap">
					<div class="money-text-set">
						<p class="pd-first-middle">Send it your way</p>
						<p class="pd-first-large">HANPASS</p>
						<p class="pd-first-small">Want to see how much money you can save with HANPASS?<br class="mobile-hidden"> You can save up to 90% compared to other remittance services.</p>
					</div>
					<!-- money-infor-wrap -->
					<div class="money-infor-wrap">
						<div class="money-infor">
							<!-- money-infor-inner -->
							<div class="money-infor-inner deposit">
								<p class="money-title">You Deposit <span>(Service charge included)</span></p>
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
								<p class="money-title">Recipient Gets</p>
								<p id="receive_error_txt" class="input-error-text" style="display:inline-block; height:15"></p>
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
								<div class="option-title">Remittance Option<span>(Service charge may vary)</span></div>
								<div class="option-btn">
									<a href="#"><input id="selected_option" type="hidden" value="CASH_PICK_UP"/><span class="currencies-list-txt">Cash Pickup</span> <i class="icon-arrow white"></i></a>									
								</div>
								<!-- popup -->
								<div class="currencies-popup">
									<p class="currencies-title">Remittance Options</p>
									<ul>
										<li class="option"><a href="#" onclick="return false"><span class="currencies-list-txt"><input type="hidden" value="CASH_PICK_UP"/>Cash Pickup</span></a></li>
										<li class="option"><a href="#" onclick="return false"><span class="currencies-list-txt"><input type="hidden" value="BANK_TRANSFER"/>Bank Transfer</span></a></li>																					
									</ul>
								</div><!--// popup -->
							</div>
							<div id="currency_rate" class="rate-text">
								1KRW = ${result.rate} PHP
							</div>
							<div class="service-wrap">
								<p class="left-text">Service Charge<span>(Hanpass + Remittance Option Fee)</span></p>
								<p id="service_charge" class="right-text">${result.fee.substring(0,result.fee.indexOf('.'))} KRW</p>
							</div>
						</div><!--// option-wrap -->
					</div><!-- money-infor-wrap -->
					<div class="bank-list-wrap">
						* Additional charges may apply when selecting remittance options.<br>
						* Please contact customer service for assistance.
					</div>
				</div>				
			</section>
			<!-- app-download -->
			<div class="app-download-wrap">
				<a href="https://play.google.com/store/apps/details?id=com.hanpass.remittance" target="_blank" class="app-btn google">
					<img src="static/images/ico-googleplay-1920.png" alt=""> Google Play
				</a>
				<a href="https://itunes.apple.com/app/id1344407760" target="_blank" class="app-btn ios">
					<img src="static/images/ico-iosplay-1920.png" alt=""> App Store
				</a>
			</div>
			<!--// app-download -->
			<!--// HANPASS SOURCE HTML -->
			<section id="section-2" class="text-align-center">
				<div class="text-wrap">
					<p class="pd-large">Your transfers at <span class="pd-block">your fingertips</span></p>
					<p class="pd-small">Learn more with our tutorial videos.</p>
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
						Sending money</a>
					<a href="#m2">
						<span>
							<picture>
								<source media="(max-width:480px)" srcset="static/images/btn-play-480.png">
								<img src="static/images/btn-play.png" alt="">
							</picture>
						</span>
					Connecting bank account</a>
				</div>			
			</section>
			<section id="section-3" class="text-align-center">
				<div class="text-wrap">
					<p class="pd-large">Tired of slow <span class="pd-block">bank services?</span></p>
					<p class="pd-small">Save your time and money with HANPASS!</p>
				</div>
				<div class="owl-carousel owl-theme">
					<div class="item"><img src="static/images/img-pd-3-1.jpg" alt=""><span class="item-title">Anywhere</span><span class="item-infor">Send money at your fingertips.</span></div>
					<div class="item"><img src="static/images/img-pd-3-2.jpg" alt=""><span class="item-title">24 Hours</span><span class="item-infor">Our process time is guaranteed in a day.</span></div>
					<div class="item"><img src="static/images/img-pd-3-3.jpg" alt=""><span class="item-title">Save</span><span class="item-infor">Competitive service fees.</span></div>
					<div class="item"><img src="static/images/img-pd-3-4.jpg" alt=""><span class="item-title">Anytime</span><span class="item-infor">Available anytime of the day.</span></div>
				</div>
				<ul class="item-lst">
					<li>
						<a href="#" class="active">
							<span class="number">1</span>
							<span class="txt">Anywhere</span>
						</a>
					</li>
					<li>
						<a href="#">
							<span class="number">2</span>
							<span class="txt">Anytime</span>
						</a>
					</li>
					<li>
						<a href="#">
							<span class="number">3</span>
							<!-- HANPASS SOURCE HTML -->
							<span class="txt">Save <br class="mobile-hidden">up to 90%</span>
							<!--// HANPASS SOURCE HTML -->
						</a>
					</li>
					<li>
						<a href="#">
							<span class="number">4</span>
							<span class="txt">24-hour turnaround</span>
						</a>
					</li>
				</ul>
			</section>
			<section id="section-4" class="text-align-center">
				<div class="text-wrap">
					<p class="pd-large">Send it <span>your way!</span></p>
					<p class="pd-small">HANPASS Payout options.</p>
				</div>
				<div class="img">
					<div class="item pos1">
						<p class="large-text">Cash Pickup</p>
						<p class="small-text">Pick up at our official partnered HQ Offices</p>
					</div>
					<div class="item pos2">
						<p class="large-text">Bank Transfer</p>
						<p class="small-text">Deposit to any bank accounts in your contury</p>
					</div>
					<div class="item pos3">
						<p class="large-text">Cash Card</p>
						<p class="small-text">Send it to any cash card holders</p>
					</div>
					<div class="item pos4">
						<p class="large-text">Door to Door</p>
						<p class="small-text">Safe delivery to your doorsteps </p>
					</div>
				</div>
			</section>
			<section id="section-5" class="text-align-center">
				<div class="text-wrap">
					<p class="pd-large">Ultimate <span>choice</span></p>
					<p class="pd-small">Let your day-to-day financial life be stress-free!</p>
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
										<span class="title">Security</span>
										<span class="infor">
											We protect your information under our secured system.
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
										<span class="title">Global partners</span>
										<span class="infor">
											Our strong network brings you a reliable service.
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
										<span class="title">Transparency</span>
										<span class="infor">
											Our process is honest and open. We guarantee you great service quality.
										</span>
									</span>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</section>
			<section id="section-6">
				<div class="text-wrap text-align-center">
					<p class="pd-large">Universal <span>HANPASS</span></p>
					<p class="pd-small">We listen to your stories! We have multilingual staff to assist you.</p>
				</div>
				<!-- 0802 수정 -->
				<div class="map-wrap">
					<div class="flag-lst">
						<span class="flag-item">
							<span class="flag-ico kr"></span><span class="flag-name">Korean</span>
						</span>
						<span class="flag-item">
							<span class="flag-ico en"></span><span class="flag-name">English</span>
						</span>
						<span class="flag-item">
							<span class="flag-ico kh"></span><span class="flag-name" style="font-family:Noto Sans Khmer UI">ភាសាខ្មែរ</span>
						</span>
						<span style="display:block">
							<span class="flag-item">
								<span class="flag-ico id"></span><span class="flag-name">Bahasa Indonesia</span>
							</span>
							<span class="flag-item">
								<span class="flag-ico np"></span><span class="flag-name" style="font-family:Noto Sans Devanagari UI">नेपाली</span>
							</span>
							<span class="flag-item">
								<span class="flag-ico ph"></span><span class="flag-name">Tagalog</span>
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
<%@include file="./footer.jsp"%>
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