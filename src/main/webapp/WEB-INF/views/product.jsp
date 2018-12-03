<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>HANPASS-Remittance</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="icon" href="static/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="static/css/base-en.css">
<link rel="stylesheet" href="static/css/contents.css">
<link rel="stylesheet" href="static/css/jquery.bxslider.css">
<link rel="stylesheet" href="static/css/plugin/ionicons-2.0.1/css/ionicons.min.css" >

<script type="text/javascript" src="static/js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="static/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="static/js/hanpass.js"></script>

<script type="text/javascript" src="static/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="static/js/jquery.bxslider-rahisified.js"></script>
<script type="text/javascript" src="static/js/common.js"></script>
<!--[if lt IE 9]>
	<script src="static/js/html5shiv.min.js"></script>
	<script src="static/js/respond.min.js"></script>
</head>
	<body>
<![endif]-->
	<!-- wrapper -->
	<div class="mobile-menu-wrap">
		<p class="mobile-logo"><a href="#"><span class="hanpass">HANPASS</span><span class="title">Product</span></a></p>
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
						<a href="/product"><i class="lang en"></i>English</a>
					</li>
					<li>
						<a href="/kr/product"><i class="lang ko"></i>Korean</a>
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
		<header>
			<div class="header-inner">
				<h1><a href="#"><span class="hanpass">HANPASS</span><span class="title">Product</span></a></h1>
				<!-- gnb -->
				<nav id="gnb" style="display:none">
					<ul>
						<li><a href="#"></a></li>
					</ul>
				</nav><!--// gnb -->
				<ul class="util">
					<li><a href="/company" class="active">Company</a></li>
					<li>
						<a href="#"><i class="lang en"></i>ENG <span class="ion-android-arrow-dropdown"></span></a>
						<ul>
							<li><a href="/product"><i class="lang en"></i><span class="line">ENG</span></a></li>
							<li><a href="/kr/product"><i class="lang ko"></i><span class="line">KOR</span></a></li>
						</ul>
					</li>
				</ul>
				<div class="mobile-open-btn">
					<a href="#"></a>
				</div>
			</div>
		</header>
		<div id="product">
			<section id="section-1">
				<div class="text-wrap">
					<p><span class="pd-large">Want it Fast?</span><span class="pd-large-xs">HANPASS</span></p>
					<p class="pd-small">Send money using just your fingertips.<br>Transactions are easy, fast, and efficient.</p>
					<ul class="btn-set">
						<li><a href="https://play.google.com/store/apps/details?id=com.hanpass.remittance" target="_blank"><img src="static/images/btn-googleplay.png" alt="googleplay"></a></li>
						<li><a href="https://itunes.apple.com/app/id1344407760" target="_blank"><img src="static/images/btn-appstore_open.png" alt="appstore"></a></li>
					</ul>
				</div>
				<div class="img"></div>
			</section>
			<section id="section-2" class="text-align-center">
				<div class="text-wrap">
					<p class="pd-large">Send Easily with <span>Your FingerTips</span></p>
					<p class="pd-small">Want to learn more? Start by clicking our tutorial Videos!</p>
				</div>
				<div class="btn-set">
					<a href="#" class="blue">Send Money <span class="ion-android-arrow-dropright-circle"></span></a>
					<a href="#" class="white">Bank Account <span class="ion-android-arrow-dropright-circle"></span></a>
				</div>
				<div class="img"></div>
			</section>
			<section id="section-3" class="text-align-center">
				<div class="text-wrap">
					<p class="pd-large">Are you still using the <span>Bank?</span></p>
					<p class="pd-small">No need to waste your valuable time and pay more fees!</p>
				</div>
				<ul class="item-wrap">
					<li style="display:block"><img src="static/images/img-pd-3-1.jpg" alt=""><span>Send money easily with just a click</span></li>
					<li><img src="static/images/img-pd-3-2.jpg" alt=""><span>Make your transactions anytime you want!</span></li>
					<li><img src="static/images/img-pd-3-3.jpg" alt=""><span>Service fees are 90% cheaper than banks</span></li>
					<li><img src="static/images/img-pd-3-4.jpg" alt=""><span>Guaranteed to send and receive within 24 Hours</span></li>
				</ul>
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
							<span class="txt">Save<br>up to 90%</span>
						</a>
					</li>
					<li>
						<a href="#">
							<span class="number">4</span>
							<span class="txt">24 Hours</span>
						</a>
					</li>
				</ul>
			</section>
			<section id="section-4" class="text-align-center">
				<div class="text-wrap">
					<p class="pd-large">Send it <span>Your Way</span></p>
					<p class="pd-small">Choose from our many payout options.</p>
				</div>
				<div class="img">
					<div class="item pos1">
						<p class="large-text">Cash pickup</p>
						<p class="small-text">Pick up your money at our partner branches</p>
					</div>
					<div class="item pos2">
						<p class="large-text">Bank transfer</p>
						<p class="small-text">Send money to your local bank</p>
					</div>
					<div class="item pos3">
						<p class="large-text">Cash card</p>
						<p class="small-text">Send money to your cash card</p>
					</div>
					<div class="item pos4">
						<p class="large-text">Door to Door</p>
						<p class="small-text">Send money directly to your doorsteps</p>
					</div>
				</div>
			</section>
			<section id="section-5" class="text-align-center">
				<div class="text-wrap">
					<p class="pd-large">We are the Best <span>Choice</span></p>
					<p class="pd-small">More reasons to use Hanpass!</p>
				</div>
				<div class="img">
					<div class="content-inner">
						<ul class="left-cont">
							<li class="img1" style="display:block"></li>
							<li class="img2"></li>
							<li class="img3"></li>
						</ul>
						<ul class="right-cont">
							<li>
								<a href="#" class="active">
									<span class="number">1</span>
									<span class="text-wrap">
										<span class="title">Security</span>
										<span class="infor">
											Our security system ensures the safety of your personal information.
										</span>
									</span>
								</a>
							</li>
							<li>
								<a href="#">
									<span class="number">2</span>
									<span class="text-wrap">
										<span class="title">Global Partners</span>
										<span class="infor">
											We select the most reliable partners for you.
										</span>
									</span>
								</a>
							</li>
							<li>
								<a href="#">
									<span class="number">3</span>
									<span class="text-wrap">
										<span class="title">Insurance Guaranteed</span>
										<span class="infor">
											We cover 100% of your remittance in case of unexpected issues.
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
					<p class="pd-large">Can’t Speak Korean? <span>Don’t Worry!</span></p>
					<p class="pd-small">We have staffs to help you in your languages. Our effort to assist you is never ending.</p>
				</div>
				<div class="img">
					<div class="map kor"><a href="#"></a></div>
					<div class="map eng"><a href="#"></a></div>
					<div class="map indo"><a href="#"></a></div>
					<div class="map khmer"><a href="#"></a></div>
					<div class="map np"><a href="#"></a></div>
					<div class="map ph"><a href="#"></a></div>
				</div>
			</section>

		</div>
		<footer>
			<div class="footer-top">
				<p class="text-tel">1522.0767</p>
				<p class="text-time">
					<strong>Weekdays 10:00 ~  21:00 /  Weekends 10:00 ~ 18:00 </strong>
				</p>
				<div class="text-wrap">
					<span><strong>Location .</strong> 4F, 92 Achasan-ro, Seongdong-gu, Seoul, Republic of Korea (04782)</span>
					<span><strong>Fax .</strong> +82 2.3674.5988</span>
					<span><strong>Email .</strong> Contact@Hanpass.com</span>
				</div>
				<div class="footer-menu">
					<a href="/news">News</a>
				</div>
			</div>
			<div class="footer-bottom">
				<div class="footer-inner">
					<p class="footer-logo"><a href="#"><img src="static/images/footer-logo.png" alt="hanpass"></a></p>
					<p class="copyright">Copyright Ⓒ HANPASS Co.,Ltd. 2018 All rights reserved.</p>
				</div>
			</div>
		</footer>
	</div><!--// wrapper -->
</body>
</html>