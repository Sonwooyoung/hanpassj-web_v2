<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko">
<head>
<title>한패스(주)-해외송금</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
			<span class="one-text">이제 나만의 방식으로!</span>
			<span class="two-text ns-en">1522.0767</span>
			<span class="three-text">
				평일 10:00 ~ 21:00 / 주말 10:00 ~ 18:00
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
					<p class="font-large ns-en"><span class="pc-element">Hello</span><span class="mobile-element">Hi</span></p>
					<p class="font-middle">반갑습니다, 한패스입니다.</p>
					<p class="font-small">한패스는 한국 핀테크 기업으로서, 가장 혁신적이고, 편리한 서비스를<br>전 세계 고객들에게 전달합니다.</p>
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
					<p class="font-large ns-en">A</p>
					<p class="font-middle ns-en">Asia and Beyond</p>
					<p class="font-small-xs">저희는 정식 라이선스를 보유한 송금전문 기업입니다.<br class="mobile-hidden">글로벌 시장을 개척하고, 송금 서비스 시장을 선도하는 기업으로 도약할 것입니다.</p>
				</div>
				<div class="img"></div>
			</section>
			<section id="section-3">
				<div class="text-wrap">
					<p class="font-large ns-en">N</p>
					<p class="font-middle ns-en">Next Big Thing</p>
					<p class="font-small-xs">
						트랜드를 선도하는!<br class="mobile-hidden">
						한패스는 사용자 중심의 혁신적인 기술을 통해서 또 하나의<br class="mobile-hidden">송금 트랜드를 만들어갑니다.
					</p>
				</div>
				<div class="img"><img src="static/images/img-com-2.jpg" alt=""></div>
			</section>
			<section id="section-4" class="text-align-center">
				<div class="text-wrap">
					<p class="font-large ns-en">P</p>
					<p class="font-middle ns-en">Perpetual Alliance</p>
					<p class="font-small-xs">
						탄탄한 네트워크!<br class="mobile-hidden">
						해외 파트너사들과의 적극적인 파트너쉽을 통해 최상의 서비스를 구현합니다.
					</p>
				</div>
				<div class="img"></div>
			</section>
			<section id="section-5">
				<div class="section-inner">
					<div class="text-wrap">
						<p class="font-large ns-en">A</p>
						<p class="font-middle ns-en">Appeal to People</p>
						<p class="font-small-xs">
							누구에게나 활짝 열린 소통 공간!<br class="mobile-hidden">
							다양한 채널로 누구에게나 열린 공간에서 <br class="mobile-hidden">유쾌한 소통 문화를 만들어갑니다.
						</p>
					</div>
					<div class="movie-text-wrap">
						<div class="moving-img1"><img src="static/images/img-com-4-1.jpg" alt=""></div>
						<div class="moving">
							<div class="marquee ns-en">
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
					<p class="font-large ns-en">SS</p>
					<p class="font-middle ns-en">Send a Signal</p>
					<p class="font-small-xs">
						성장으로 이끌기 원하는 여러분 목소리에 귀 기울입니다.<br class="mobile-hidden">
						아래 양식을 작성해주시면 빠르게 연락드리겠습니다.
					</p>
				</div>
				<form action="">
					<fieldset>
						<legend class="hd-element">send</legend>
						<div class="form-wrap">
							<!-- <div class="form-group fault">
								<p class="infor-text">The email is not entered</p>
								<label for="name">이름</label>
								<input type="text" id="name" name="">
							</div>
							<div class="form-group writing">
								<label for="name">이름</label>
								<input type="text" id="name" name="">
							</div>	 -->
							<div class="form-group">
								<label for="subject">이름</label>
								<input type="text" id="subject" name="subject" value="">
							</div>
							<div class="form-group">
								<label for="senderEmail">이메일 주소</label>
								<input type="text" id="senderEmail" name="senderEmail">
							</div>
							<div class="form-group">
								<label for="contents">고객의 의견</label>
								<textarea name="contents" id="contents" cols="30" rows="10"></textarea>
							</div>
							<div class="text-infor">
								※  빠른 시일 내 답변드리겠습니다.<br>
								※  고객센터: <a href="mailto:contact@hanpass.com"><span class="ns-en">contact@hanpass.com</span></a>
							</div>
							<div class="submit-wrap">
								<div class="img"><img src="static/images/img-com-5.jpg" alt=""></div>
								<button type="button" onclick="sendEmail();">제출</button>
							</div>
						</div>
					</fieldset>
				</form>
			</section>
		</div>
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