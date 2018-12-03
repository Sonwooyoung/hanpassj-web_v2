<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en" xml:lang="en">
<head>
<meta charset="utf-8">
<title>한패스</title>
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
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
<script>
$(document).ready(function(){
	var url = window.location.href;
	var urlTail = url.substring(url.lastIndexOf('/')+1); //url끝부분 
	var isKr = url.indexOf('kr'); // url에 kr 포함 여부 
	console.log("nav>ul>li>a[href='".concat(urlTail).concat("']"))
	var sel = "nav>ul>li>a[href='".concat(urlTail).concat("']");
	console.log('dd',$(sel));
	$('nav>ul>li>a').removeClass('active');
	$(sel).addClass('active');
	
	$('.lang-select').on('click', function() {
		console.log('lang-select', url, urlTail);
		console.log($(this).find('span').text())
		var lang = $(this).find('#lang_type').val();
		
		if(isKr>0) {
			if(lang=='KOR') {
				location.href = urlTail;	
			} else {
				location.href = '/'.concat(urlTail);
			} 
		} else {
			if(lang=='KOR') {
				location.href = '/kr/'.concat(urlTail)	
			} else {
				location.href = urlTail;
			}
		} 
		
	})
	if(isKr > 0) {
		$('#wrapper > header > div > ul > li:nth-child(2) > a > i').removeClass('en').addClass('ko');
		$('#langText').text('KOR')
	} else  {
		$('#wrapper > header > div > ul > li:nth-child(2) > a > i').removeClass('ko').addClass('en');
		$('#langText').text('ENG')
	}
})
</script>
</head>
	<!-- wrapper -->
	<div id="wrapper">
		<!-- all menu -->
		<div class="mobile-menu-wrap">
			<div class="mobile-menu-inner">
				<p class="mobile-logo"><a href="/product"><span class="hanpass">HANPASS</span><span class="title">COMPANY</span></a></p>
				<p class="mobile-close-btn"><a href="#"></a></p>
				<ul class="mobile-mneu">
					<li>
						<a href="#">PRODUCT <span class="ico-minus"></span></a>
						<ul class="depth-2">
							<li>
								<a href="/product">REMITTANCE</a>
							</li>
							<%--<li>
								<a href="#" class="active">EXCHANGE</a>
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
								<a href="https://blog.naver.com/hanpassmaster" target="_blank">NAVERBLOG<i class="menu-line"></i></a>							
							</li>
							<li>
								<a href="https://www.youtube.com/channel/UCukxZqozxNQft2H60_E0e2A/featured" target="_blank">YOUTUBE<i class="menu-line"></i></a>							
							</li>
						</ul>
					</li>
					<li>
						<a href="#">LANGUAGE<span class="ico-minus"></span></a>
						<ul class="depth-2">						
							<li class="lang-select">
								<a href="#"><i class="lang ko"><input id="lang_type" type="hidden" value="KOR"/></i>KOREAN</a>
							</li >
							<li class="lang-select">
								<a href="#"><i class="lang en"><input id="lang_type" type="hidden" value="ENG"/></i>ENGLISH</a>
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
				<h1><a href="/company"><span class="hanpass">HANPASS</span><span class="title">COMPANY</span></a></h1>
				<!-- gnb -->
				<nav class="gnb">
					<ul>
						<li><a href="company" class="active">Hi, HANPASS</a></li>
						<li><a href="aboutus">ABOUT US</a></li>
						<li><a href="service">SERVICE</a></li>
						<li><a href="partner">PARTNER</a></li>
						<li><a href="news">NEWS</a></li>
						<li><a href="contactus">CONTACT US</a></li>
					</ul>
				</nav><!--// gnb -->
				<ul class="util">
					<li><a href="/product" class="active">PRODUCT</a></li>
					<li>
						<a href="#"><i class="lang en"></i><span style="margin-right:4px" id="langText">ENG </span><span class="ion-android-arrow-dropdown"></span></a>
						<ul>
							<li class="lang-select"><a href="#"><i class="lang ko"></i><input id="lang_type" type="hidden" value="KOR"/><span class="line">KOR</span></a></li>
							<li class="lang-select"><a href="#"><i class="lang en"></i><input id="lang_type" type="hidden" value="ENG"/><span class="line">ENG</span></a></li>							
						</ul>
					</li>
				</ul>
				<div class="mobile-open-btn">
					<a href="#"></a>
				</div>
			</div>
		</header><!--// header -->