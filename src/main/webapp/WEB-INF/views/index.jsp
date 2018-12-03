<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>HANPASS-Remittance</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="편리한 해외송금 서비스. 외환 전문 핀테크 기업 한패스(HANPASS)" />
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="icon" href="static/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="static/css/base-en.css">
<link rel="stylesheet" href="static/css/intro.css">
<link rel="stylesheet" href="static/css/jquery.fullPage.css">
<link rel="stylesheet" href="static/css/plugin/ionicons-2.0.1/css/ionicons.min.css" >

<script type="text/javascript" src="static/js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="static/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="static/js/hanpass.js"></script>

<script type="text/javascript" src="static/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="static/js/jquery.fullPage.min.js"></script>
<script type="text/javascript" src="static/js/intro.js"></script>
<script type="text/javascript" src="static/js/jquery.touchToscroll.js"></script>
</head>
<body>
	<!-- wrapper -->
	<div class="mobile-menu-wrap">
		<p class="mobile-logo"><a href="#"><span class="hanpass">HANPASS</span><span class="title">Company</span></a></p>
		<p class="mobile-close-btn"><a href="#"></a></p>
		<ul class="mobile-mneu">
			<li><a href="/index">Gateway</a></li>
			<li><a href="/product">Product</a></li>
			<li>
				<a href="#">Company <span class="ion-plus"></span></a>
				<ul class="depth-3">
					<li>
						<a href="/news">News</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="#">SNS <span class="ion-plus"></span></a>
				<ul class="depth-2">
					<li>
						<a href="#">Facebook <span class="ion-plus"></span></a>
						<ul class="depth-3">
							<li>
								<a href="https://www.facebook.com/hanpass.kr" target="_blank">@Hanpass.kr</a>
							</li>
							<li>
								<a href="https://www.facebook.com/Hanpass.id/" target="_blank">@Hanpass.id</a>
							</li>
							<li>
								<a href="https://www.facebook.com/Hanpass.ph/" target="_blank">@Hanpass.ph</a>
							</li>
							<li>
								<a href="https://www.facebook.com/Hanpass.khmer/" target="_blank">@Hanpass.khmer</a>
							</li>
							<li>
								<a href="https://www.facebook.com/hanpass.np" target="_blank">@Hanpass.np</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#">Instagram<span class="ion-plus"></span></a>
						<ul class="depth-3">
							<li>
								<a href="https://www.instagram.com/hanpass_korea/" target="_blank">@Hanpass.korea</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#">Naverpost<span class="ion-plus"></span></a>
						<ul class="depth-3">
							<li>
								<a href="http://post.naver.com/lbcandhanpass" target="_blank">/lbcandhanpass</a>
							</li>
						</ul>
					</li>
				</ul>
			</li>
			<li>
				<a href="#">Language<span class="ion-plus"></span></a>
				<ul class="depth-3">
					<li>
						<a href="/index"><i class="lang en"></i>English</a>
					</li>
					<li>
						<a href="/kr/index"><i class="lang ko"></i>Korean</a>
					</li>
				</ul>
			</li>
		</ul>
		<div class="phone-wrap">
			<span class="one-text">Send it your way!</span>
			<span class="two-text">1522.0767</span>
			<span class="three-text">
				Weekdays 10:00 ~  21:00 /  Weekends 10:00 ~ 18:00
			</span>
		</div>
	</div>
	<div id="wrapper">
		<div id="bgpage">
			<!-- content -->

			<div class="wrapper-inner">
				<div class="intro-content">
					<header>
						<div class="header-inner">
							<h1><a href="#"><span class="hanpass">HANPASS</span><span class="title">Company</span></a></h1>
							<!-- gnb -->
							<nav id="gnb" style="display:none">
								<ul>
									<li><a href="#"></a></li>
								</ul>
							</nav><!--// gnb -->
							<ul class="util">
								<li>
									<a href="#"><span class="lang en"></span>ENG <span class="ion-android-arrow-dropdown"></span></a>
									<ul>
										<li><a href="/index"><i class="lang en"></i><span class="line">ENG</span></a></li>
										<li><a href="/kr/index"><i class="lang ko"></i><span class="line">KOR</span></a></li>
									</ul>
								</li>
							</ul>
							<div class="mobile-open-btn">
								<a href="#"></a>
							</div>
						</div>
					</header>
					<ul class="text-large-wrap">
						<li><h2 class="font-color-white">Hi, HANPASS<span>.</span></h2></li>
						<li><h2>Want it fast<span>?</span></h2></li>
						<li><h2>WHO WE ARE<span>?</span></h2></li>
						<li><h2 class="font-color-white">Explore more<span>.</span></h2></li>
					</ul>
					<ul class="text-small-wrap">
						<li class="font-color-white">We are a Fintech company based in South Korea<br>HANPASS is ready to make your life easier.</li>
						<li>Send money using just your fingertips.<br>Transactions are easy, fast, and efficient.</li>
						<li>HANPASS is a licensed remittance company who operates as an intermediary service <br>connecting customers through seamless integration.</li>
						<li class="font-color-white">HANPASS provides the best exchange rates, saves customers up to 90% in service fees,<br>and follows real-time standard exchange rates. </li>
					</ul>
					<ul class="more-btn">
						<li><a href="/company">LEARN MORE</a></li>
						<li><a href="/product">LEARN MORE</a></li>
						<li><a href="/company">LEARN MORE</a></li>
						<li><a href="/product">LEARN MORE</a></li>
					</ul>
				</div><!--// content -->
			</div>
			<!-- background -->
			<section class="section motion" id="section1"></section>
			<section class="section motion" id="section2"></section>
			<section class="section motion" id="section3"></section>
			<section class="section motion" id="section4"></section>
			<!--// background -->
		</div>
		<nav>
			<a data-menuanchor="firstPage" href="#firstPage" class="active" ><span>01</span></a>
			<a data-menuanchor="secondPage" href="#secondPage"><span>02</span></a>
			<a data-menuanchor="3rdPage" href="#3rdPage"><span>03</span></a>
			<a data-menuanchor="4thpage" href="#4thpage"><span>04</span></a>
		</nav>
	</div><!--// wrapper -->
</body>
</html>