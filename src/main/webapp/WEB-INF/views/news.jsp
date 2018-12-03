<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>HANPASS-Remittance</title>
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
<![endif]-->
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
						<a href="/news"><i class="lang en"></i>English</a>
					</li>
					<li>
						<a href="/kr/news"><i class="lang ko"></i>Korean</a>
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
				<h1><a href="#"><span class="hanpass">HANPASS</span><span class="title">Company</span></a></h1>
				<!-- gnb -->
				<nav id="gnb" style="display:none">
					<ul>
						<li><a href="#"></a></li>
					</ul>
				</nav><!--// gnb -->
				<ul class="util">
					<li><a href="/product" class="active">Product</a></li>
					<li>
						<a href="#"><i class="lang en"></i>ENG <span class="ion-android-arrow-dropdown"></span></a>
						<ul>
							<li><a href="/news"><i class="lang en"></i><span class="line">ENG</span></a></li>
							<li><a href="/kr/news"><i class="lang ko"></i><span class="line">KOR</span></a></li>
						</ul>
					</li>
				</ul>
				<!-- mobile-open-btn -->
				<div class="mobile-open-btn">
					<a href="#"></a>
				</div><!--// mobile-open-btn -->
			</div>
		</header>
		<!-- news content -->
		<div class="news">
			<div class="news-head">
				<p class="news-title">
					<span>Appeal</span>
					<span>to People</span>
				</p>
				<div class="book"><img src="static/images/img-news-book.png" alt="book"></div>
				<dl class="infor-text-wrap">
					<dt>News</dt>
					<dd>
						Interesting news, events and promotions updated regularly  You can see more about what is happening with HANPASS.
					</dd>
				</dl>
			</div>
			<div class="news-contents">
				<!-- news-tab -->
				<ul class="news-tab">
					<li><a href="#" class="active">All <span></span></a></li>
					<li><a href="#">Notice <span></span></a></li>
					<li><a href="#">Event <span></span></a></li>
					<li><a href="#">System Notice <span></span></a></li>
				</ul><!--// news-tab -->
				<!-- news-content -->
				<div class="news-content">

					<div class="news-suject">
						<a href="#"><strong>[Notice]</strong>Personal information processing policy revision guide<span class="news-time">2018.02.02</span></a>
						<div class="news-toggle">
							<p class="news-text">
								HANPASS provides customer service available in four different languages (Philippines, Indonesia, Nepal, Cambodia).<br/>
								If you have any trouble using our service, please contact our customer service center.<br/><br/>
								1) Telephone consultation<br/>
								&nbsp; &nbsp; - Main Number: 1522-0767<br/>
								&nbsp; &nbsp; - Philippines : 02) 3409-1125<br/>
								&nbsp; &nbsp; - Nepal : 02) 3409-1126<br/>
								&nbsp; &nbsp; - Indonesia : 02) 3409-1127<br/>
								&nbsp; &nbsp; - Cambodia : 02) 3409-1128<br/>
								&nbsp; &nbsp; Operating Hours<br/>
								&nbsp; &nbsp; - Mon-Fri) 10 am ~ 9 pm<br/>
								&nbsp; &nbsp; - Sat-Sun) 10 am ~ 6 pm<br/><br/>

								2) Facebook Messenger Consultation<br/>
								&nbsp; &nbsp; - Philippines : @Hanpass.ph<br/>
								&nbsp; &nbsp; - Nepal : @Hanpass.np<br/>
								&nbsp; &nbsp; - Cambodia : @Hanpass.kh<br/>
								&nbsp; &nbsp; - Indonesia : @Hanpass.id
							</p>
						</div>
					</div>

					<div class="news-suject">
						<a href="#"><strong>[Notice]</strong>HANPASS App Service Open<span class="news-time">2018.02.02</span></a>
						<div class="news-toggle">
							<p class="news-text">
								HANPASS-Remittance Service app is now AVAILABLE!<br/>
								Start using our remittance service without any hassle.<br/>
								You can send money abroad including Philippines, Nepal, Cambodia and Indonesia with just 5,000 KRW which is a reasonable service charge.<br/><br/>

								• HANPASS : Service Charge 5,000 KRW<br/>
								• Commercial Bank : Remittance Fee + Telegram Fee + SWIFT Fee (Fee charged by intermediary banks) + Receipts Fee<br/><br/>

								Please search and download HANPASS on Google Play / App Store.<br/>
								It’s available anytime, anywhere!<br/><br/>

								<!-- • Android : <a href="https://play.google.com/store/apps/details?id=com.hanpass.remittance" target="_blank">https://play.google.com/store/apps/details?id=com.hanpass.remittance</a><br/>
								• iPhone : <a href="https://itunes.apple.com/app/id1344407760" target="_blank">https://itunes.apple.com/app/id1344407760</a><br/> -->
								• Android : https://play.google.com/store/apps/details?id=com.hanpass.remittance<br/>
								• iPhone : https://itunes.apple.com/app/id1344407760<br/>
							</p>
						</div>
					</div>

					<div class="news-suject">
						<a href="#"><strong>[Notice]</strong>HANPASS Service Activation & Remittance License Notice<span class="news-time">2018.02.02</span></a>
						<div class="news-toggle">
							<p class="news-text">
								HANPASS Co., Ltd is an accredited overseas remittance license from Korea’s ministry of Strategy and Finance. HANPASS operates mobile overseas remittance from Korea to Philippines, Nepal, Cambodia, Indonesia.
								Please visit each countries facebook page and follow our promotions, prices.
							</p>
						</div>
					</div>

					<div class="news-suject">
						<a href="#"><strong>[Notice]</strong>Facebook Special Event Information<span class="news-time">2018.02.02</span></a>
						<div class="news-toggle">
							<img src="static/notice_img/notice3_facebook_special_event.png" alt="">
							<p class="news-text">
								Become a HANPASS fan now !<br/>
								Surprise special raffle gifts are coming soon !<br/><br/>
								[ How to join the event? ]<br/>
								① Sign up for HANPASS app<br/>
								② First remittance with HANPASS app<br/>
								③ Click ‘HANPASS Facebook Page’<br/>
								④ Add Facebook profile frame with HANPASS frame (*Please keep the changed profile for 1 week)<br/>
								⑤ After capturing remittance history on the app, send to ‘HANPASS Facebook messenger’<br/>
								⑥ Write 'done' in the comment section of our facebook page’s event notice.<br/><br/>
								For more information, please visit our Facebook page or call our customer care hotline
							</p>
						</div>
					</div>

					<div class="news-suject more text-align-center" style="display:none;">
						<a href="#"><strong>More</strong> <span class="ion-chevron-down"></span></a>
					</div>
				</div><!--// news-content -->
			</div>
		</div><!--// news content -->
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