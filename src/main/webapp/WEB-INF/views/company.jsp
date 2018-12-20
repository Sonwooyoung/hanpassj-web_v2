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
<script type="text/javascript" src="static/js/hanpass_validation.js"></script>
<script type="text/javascript" src="static/js/hanpass_util.js"></script>

<script type="text/javascript" src="static/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="static/js/jquery.bxslider-rahisified.js"></script>
<script type="text/javascript" src="static/js/common.js"></script>

<script type="text/javascript">
	const EMAIL_EMPTY_ERROR = "The email is not entered.";
	const EMAIL_FORMAT_ERROR = "The mail format is not valid.";
	const SUBJECT_EMPTY_ERROR = "The name is not entered.";
	const CONTENTS_EMPTY_ERROR = "The contents is not entered.";
	const COMMON_VALID_ERROR = "The information entered is invalid.";
	const FAIL_SEND_MAIL = "Failed to send mail. Contact your manager.";
	const EMAIL_SEND_SUCCESS = "Thank you.\r\nYour message has been successfully sent.";

	$(function() {

		// form 내 input 선택 유무
		/* $("form > .form-wrap").on("focusin focusout", "div", function(event) {
			var eventType = event.type;

			if(eventType == "focusin") {
				$(this).attr("class", "form-group writing");
			} else {
				$(this).attr("class", "form-group");
			}
		}); */

		// form 유효성 체크
		$("form").on("change", "input:text, textarea", function(event) {
			emailFormValidCheck(this);
		});


	});

	// form 유효성 체크
	function emailFormValidCheck(obj) {
		try {
			var isValid = false;
			var inputName = $(obj).attr("name");
			var value = $(obj).val();
			var eleErrorMsg = $("<p class='infor-text'/>");

			// 이메일 제목 체크
			if(inputName == "subject") {
				if(value != null && value != "") {
					isValid = true;
				} else {
					eleErrorMsg.text(SUBJECT_EMPTY_ERROR);
				}
			}

			// 이메일 형식 체크
			if(inputName == "senderEmail") {
				if(true == regExpEmail(value)) {
					isValid = true;
				} else {
					if(value == "") {
						eleErrorMsg.text(EMAIL_EMPTY_ERROR);
					} else {
						eleErrorMsg.text(EMAIL_FORMAT_ERROR);
					}
				}
			}

			// 이메일 내용 체크
			if(inputName == "contents") {
				if(value != null && value != "") {
					isValid = true;
				} else {
					eleErrorMsg.text(CONTENTS_EMPTY_ERROR);
				}
			}

			if(isValid == false) {
				$(obj).parent("div").attr("class", "form-group fault").find("p").remove();
				$(obj).parent("div").attr("class", "form-group fault").prepend(eleErrorMsg);
			} else {
				$(obj).parent("div").attr("class", "form-group");
			}

			return isValid;

		} catch(e) {
			alert("[emailFormValidCheck(obj)] " + e.message);
		}
	}

	function sendEmail() {
		try {
			var isValid = false;

			// 전체 데이터 유효성 체크
			$("form input:text, textarea").each(function() {
				isValid = emailFormValidCheck(this);

				if(isValid == false) {
					return false;
				}
			});

			if(isValid == false) {
				$(".error-layer > p[class='error-title']").text(COMMON_VALID_ERROR);
				$(".error-layer > p[class='btn-set'] > a").text("Close");
				$(".error-layer").show();
				return false;
			}

			var errorMsg = "";
			var emailObject = new Object();
			emailObject.senderEmail = $("#senderEmail").val();
			emailObject.subject = $("#subject").val();
			emailObject.contents = $("#contents").val();

			// 등록 요청
			var url="${pageContext.request.contextPath}/send-mail";
			var data = JSON.stringify(emailObject);

			requestAjaxPost(url, data, sendEmailCallback);

		} catch(e) {
			alert("[sendEmail()] " + e.message);
		}
	}

	function sendEmailCallback(response, jqXHR) {
		try {
			if(jqXHR.status == 204) {
				$(".error-layer > p[class='error-title']").text(EMAIL_SEND_SUCCESS);
				$(".error-layer > p[class='btn-set'] > a").text("Confirm");
				$(".error-layer").show();
			} else {
				$(".error-layer > p[class='error-title']").text(FAIL_SEND_MAIL);
				$(".error-layer > p[class='btn-set'] > a").text("Close");
				$(".error-layer").show();
			}

			$("#senderEmail").val("");
			$("#subject").val("");
			$("#contents").val("");

		} catch(e) {
			alert("[sendEmailCallback(response, jqXHR)] " + e.message);
		}
	}

	// error layser close
	function closeErrorLayer() {
		try {
			$(".error-layer").hide();
		} catch(e) {
			alert("[closeErrorLayer()] " + e.message);
		}
	}

</script>
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
						<a href="/company"><i class="lang en"></i>English</a>
					</li>
					<li>
						<a href="/kr/company"><i class="lang ko"></i>Korean</a>
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
							<li><a href="/company"><i class="lang en"></i><span class="line">ENG</span></a></li>
							<li><a href="/kr/company"><i class="lang ko"></i><span class="line">KOR</span></a></li>
						</ul>
					</li>
				</ul>
				<div class="mobile-open-btn">
					<a href="#"></a>
				</div>
			</div>
		</header>
		<div id="company">
			<section id="section-1" class="text-align-center">
				<div class="text-wrap">
					<p class="font-large"><span class="pc-element">Hello</span><span class="mobile-element">Hi</span></p>
					<p class="font-middle">Welcome to HANPASS</p>
					<p class="font-small">As a FinTech company based in South Korea, HANPASS delivers the most innovative <br class="mobile-hidden">and convenient service to our local and global customers.</p>
				</div>
				<div class="visual-wrap">
					<!-- <p class="visual-btn prev"><a href="#"></a></p> -->
					<ul class="visual-slide">
						<li class="v1">
							<!-- <div>Get started making <span>life</span></div> -->
						</li>

					</ul>
					<!-- <p class="visual-btn next"><a href="#"></a></p> -->
				</div>
			</section>
			<section id="section-2" class="text-align-center">
				<div class="text-wrap">
					<p class="font-large">A</p>
					<p class="font-middle">Asia and Beyond</p>
					<p class="font-small-xs">We are a licensed institution specializing in remittance.<br class="mobile-hidden">Hanpass aims to become a leading remittance company through global expansion.</p>
				</div>
				<div class="img"></div>
			</section>
			<section id="section-3">
				<div class="text-wrap">
					<p class="font-large">N</p>
					<p class="font-middle">Next Big Thing</p>
					<p class="font-small-xs">
						We are the trend!<br class="mobile-hidden">
						Hanpass is a leading innovative company that creates<br class="mobile-hidden">
						new ways of sending money with cutting-edge technology.
					</p>
				</div>
				<div class="img"><img src="static/images/img-com-2.jpg" alt=""></div>
			</section>
			<section id="section-4" class="text-align-center">
				<div class="text-wrap">
					<p class="font-large">P</p>
					<p class="font-middle">Perpetual Alliance</p>
					<p class="font-small-xs">
						Building a strong network!<br class="mobile-hidden">
						Hanpass and its partners work hand in hand to continuously improve our service.
					</p>
				</div>
				<div class="img"></div>
			</section>
			<section id="section-5">
				<div class="section-inner">
					<div class="text-wrap">
						<p class="font-large">A</p>
						<p class="font-middle">Appeal to People</p>
						<p class="font-small-xs">
							Get to know more about us!<br class="mobile-hidden">
							Hanpass provides updated information<br class="mobile-hidden">
							through various channels.
						</p>
					</div>
					<div class="movie-text-wrap">
						<div class="moving-img1"><img src="static/images/img-com-4-1.jpg" alt=""></div>
						<div class="moving">
							<div class="marquee">
								<span>WE ANNOUNCE WE ANNOUNCE WE ANNOUNCE WE ANNOUNCE WE ANNOUNCE WE ANNOUNCE</span>
								<span>WE ANNOUNCE WE ANNOUNCE WE ANNOUNCE WE ANNOUNCE WE ANNOUNCE WE ANNOUNCE</span>
							</div>
						</div>
						<div class="moving-img2"><img src="static/images/img-com-4-2.jpg" alt=""></div>
					</div>
				</div>
			</section>
			<section id="section-6" class="text-align-center">
				<div class="text-wrap">
					<p class="font-large">SS</p>
					<p class="font-middle">Send a Signal</p>
					<p class="font-small-xs">
						Have questions? Contact us.<br class="mobile-hidden">
						Send a message by using the provided form below.
					</p>
				</div>
				<form action="">
					<fieldset>
						<legend class="hd-element">send</legend>
						<div class="form-wrap">
							<!-- <div class="form-group fault">
								<p class="infor-text">The email is not entered</p>
								<label for="name">Your Name (Type in English)</label>
								<input type="text" id="name" name="">
							</div>
							<div class="form-group writing">
								<label for="name">Your Name (Type in English)</label>
								<input type="text" id="name" name="">
							</div> -->
							<div class="form-group">
								<label for="name">Your Name (Type in English)</label>
								<input type="text" id="subject" name="subject" value="">
							</div>
							<div class="form-group">
								<label for="email">Email Address</label>
								<input type="text" id="senderEmail" name="senderEmail">
							</div>
							<div class="form-group">
								<label for="inquiry">Inquiry Contents</label>
								<textarea name="contents" id="contents" cols="30" rows="10"></textarea>
							</div>
							<div class="text-infor">
								※  We will respond quickly.<br>
								※  Customers service Email : <a href="mailto:contact@hanpass.com">contact@hanpass.com</a>
							</div>
							<div class="submit-wrap">
								<div class="img"><img src="static/images/img-com-5.jpg" alt=""></div>
								<button type="button" onclick="sendEmail();">Submit</button>
							</div>
						</div>
					</fieldset>
				</form>
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
	<script type="text/javascript">
		$(document).ready(function(){
			visualSlider = $('.visual-slide').bxSlider({
				speed : 1000,
				pause : 5000,
				controls : false,
				infiniteLoop : false,
				onSliderLoad : function($slideElement, oldIndex, newIndex) {
					$('.visual-btn.prev').on('click', function() {
						visualSlider.goToPrevSlide();
						return false;
					});
					$('.visual-btn.next').on('click', function() {
						visualSlider.goToNextSlide();
						return false;
					});
				}
			});

			function calcScreenW(val) {
			    var INIT_W = 1760;
			    return parseInt(val) / INIT_W * window.innerWidth;
			}

			function marquee() {
			    var $marquee = $('.marquee span');
			    $marquee.css('width', 'auto');
			    var CHAR_W = $marquee.eq(0).width() + calcScreenW(100);
			    $('#section-5 .moving').css('width', CHAR_W + 'px');
			    $('#section-5 .marquee').css('width', CHAR_W * 2 + 'px');
			    $marquee.css({
			        float: 'left',
			        width: CHAR_W + 'px'
			    });
			}
			marquee();
			window.addEventListener('resize', function(){
			    var winW = window.innerWidth;
			    if (winW < 1024) {
			        marquee();
			    }
			});
		});
	</script>
	<div class="error-layer">
		<p class="error-title">
			Thank you.<br>Your message has been successfully sent.
		</p>
		<p class="btn-set"><a href="javascript:closeErrorLayer();">Confirm</a></p>
	</div>
</body>
</html>