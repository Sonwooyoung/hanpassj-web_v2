<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko">
<head>
<title>한패스(주)-해외송금</title>
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="icon" href="/static/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="static/css/base.css">
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
		<p class="mobile-logo ns-en"><a href="#"><span class="hanpass">HANPASS</span><span class="title">Company</span></a></p>
		<p class="mobile-close-btn"><a href="#"></a></p>
		<ul class="mobile-mneu ns-en">
			<li><a href="/kr/index">Gateway</a></li>
			<li><a href="/kr/product">Product</a></li>
			<li>
				<a href="#">Company <span class="ion-plus"></span></a>
				<ul class="depth-3">
					<li>
						<a href="/kr/news">News</a>
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
								<a href="https://www.instagram.com/hanpass_korea/">@Hanpass.korea</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#">Naverpost<span class="ion-plus"></span></a>
						<ul class="depth-3">
							<li>
								<a href="http://post.naver.com/lbcandhanpass">/lbcandhanpass</a>
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
			<span class="two-text ns-en">1522.0767</span>
			<span class="three-text">
				Weekdays 10:00 ~  21:00 /  Weekends 10:00 ~ 18:00
			</span>
		</div>
	</div>
	<div id="wrapper">
		<header>
			<div class="header-inner">
				<h1 class="ns-en"><a href="#"><span class="hanpass">HANPASS</span><span class="title">Company</span></a></h1>
				<!-- gnb -->
				<nav id="gnb" style="display:none">
					<ul>
						<li><a href="#"></a></li>
					</ul>
				</nav><!--// gnb -->
				<ul class="util ns-en">
					<li><a href="/kr/product" class="active">Product</a></li>
					<li>
						<a href="#"><i class="lang ko"></i>KOR <span class="ion-android-arrow-dropdown"></span></a>
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
				<p class="news-title ns-en">
					<span>Appeal</span>
					<span>to People</span>
				</p>
				<div class="book"><img src="static/images/img-news-book.png" alt="book"></div>
				<dl class="infor-text-wrap">
					<dt>News</dt>
					<dd>
						한패스의 다양한 소식과 사용자들이 꼭 알아야하는 공지사항 및 국내외 주요매체에서 다룬 기사들  그리고, 한패스 직원 한 명 한 명이 전하는 진솔한 이야기까지 기록하는 공간입니다.
					</dd>
				</dl>
			</div>
			<div class="news-contents">
				<!-- news-tab -->
				<ul class="news-tab">
					<li><a href="#" class="active">전체 <span></span></a></li>
					<li><a href="#">공지사항 <span></span></a></li>
					<li><a href="#">이벤트 <span></span></a></li>
					<li><a href="#">시스템 공지 <span></span></a></li>
				</ul><!--// news-tab -->
				<!-- news-content -->
				<div class="news-content">

					<div class="news-suject">
						<a href="#"><strong>[공지사항]</strong>고객 센터 안내<span class="news-time">2018.02.02</span></a>
						<div class="news-toggle">
							<p class="news-text">
								한패스는 4개국 언어 상담 서비스를 지원합니다.<br/>
								앱 사용 과정에서 문제가 생기면 고객센터로 문의해주세요.<br/><br/>
								1) 전화상담<br/>
								&nbsp; &nbsp; - 대표번호 : 1522-0767<br/>
								&nbsp; &nbsp; - 필리핀 : 02) 3409-1125<br/>
								&nbsp; &nbsp; - 네팔 : 02) 3409-1126<br/>
								&nbsp; &nbsp; - 인도네시아 : 02) 3409-1127<br/>
								&nbsp; &nbsp; - 캄보디아 : 02) 3409-1128<br/>
								운영 시간<br/>
								&nbsp; &nbsp; - 평일) 오전 10시 ~ 오후 9시<br/>
								&nbsp; &nbsp; - 주말) 오전 10시 ~ 오후 6시<br/><br/>

								2) 페이스북 메신저 상담<br/>
								&nbsp; &nbsp; - 필리핀 : @Hanpass.ph<br/>
								&nbsp; &nbsp; - 네팔 : @Hanpass.np<br/>
								&nbsp; &nbsp; - 캄보디아 : @Hanpass.khmer<br/>
								&nbsp; &nbsp; - 인도네시아 : @Hanpass.id
							</p>
						</div>
					</div>

					<div class="news-suject">
						<a href="#"><strong>[공지사항]</strong>한패스 해외송금 서비스 오픈<span class="news-time">2018.02.02</span></a>
						<div class="news-toggle">
							<p class="news-text">
								한패스-간편해외송금 앱 서비스가 오픈했습니다.<br/>
								이제 모바일 비대면 인증을 통한 편리한 해외송금 서비스를 이용하세요.<br/>
								필리핀, 네팔, 캄보디아, 인도네시아 4개국에 저렴한 수수료 5,000원으로 해외송금이 가능합니다.<br/><br/>

								• 한패스 : 송금수수료 5,000원<br/>
								• A은행 : 송금수수료 + 전신료 + 중개수수료 + 수취수수료<br/><br/>

								지금 바로 한패스(HANPASS)를 검색하세요.<br/>
								한패스 앱은 구글 플레이와 앱스토어에서 다운받을 수 있습니다.<br/><br/>

								<!-- • 안드로이드 : <a href="https://play.google.com/store/apps/details?id=com.hanpass.remittance" target="_blank">https://play.google.com/store/apps/details?id=com.hanpass.remittance</a><br/>
								• 아이폰  : <a href="https://itunes.apple.com/app/id1344407760" target="_blank">https://itunes.apple.com/app/id1344407760</a><br/> -->
								• 안드로이드 : https://play.google.com/store/apps/details?id=com.hanpass.remittance<br/>
								• 아이폰  : https://itunes.apple.com/app/id1344407760<br/>
							</p>
						</div>
					</div>

					<div class="news-suject">
						<a href="#"><strong>[공지사항]</strong>한패스 오픈 및 송금 라이센스 취득 공지<span class="news-time">2018.02.02</span></a>
						<div class="news-toggle">
							<p class="news-text">
								한패스㈜는 외국환거래법에 따라 기획재정부 장관으로부터 소액해외송금업 등록 허가를 받았습니다.<br/>
								한패스는 한국에서 필리핀, 네팔, 인도네시아, 캄보디아로 모바일 해외송금 서비스를 운영합니다.<br/>
								국가 별 한패스 페이스북 페이지에서 서비스 이용방법, 이벤트안내, 환율 등 다양한 정보를 확인하세요.
							</p>
						</div>
					</div>

					<div class="news-suject">
						<a href="#"><strong>[공지사항]</strong>페이스북 이벤트 안내<span class="news-time">2018.02.02</span></a>
						<div class="news-toggle">
							<img src="static/notice_img/notice3_facebook_special_event.png" alt="">
							<p class="news-text">
								한패스의 팬이 되어주세요!<br/>
								놀라운 선물이 기다리고 있습니다.<br/><br/>
								[이벤트 참여 방법]<br/>
								① 한패스 앱 가입하기<br/>
								② 송금하기<br/>
								③ 한패스 페이스북 페이지 좋아요 누르기<br/>
								④ 페이스북 프레임을 프로필 사진에 추가하기 (변경된 페이스북 프로필 사진 일주일간 유지)<br/>
								⑤ 본인의 송금 History를 캡처하여 한패스 페이스북 메신저로 전송<br/>
								⑥ 한패스 페이스북 이벤트 공지 게시물에 ‘Done’ 이라는 참여완료 댓글 달기<br/><br/>
								*더 자세한 내용은 페이스북 이벤트 공지 게시물을 통해 확인하실 수 있습니다.
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
				<p class="text-tel ns-en">1522.0767</p>
				<p class="text-time">
					<strong>평일 10:00 ~ 21:00 / 주말 10:00 ~ 18:00 </strong>
				</p>
				<div class="text-wrap">
					<span><strong>주소 .</strong> 서울 성동구 아차산로 92, 광명타워 4층 04782 ㈜한패스</span>
					<span><strong>Fax .</strong> +82 2.3674.5988</span>
					<span class="ns-en"><strong>Email .</strong> Contact@Hanpass.com</span>
				</div>
				<div class="footer-menu ns-en">
					<a href="/kr/news">News</a>
				</div>
			</div>
			<div class="footer-bottom">
				<div class="footer-inner">
					<p class="footer-logo"><a href="#"><img src="static/images/footer-logo.png" alt="hanpass"></a></p>
					<p class="copyright ns-en">Copyright Ⓒ HANPASS Co.,Ltd. 2018 All rights reserved.</p>
				</div>
			</div>
		</footer>
	</div><!--// wrapper -->
</body>
</html>