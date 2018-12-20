<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<html lang="ko" xml:lang="ko">
<head>
	<meta charset="utf-8">
	<title>한패스</title>
	<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<link href="/static/images/favicon.ico?" rel="icon" type="image/x-icon">
	<link rel="stylesheet" href="static/css/base.css">
	<link rel="stylesheet" href="static/css/contents.css">
	<link rel="stylesheet" href="static/css/animate.css">
	<link rel="stylesheet" href="static/css/jquery.bxslider.css">
	<link rel="stylesheet" href="static/css/owl.carousel.min.css">
	<link rel="stylesheet" href="static/css/owl.theme.default.css">
	<link rel="stylesheet" href="static/css/plugin/ionicons-2.0.1/css/ionicons.min.css" >
	<script type="text/javascript" src="static/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="static/js/jquery.bxslider-rahisified.js"></script>
	<script type="text/javascript" src="static/js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="static/js/jquery.touchToscroll.js"></script>
	<script type="text/javascript" src="static/js/common.js"></script>
	<!--[if lt IE 9]>
	<script src="static/js/html5shiv.min.js"></script>
	<script src="static/js/respond.min.js"></script>
	<![endif]-->
	<script type="text/javascript">
		var at = "<%=(String)session.getAttribute("access_token")%>"
	</script>
	<script type="text/javascript" src="static/js/hanpass_exchange.js"></script>
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
								<a href="/kr/product">REMITTANCE</a>
							</li>
							<li>
								<a href="/exchange" class="active">EXCHANGE</a>
							</li>
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
								<a href="/exchange"><i class="lang ko"></i>KOREAN</a>
							</li>
							<%--<li>
								<a href="/exchange"><i class="lang en"></i>ENGLISH</a>
							</li>--%>
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
					<span class="one-text">환전고객센터</span>
					<span class="two-text">1577.4338</span>
					<span class="three-text">
						평일 : 09:00 - 18:00<br/>
						주말 / 공휴일 / 업무시간 외 : 06:00 - 09:00 / 18:00 - 23:00 <br/><br/>
					</span>
				</div>
			</div>
		</div><!--// all menu -->
		<!-- header -->
		<header>
			<div class="header-inner">
				<h1 class="ns-en"><a href="/product"><span class="hanpass">HANPASS</span><span class="title">PRODUCT</span></a></h1>
				<!-- gnb -->
				<nav class="gnb ns-en">
					<ul>
						<li><a href="/kr/product">REMITTANCE</a></li>
						<li><a href="/exchange" class="active">EXCHANGE</a></li>
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


		<!-- exchange-wrap -->
		<div class="exchange-wrap">
			<div class="ex-slide-contents">
				<div class="ex-inner">
					<p class="ex-title-small">공항에서 한 번에 패스!</p>
					<p class="ex-title-large">한패스 환전</p>
					<p class="ex-text-infor">
						어렵고 복잡한 환전 서비스!<br>
						이제 한패스로 공항에서 한번에 쉽게 환전하세요.
					</p>
					<div class="guide-link">
						<a href="#guide_popup" class="popup-open-btn">안내사항</a>
						<a href="#reserve_popup" class="popup-open-btn">예약조회</a>
					</div>
					<!-- 환율계산 -->
					<div class="ex-calculator-wrap">
						<!-- 환율계산기 -->
						<div class="ex-calculator-area">
							<div class="ex-calculator-inner">
								<h3>환율계산기 <span id="ExpiredDate">0000.00.00 00:00:00</span><span>기준</span></h3>
								<p class="red-text font-color-red" id="baseExchangeableAmount"></p>
								<div class="calculator-area">
									<div class="calculator-button">
										<a href="#" onclick="return false;">
											<span class="ico-flag usd"></span>
											<span class="flag-text-wrap">
												<span class="flag-text-large cal ns-en">USD</span>
												<span class="flag-text-small">미국(달러)</span>
											</span>
										</a>
									</div>
									<div class="calculator-box">
										<div class="calculator-number-box black">
											<input type="text" name="" id="number_1" class="ns-en">
											<label for="number_1" class="nation-name ns-en">USD</label>
										</div>
										<div class="calculator-number-box blue">
											<p class="calculator-number-box-title">최고 우대환율 적용 금액</p>
											<input type="text" name="" id="number_2" disabled="disabled" class="ns-en">
											<label for="number_2" >원</label>
										</div>
									</div>
									<!--calculator popup -->
									<div class="calculator-popup w500">
										<p class="calculator-title">통화 선택</p>
										<ul class="flag">
											<li>
												<a href="#" onclick="return false">
													<span class="flag-small usd"></span><span class="calculator-list-txt currency">USD</span><span class="left-text">미국(달러)</span>
												</a>
											</li>
											<li>
												<a href="#" onclick="return false">
													<span class="flag-small cny"></span><span class="calculator-list-txt currency">CNY</span><span class="left-text">중국(위안)</span>
												</a>
											</li>
											<li>
												<a href="#" onclick="return false">
													<span class="flag-small jpy"></span><span class="calculator-list-txt currency">JPY</span><span class="left-text">일본(엔)</span>
												</a>
											</li>
											<li>
												<a href="#" onclick="return false">
													<span class="flag-small eur"></span><span class="calculator-list-txt currency">EUR</span><span class="left-text">유럽연합(유로)</span><span class="other-text">(준비중)</span>
												</a>
											</li>
										</ul>
									</div><!--calculator popup -->
								</div>
							</div>
						</div><!--// 한율 계산기 -->
						<!-- 장소/날짜 -->
						<div class="ex-calculator-area">
							<div class="ex-calculator-inner">
								<div class="ex-place-wrap">
									<%--<div class="ex-place">
										<h3>수령 장소</h3>
										<div class="select-box-wrap">
											<span class="select-ico loc"></span>
											<input type="text" name="initplace" value="인천공항 제 1터미널" class="popup-btn">
											<!--calculator popup -->
											&lt;%&ndash;<div class="calculator-popup data">
												<p class="calculator-title">수령 장소</p>
												<ul class="place auto" id="receiptPlaceInfoList">
													&lt;%&ndash;<li>
														<a href="#"><span class="calculator-list-txt">인천공항 제 1 터미널</span></a>
													</li>
													<li>
														<a href="#"><span class="calculator-list-txt">인천공항 제 2 터미널</span></a>
													</li>
													<li>
														<a href="#"><span class="calculator-list-txt">김포공항</span></a>
													</li>
													<li>
														<a href="#"><span class="calculator-list-txt">인천공항 제 1 터미널</span></a>
													</li>
													<li>
														<a href="#"><span class="calculator-list-txt">인천공항 제 2 터미널</span></a>
													</li>
													<li>
														<a href="#"><span class="calculator-list-txt">김포공항</span></a>
													</li>&ndash;%&gt;
												</ul>
											</div><!--calculator popup -->&ndash;%&gt;
										</div>
									</div>--%>
									<%--<div class="ex-day">
										<h3>수령 날짜</h3>
										<div class="select-box-wrap">
											<span class="select-ico sch"></span>
											<c:forEach var="item" items="${dayList}" end="0">
												<input type="text" id="day" name="day" value="<c:out value="${item.day}" />" class="popup-btn ns-en">
												<input type="text" id="dayoftheweek" name="dayoftheweek" class="input-day" value="<c:out value="${item.dayoftheweek}" />" disabled="disabled">
											</c:forEach>
											&lt;%&ndash;<input type="text" id="" name="" value="2018 / 06 / 20" class="popup-btn ns-en">
											<input type="text" id="" name="" class="input-day" value="목" disabled="disabled">&ndash;%&gt;
											<!--calculator popup -->
											<div class="calculator-popup data">
												<p class="calculator-title">수령 날짜</p>
												&lt;%&ndash;<c:out value="${dateTimeFormat.dayList}"/>&ndash;%&gt;
												<ul class="place receipt">
													<c:forEach var="item" items="${dayList}" >
														<li>
															<a href="#"><span class="calculator-list-txt ns-en">${item.day}</span><span class="left-text pos-right">${item.dayoftheweek}</span></a>
														</li>
													</c:forEach>
													&lt;%&ndash;<li>
														<a href="#"><span class="calculator-list-txt ns-en">2018 / 06 / 20</span><span class="left-text pos-right">수</span></a>
													</li>&ndash;%&gt;
												</ul>
											</div><!--calculator popup -->
										</div>
									</div>--%>
								</div>
								<button type="button" id="exchangeRequest">환전 신청하기</button>
							</div>
						</div><!--// 장소/날짜 -->
						<%--<ul class="slide-dot-lst">
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							&lt;%&ndash;<li></li>&ndash;%&gt;
						</ul>--%>
						<!-- ex-number-->
						<%--<div class="ex-number">
							<div class="ns-en">
								<span class="ex-number-ico usd"></span><span class="ex-number-name">USD</span><span class="ex-number-text"><c:out value="${rateList.USD}"/></span>
							</div>
							<div class="ns-en">
								<span class="ex-number-ico cny"></span><span class="ex-number-name">CNY</span><span class="ex-number-text"><c:out value="${rateList.CNY}"/></span>
							</div>
							<div class="ns-en">
								<span class="ex-number-ico jpy"></span><span class="ex-number-name">JPY</span><span class="ex-number-text"><c:out value="${rateList.JPY}"/></span>
							</div>
							<div class="ns-en">
								<span class="ex-number-ico eur"></span><span class="ex-number-name">EUR</span><span class="ex-number-text"><c:out value="${rateList.EUR}"/></span>
							</div>
							&lt;%&ndash;<div class="ns-en">
								<span class="ex-number-ico gbp"></span><span class="ex-number-name">GBP</span><span class="ex-number-text"><c:out value="${rateList.GBP}"/></span>
							</div>&ndash;%&gt;
						</div>--%>
						<!--// ex-number -->
					</div>
					<!--// 환율계산 -->
				</div>
			</div>
			<!-- ex-slide -->
			<div class="ex-slide-wrap owl-carousel">
				<div class="item bg1"></div>
				<div class="item bg2"></div>
				<div class="item bg3"></div>
				<div class="item bg4"></div>
				<div class="item bg5"></div>
			</div>
			<!--// ex-slide -->
			<%--<div class="appstore-wrap">
				<a href="https://play.google.com/store/apps/details?id=com.hanpass.remittance" target="_blank" class="google ns-en"><span></span>Google Play</a>
				<a href="https://itunes.apple.com/app/id1344407760" target="_blank" class="app ns-en"><span></span>App Store</a>
			</div>--%>

			<!-- step-wrap -->
			<div class="step-wrap">
				<!-- step1 -->
				<div class="step-area step1">
					<a href="javascript:void(0);">
						<span class="step-check-ico"></span>
						<span class="step-number ns-en">STEP 1</span>
						<span class="step-title">신청인 정보 입력 및 약관 동의</span>
						<span class="step-arrow"></span>
					</a>
					<div class="step-area-inner step1" >
						<h4>환전 신청인 정보 입력</h4>
						<fieldset>
							<form id="personinfo">
								<legend>정보입력</legend>
								<div class="input-box">
									<label for="requestName">신청인 성명<em>*</em></label>
									<p class="warning-text">성명을 입력해주세요.</p>
									<input type="text" id="requestName" name="requestName" placeholder="신분증상 성명">
								</div>
								<div class="input-box"><!-- input fault warning 추가 -->
									<label for="idInfo">신분증 번호<em>*</em></label>
									<p class="warning-text"></p>
									<div class="input-inner">
										<div class="column-input-box">
											<input type="text" id="idInfo" name="idInfo" class="popup-btn" value="신분증 종류">
											<input type="hidden" id="idcode" name="idcode">
											<span class="column-arrow"></span>
											<!--calculator popup -->
											<div class="calculator-popup data idinfolist">
												<p class="calculator-title">신분증 종류</p>
												<ul class="place card">
													<%--<li>
														<a href="#"><input type="hidden" name="idcard" value="PASSPORT"/><span class="calculator-list-txt" >여권</span></a>
													</li>--%>
													<li>
														<a href="#"><input type="hidden" name="idcard" value="NATIONAL_ID"/><span class="calculator-list-txt" >주민등록증</span></a>
													</li>
													<%--<li>
														<a href="#"><input type="hidden" name="idcard" value="DRIVER_LICENSE"/><span class="calculator-list-txt" >운전면허증</span></a>
													</li>--%>
													<li>
														<a href="#"><input type="hidden" name="idcard" value="ALIEN_REGISTRATION"/><span class="calculator-list-txt" >외국인등록증</span></a>
													</li>
												</ul>
											</div><!--calculator popup -->
										</div>
										<div class="input-box-other withoutdash">
											<input type="text" id="idnumber" name="idnumber" placeholder="신분증상 번호 ‘-’ 없이 입력" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')">
										</div>
									</div>
									<p class="input-infor">* 수령 시 <span>신분증을 통한 본인확인이 필요</span>하므로 정보를 정확히 입력해주시기 바랍니다.</p>
								</div>
								<div class="input-box">
									<label for="tel1">휴대폰 번호<em>*</em></label>
									<p class="warning-text"></p>
									<div class="tel-element">
										<div class="row-two">
											<div class="row-two-inner withoutdash">
												<input type="text" id="tel1" name="tel1" placeholder="휴대폰 번호 ‘-’ 없이 입력" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')">
											</div>
										</div>
										<div class="row-two">
											<div class="row-two-inner phone-number">
												<input type="text" id="telCert" name="telCert" placeholder="인증번호 입력" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')">
												<p class="time-text" id="timer_s">03:00</p>
												<button type="button" id="telCertRequest">인증번호 받기</button>
											</div>
										</div>
									</div>
								</div>
								<p class="input-infor">* 신청자의 정보가 불일치할 경우, <span>메시지 수신 및 외화수령이 불가</span>할 수 있습니다.</p>
								<%--<div class="input-box">
									<label for="email">이메일<em>*</em></label>
									<p class="warning-text">이메일 을 입력해주세요.</p>
									<input type="text" id="email" name="" placeholder="이메일 형식으로 입력">
								</div>--%>
							</form>
						</fieldset>
						<h4>한패스 환전 이용약관 및 유의사항 확인</h4>
						<div class="terms-area">
							<h5 class="first">유의사항</h5>
							<p class="terms-more-btn">
								<a href="#note_popup" class="popup-open-btn">자세히 보기</a>
							</p>
							<%--<div class="terms-detail">
								<dl>
									<dt><span class="n1"></span>수령가능시간</dt>
									<dd>06:00 - 23:00, 수령 약속 시간 준수</dd>
								</dl>
								<dl>
									<dt><span class="n2"></span>수령방법</dt>
									<dd>수령장소에서 한패스세터(직원)과 대면 후 신청외화 수령</dd>
								</dl>
								<dl>
									<dt><span class="n3"></span>수령 시 정보확인</dt>
									<dd>본인확인을 위해 정확한 정보 입력 필수, 외화수령 시 신분증 제시 필수</dd>
								</dl>
								<dl>
									<dt><span class="n4"></span>환불요청</dt>
									<dd>예약조회 화면에서 확인 후 환불요청 (‘자세히보기’에서 환불수수료 규정 참고)</dd>
								</dl>
							</div>--%>
						</div>
						<div class="terms-area">
							<h5>한패스 환전서비스 이용 약관</h5>
							<p class="terms-more-btn">
								<a href="#terms2_popup" class="popup-open-btn">자세히 보기</a>
							</p>
						</div>
						<div class="terms-area">
							<h5>개인정보 수집 및 취급에 관한 동의</h5>
							<p class="terms-more-btn">
								<a href="#terms1_popup" class="popup-open-btn">자세히 보기</a>
							</p>
						</div>
						<div class="next-check-box first">
							<span><input type="checkbox" id="checkbox1"><label for="checkbox1">전체 약관에 모두 동의합니다.</label></span>
							<span class="next-btn"><a href="javascript:step2();">다음</a></span>
						</div>
					</div>
				</div><!--// step1 -->
				<!-- step2 -->
				<div class="step-area step2">
					<a href="javascript:void(0);">
						<span class="step-check-ico"></span>
						<span class="step-number ns-en">STEP 2</span>
						<span class="step-title">신청 정보 입력</span>
						<span class="step-arrow"></span>
					</a>
					<div class="step-area-inner step2" >
						<form id="placeExchangeinfo">
							<h4>환전 신청 정보 입력</h4>
							<!-- 환전통화 -->
							<div class="step-type">
								<h5>환전 통화<em>*</em><span id="ExpiredDate2">2018-08-23 12:01:56</span><span>기준</span></h5>
								<div class="calculator-area">
									<div class="calculator-button">
										<a href="#">
											<span class="ico-flag usd"></span>
											<span class="flag-text-wrap">
												<span class="flag-text-large ns-en">USD</span>
												<span class="flag-text-small">미국(달러)</span>
											</span>
										</a>
									</div>
									<div class="calculator-box">
										<div class="calculator-number-box blue step2">
											<input type="text" name="" id="number_3" value="100,000" class="ns-en">
											<label for="number_3" class="nation-name ns-en">USD</label>
											<p class="min-money" id="permitAmount"></p>
										</div>
										<div class="calculator-number-box gray">
											<p class="">최고 우대환율 적용 금액</p>
											<input type="text" name="" id="number_4" value="100,000" class="ns-en" disabled="disabled">
											<label for="number_4">원</label>
										</div>
									</div>
									<!--calculator popup -->
									<div class="calculator-popup w650">
										<p class="calculator-title">통화 선택</p>
										<ul class="flag">
											<li>
												<a href="javascript:void(0);">
													<span class="flag-small usd"></span><span class="calculator-list-txt currency">USD</span><span class="left-text">미국(달러)</span>
												</a>
											</li>
											<li>
												<a href="javascript:void(0);">
													<span class="flag-small cny"></span><span class="calculator-list-txt currency">CNY</span><span class="left-text">중국(위안)</span>
												</a>
											</li>
											<li>
												<a href="javascript:void(0);">
													<span class="flag-small jpy"></span><span class="calculator-list-txt currency">JPY</span><span class="left-text">일본(엔)</span>
												</a>
											</li>
											<li>
												<a href="javascript:void(0);">
													<span class="flag-small eur"></span><span class="calculator-list-txt currency">EUR</span><span class="left-text">유럽연합(유로)</span>
												</a>
											</li>
											<li>
												<a href="javascript:void(0);">
													<span class="flag-small gbp"></span><span class="calculator-list-txt currency">GBP</span><span class="left-text">영국(파운드)</span>
												</a>
											</li>
										</ul>
									</div><!--calculator popup -->
								</div>
							</div><!--// 환전통화 -->
							<!-- 프로모션 -->
							<div class="promotion-wrap">
								<p class="promotion-title">
									<a href="#">
										<span class="title">프로모션 서비스</span><span class="middle-arrow"></span><%--<span class="coupon-text">생일 할인 쿠폰  -5,000원</span>--%>
									</a>
								</p>
								<p class="promotion-input-box">
									<input type="text" name="promotioncode" id="promotioncode" placeholder="프로모션 코드를 입력해주세요.">
									<button type="button">사용하기</button><!-- 비활성화 -->
									<!-- <button type="button" class="primary">사용하기</button> -->
									<!-- <button type="button" class="secondary">사용안함</button> -->
								</p>
							</div><!--// 프로모션 -->
							<%--<div class="result-wrap bg-color-gray first">
								<dl>
									<dt>배달 수수료</dt>
									<dd>0 원(배타서비스 무료 이벤트중)</dd>
								</dl>
							</div>--%>
							<div class="result-wrap bg-color-gray">
								<dl class="bold">
									<dt>공항대비 절약금액</dt>
									<dd name="calcul">- 15,340 원</dd>
								</dl>
								<dl>
									<dt>공항환율</dt>
									<dd name="compare_rate">1,157,900 원 <span>(1USD - 1,157.90)</span></dd>
								</dl>
								<dl>
									<dt>한패스환율</dt>
									<dd name="service_rate">1,157,900 원 <span>(1USD - 1,157.90)</span></dd>
								</dl>
							</div>
							<!--// 프로모션 -->
							<div class="row-columns two">
								<div class="column">
									<div class="column-inner">
										<h5>수령희망장소<em>*</em></h5>
										<div class="column-input-box">
											<input type="text" id="receiptPlace" name="receiptPlace" class="popup-btn" placeholder="수령 장소를 선택해주세요.">
											<span class="column-arrow"></span>
											<!--calculator popup -->
											<div class="calculator-popup data">
												<p class="calculator-title">수령 장소</p>
												<input type="hidden" id="receiptPlaceId"/>
												<ul class="place auto" id="receiptPlaceInfoList2">
													<li>
														<a href="#"><span class="calculator-list-txt">인천공항 제 1 터미널</span></a>
													</li>
													<li>
														<a href="#"><span class="calculator-list-txt">인천공항 제 2 터미널</span></a>
													</li>
													<li>
														<a href="#"><span class="calculator-list-txt">김포공항</span></a>
													</li>
													<li>
														<a href="#"><span class="calculator-list-txt">인천공항 제 2 터미널</span></a>
													</li>
													<li>
														<a href="#"><span class="calculator-list-txt">김포공항</span></a>
													</li>
												</ul>
											</div><!--calculator popup -->
										</div>
										<%--<div class="column-input-box">
											<input type="text" id="detail_place" name="detail_place" class="popup-btn" placeholder="상세 장소를 선택해주세요.">
											<span class="column-arrow"></span>
											<!--calculator popup -->
											<div class="calculator-popup data">
												<p class="calculator-title">상세 장소</p>
												<input type="hidden" id="receiptDetailPlaceId"/>
												<ul class="place" id="detailplaceList">
													&lt;%&ndash;<li><a href="#"><span class="calculator-list-txt">지하 1층 입국장 8번 게이트 앞</span></a></li>&ndash;%&gt;
												</ul>
											</div><!--calculator popup -->
										</div>--%>
										<p class="input-infor pos">* <span>터미널 선택</span>에 유의하시고, 공항에 도착하시면<span> 담당자에게 연락주세요.</span></p>
									</div>
								</div>
								<div class="column">
									<div class="column-inner time">
										<h5>수령희망날짜<em>*</em></h5>
										<div class="receive-time-wrap">
											<div class="receive-time">
												<div class="column-input-box">
													<c:forEach var="item" items="${dayList}" end="0">
														<%--<input type="text" id="inputday" name="inputday" class="popup-btn" placeholder="수령 날짜를 선택해주세요.">
														<input type="text" id="inputdayofweek" name="inputdayofweek" class="popup-btn" value="" disabled="disabled">--%>
														<input type="text" id="inputday" name="inputday" value="<c:out value="${item.day}" />" class="popup-btn" placeholder="수령 날짜를 선택해주세요."">
														<%--<input type="text" id="inputdayofweek" name="inputdayofweek" class="popup-btn" value="<c:out value="${item.dayoftheweek}" />" disabled="disabled">--%>
													</c:forEach>
													<span class="column-arrow"></span>
													<!--calculator popup -->
													<div class="calculator-popup data">
														<p class="calculator-title">수령희망날짜</p>
														<ul class="place daylist">
															<c:forEach var="item" items="${dayList}" >
																<li>
																	<a href="#"><span class="calculator-list-txt ns-en">${item.day}</span><span class="left-text pos-right">${item.dayoftheweek}</span></a>
																</li>
															</c:forEach>
														</ul>
													</div><!--calculator popup -->
												</div>
											</div>
											<div class="receive-time">
												<div class="column-input-box">
													<input type="text" id="inputTime" name="inputTime" class="popup-btn" placeholder="상세 시간을 선택해주세요.">
													<span class="column-arrow"></span>
													<!--calculator popup -->
													<div class="calculator-popup data">
														<p class="calculator-title">수령 시간</p>
														<ul class="place timelist">
															<c:forEach var="time" items="${timeList}" >
																<li><a href="#"><span class="calculator-list-txt ns-en">${time.time}</span></a></li>
															</c:forEach>
														</ul>
													</div><!--calculator popup -->
												</div>
											</div>
										</div>
										<p class="input-infor">* 안전한 환전을 위하여 탑승시간 <span>최소 2시간 전</span>에 연락주세요.</p>
									</div>
								</div>
							</div>
							<div class="next-check-box">
								<span class="next-btn"><a href="javascript:step3();">다음</a></span>
							</div>
						</form>
					</div>
				</div><!--// step2 -->
				<!-- step3 -->
				<div class="step-area step3">
					<a href="javascript:void(0);">
						<span class="step-check-ico"></span>
						<span class="step-number ns-en">STEP 3</span>
						<span class="step-title">신청 정보 및 신청인 정보 확인</span>
						<span class="step-arrow"></span>
					</a>
					<div class="step-area-inner step3">
						<h4>환전 신청 정보 확인</h4>
						<div class="result-wrap border-bottom-gray border-top-blue">
							<dl>
								<dt>환전신청금액</dt>
								<dd id="termAmount">1,000 USD</dd>
							</dl>
							<dl>
								<dt>입금예정금액</dt>
								<dd id="depositAmount">1,099,340 원</dd>
							</dl>
						</div>
						<div class="result-wrap mt0 small border-bottom-gray">
							<dl style="display: none;">
								<dt>프로모션코드</dt>
								<dd>생일 할인 쿠폰 -5,000원</dd>
							</dl>
							<dl>
								<dt>배달 수수료</dt>
								<dd>0 원(배타서비스 무료 이벤트중)</dd>
							</dl>
							<dl>
								<dt>공항대비 절약금액</dt>
								<dd name="calcul">15,340 원</dd>
							</dl>
							<dl>
								<dt>공항환율</dt>
								<dd name="compare_rate">1,157,900 원 <span>(1USD - 1,157.90)</span></dd>
							</dl>
							<dl>
								<dt>한패스환율</dt>
								<dd name="service_rate">1,157,900 원 <span>(1USD - 1,157.90)</span></dd>
							</dl>
						</div>
						<div class="result-wrap mt0 place">
							<dl>
								<dt>수령희망날짜</dt>
								<dd><span name="dayinfo">2018 / 07 / 01</span><br><span name="timeinfo">16:00 - 16:20</span></dd>
							</dl>
							<dl>
								<dt>수령장소</dt>
								<dd><span name="place">인천공항 제 1 터미널</span><br><span name="detailplace">1층 도착층 8번 게이트 앞</span></dd>
							</dl>
							<div class="pos-btn">
								<a href="#air1_popup" class="popup-open-btn" name="airplace">위치확인</a>
							</div>
						</div>
						<h4>환전 신청인 정보 확인</h4>
						<div class="result-wrap small border-top-blue">
							<dl>
								<dt>신청인 이름</dt>
								<dd name="applicantName">홍길동</dd>
							</dl>
							<dl>
								<dt>신분증 번호</dt>
								<dd name="applicantIdValue">900123 -  1******</dd>
							</dl>
							<dl>
								<dt>휴대폰 번호</dt>
								<dd name="applicantPhoneNumber">010 - 1234 - 5678</dd>
							</dl>
							<%--<dl>
								<dt>이메일</dt>
								<dd name="applicantEmail">Hanpass@gmail.com</dd>
							</dl>--%>
						</div>
						<p class="input-infor">
							* 환전 신청을 완료하면 고객님 휴대폰 메시지로 <span>가상계좌입금 정보가 전송</span>됩니다.<br>
							* 환전 신청 후 <span>30분 이내 입금</span>해 주십시오. 미입금 시 자동 취소되며 재환전하셔야 합니다.<br>
							* 신청자의 정보가 불일치할 경우, <span>메시지 수신 및 외화수령이 불가</span> 할 수 있습니다.
						</p>
						<div class="next-check-box">
							<span class="next-btn"><a href="javascript:step4();">환전신청하기</a></span>
						</div>
					</div>
				</div><!--// step3 -->
				<!-- step4 -->
				<div class="step-area step4">
					<a href="javascript:void(0);">
						<span class="step-check-ico"></span>
						<span class="step-number ns-en">STEP 4</span>
						<span class="step-title">신청완료</span>
						<span class="step-arrow"></span>
					</a>
					<div class="step-area-inner step4">
						<div class="step-finish-infor">
							<span class="step-finish-ico"></span>
							<span class="step-finish-large-text">
								환전신청이 완료되었습니다.
							</span>
							<span class="step-finish-small-text">
								환전 대금을 <span>아래 시간</span>까지 입금해주세요.<br>미입금시 자동 취소됩니다.
							</span>
						</div>
						<div class="result-wrap border-bottom-gray border-top-blue">
							<dl>
								<dt>환전신청금액</dt>
								<dd name="confirmTermAmount">1,000 USD</dd>
							</dl>
							<dl>
								<dt>입금예정금액</dt>
								<dd name="confirmDepositAmount">1,099,340</dd>
							</dl>
						</div>
						<div class="result-wrap mt0 border-bottom-gray">
							<dl>
								<dt>입금 계좌</dt>
								<dd name="depositinfo">국민은행 320-000030-00004</dd>
							</dl>
							<dl>
								<dt>입금 기한</dt>
								<dd class="font-color-blue" name="depositExpiredDate">2018-05-06 12:00<span>분까지</span></dd>
							</dl>
						</div>
						<div class="result-wrap small mt0">
							<dl>
								<dt>신청인 이름</dt>
								<dd name="applicantConfirmName">홍길동</dd>
							</dl>
							<dl>
								<dt>휴대폰 번호</dt>
								<dd name="applicantConfirmPhoneNumber">010 - 1234 - 5678</dd>
							</dl>
						</div>
						<p class="input-infor">
							* 신청자의 정보가 불일치할 경우, <span>메시지 수신 및 외화수령이 불가</span> 할 수 있습니다.<br>
							<span>* 신청인 이름과 입금자 명의가 일치</span>해야 입금확인이 가능합니다.
						</p>
						<div class="next-check-box">
							<span class="next-btn"><a href="javascript:exchangeConfirm();">확인</a></span>
						</div>
						<div class="banner-zone">
							<a href="https://event.worldroaming.co.kr/Main?ename=hanpass"><img src="static/images/exchange/wr_hanpass_banner.jpg"/></a>
						</div>
					</div>
				</div><!--// step4 -->
			</div><!--// step-wrap -->
		</div>
		<!--// exchange-wrap -->

		<!-- 예약조회 popup -->
		<div id="reserve_popup" class="layer-popup">
			<h3>예약조회</h3>
			<p class="popup-infor">
				예약자 정보<span>(성명, 휴대폰 번호, 예약번호)와 일치</span>하는 경우에만 예약확인이 가능합니다.
			</p>
			<div class="popup-inner">
				<div class="input-box">
					<label for="">신청인 성명<em>*</em></label>
					<input type="text" name="reserveRequestName" placeholder="신분증상 성명">
				</div>
				<div class="input-box">
					<label for="">휴대폰 번호<em>*</em></label>
					<input type="text" name="reservePhoneNumber" placeholder="휴대폰 번호 ‘-’ 없이 입력">
				</div>
				<div class="input-box">
					<label for="">예약번호<em>*</em></label>
					<input type="text" name="reserveCode" placeholder="문자로 받으셨던 예약번호 입력">
				</div>
			</div>
			<div class="popup-btnset">
				<a href="#" class="button navy cancel">취소</a><a href="javascript:reservationInquiry();" class="button blue">조회</a>
			</div>

		</div>
		<!--// 예약조회 popup -->

		<!-- 예약조회결과_환전취소 popup -->
		<div id="reserve_inquery_popup" class="layer-popup">
			<h3>예약조회결과</h3>
				<p class="popup-infor">
					예약 조회 결과를 확인할 수 있습니다.
				</p>
				<div class="popup-inner step3">
					<div class="result-wrap border-bottom-gray mt0">
						<dl>
							<dt>신청인 성명</dt>
							<dd name="reserveName">홍길동</dd>
						</dl>
						<dl>
							<dt>휴대폰 번호</dt>
							<dd name="reservePhoneNumber">010-1234-5678</dd>
						</dl>
						<dl>
							<dt>예약 번호</dt>
							<dd name="reserveCode">SQ123456</dd>
						</dl>
					</div>
					<div class="result-wrap mt0 small border-bottom-gray">
						<dl>
							<dt>신청일자</dt>
							<dd name="regdate">2018 / 08 / 01</dd>
						</dl>
						<dl>
							<dt>환전신청금액</dt>
							<dd><strong class="font-color-blue" name="termAmount">1,000 USD</strong></dd>
						</dl>
						<dl>
							<dt>환전대금입금액</dt>
							<dd name="depositAmount">712,350원</dd>
						</dl>
					</div>
					<div class="result-wrap mt0 place">
						<dl>
							<dt>수령희망시간</dt>
							<dd name="receiptDueDate"></dd>
						</dl>
						<dl>
							<dt>수령희망장소</dt>
							<dd><strong class="font-color-blue" name="receiptPlaceInfo" ></strong></dd>
						</dl>
						<dl>
							<dt>상태</dt>
							<dd name="exchangeStatusCode">대기중</dd>
						</dl>
					</div>
				</div>
			<div class="popup-btnset inquery">
				<%--<a href="#" class="button blue cancel">확인</a>--%>
				<!--//cancel-->
			</div>
			<p class="input-infor">
				* 문의사항이 있으면 <span>고객센터(1577-4338)</span>로 연락주세요.<br>
			</p>
		</div>
		<!--// 예약조회결과_환전취소 popup -->

		<!-- 예약조회결과_입금완료 popup -->
		<div id="payment_popup" class="layer-popup">
			<h3>예약조회결과</h3>
			<p class="popup-infor">
				예약 조회 결과를 확인할 수 있습니다.
			</p>
			<div class="popup-inner step3">
				<div class="result-wrap border-bottom-gray mt0">
					<dl>
						<dt>신청인 성명</dt>
						<dd>홍길동</dd>
					</dl>
					<dl>
						<dt>휴대폰 번호</dt>
						<dd>010-1234-5678</dd>
					</dl>
					<dl>
						<dt>예약 번호</dt>
						<dd>SQ123456</dd>
					</dl>							
				</div>
				<div class="result-wrap mt0 small border-bottom-gray">
					<dl>
						<dt>신청일자</dt>
						<dd>2018 / 08 / 01</dd>
					</dl>
					<dl>
						<dt>환전신청금액</dt>
						<dd><strong class="font-color-blue">1,000 USD</strong></dd>
					</dl>
					<dl>
						<dt>환전대금입금액</dt>
						<dd>712,350원</dd>
					</dl>												
				</div>
				<div class="result-wrap mt0 place">
					<dl>
						<dt>수령희망시간</dt>
						<dd>2018 / 07 / 01<br>16:00 - 16:20</dd>
					</dl>
					<dl>
						<dt>수령희망장소</dt>
						<dd><strong class="font-color-blue">인천공항 제 1 터미널<br>1층 도착층 8번 게이트 앞</strong></dd>
					</dl>
					<dl>
						<dt>상태</dt>
						<dd>대기중</dd>
					</dl>										
				</div>
			</div>
			<div class="popup-btnset">
				<a href="#payment_refund_popup" class="button navy popup-open-btn">환불요청</a><a href="#" class="button blue cancel">확인</a>
			</div>
			<p class="input-infor">
				* 문의사항이 있으면 <span>고객센터(1577-4338)</span>로 연락주세요.<br>
			</p>
		</div>
		<!--// 예약조회결과_입금완료 popup -->

		<!-- 예약조회결과_환불요청중  popup -->
		<div id="payment_refund_popup" class="layer-popup">
			<h3>예약조회결과</h3>
			<p class="popup-infor">
				예약 조회 결과를 확인할 수 있습니다.
			</p>
			<div class="popup-inner step3">
				<div class="result-wrap border-bottom-gray mt0">
					<dl>
						<dt>신청인 성명</dt>
						<dd>홍길동</dd>
					</dl>
					<dl>
						<dt>휴대폰 번호</dt>
						<dd>010-1234-5678</dd>
					</dl>
					<dl>
						<dt>예약 번호</dt>
						<dd>SQ123456</dd>
					</dl>							
				</div>
				<div class="result-wrap mt0 small border-bottom-gray">
					<dl>
						<dt>신청일자</dt>
						<dd>2018 / 08 / 01</dd>
					</dl>
					<dl>
						<dt>환전신청금액</dt>
						<dd><strong class="font-color-blue">1,000 USD</strong></dd>
					</dl>
					<dl>
						<dt>환전대금입금액</dt>
						<dd>712,350원</dd>
					</dl>												
				</div>
				<div class="result-wrap mt0 place">
					<dl>
						<dt>환불금액</dt>
						<dd><strong class="font-color-blue">712,350원</strong><br><span class="font-color-gray">(수수료 10%)</span></dd>
					</dl>					
					<dl>
						<dt>상태</dt>
						<dd>환불요청중</dd>
					</dl>										
				</div>
			</div>
			<div class="popup-btnset">
				<a href="#refund_popup" class="button blue popup-open-btn">확인</a>
			</div>
			<p class="input-infor">
				* 문의사항이 있으면 <span>고객센터(1577-4338)</span>로 연락주세요.<br>
			</p>
		</div>
		<!--// 예약조회결과_환불요청중 popup -->

		<!-- 환전 환불 popup -->
		<div id="refund_popup" class="layer-popup">
			<h3>환전 환불</h3>
			<p class="popup-infor">
				<span>신청인 성명, 예금주, 은행명, 계좌번호와 일치</span>하는 경우에만 환불이 가능합니다.
			</p>
			<div class="popup-inner step3">
				<div class="result-wrap border-bottom-gray mt0">
					<dl>
						<dt>신청인 성명</dt>
						<dd name="refundApplicantName">홍길동</dd>
					</dl>
					<dl>
						<dt>휴대폰 번호</dt>
						<dd name="refundPhone">010-1234-5678</dd>
					</dl>
					<dl>
						<dt>예약 번호</dt>
						<dd name="refundReserveCode">SQ123456</dd>
					</dl>
					<dl>
						<dt>환불 신청 금액</dt>
						<dd class="font-color-blue" name="refundDepositAmount">712,350원</dd>
					</dl>							
				</div>
				<div class="input-box">
					<label for="bankAccountName">예금주명<em>*</em></label>
					<input type="text" id="bankAccountName" name="bankAccountName" disabled="disabled">
				</div>
				<div class="input-box">
					<label for="bankName">은행명<em>*</em></label>
					<input type="text" id="bankName" name="bankName" class="popup-btn" placeholder="은행을 선택해주세요." >
					<span class="column-arrow"></span>
					<!--calculator popup -->
					<div class="calculator-popup bank">
						<p class="calculator-title">은행명</p>
						<ul class="flag bankList">
							<li>
								<a href="#"><span><img src="static/images/exchange/bank-hana@2x.png" alt=""></span><span class="calculator-list-txt">하나은행</span></a>
							</li>
							<li>
								<a href="#"><span><img src="static/images/exchange/bank-city@2x.png" alt=""></span><span class="calculator-list-txt">씨티은행</span></a>
							</li>
							<li>
								<a href="#"><span><img src="static/images/exchange/bank-woori@2x.png" alt=""></span><span class="calculator-list-txt">우리은행</span></a>
							</li>
							<li>
								<a href="#"><span><img src="static/images/exchange/bank-ibk@2x.png" alt=""></span><span class="calculator-list-txt">기업은행</span></a>
							</li>
							<li>
								<a href="#"><span><img src="static/images/exchange/bank-kb@2x.png" alt=""></span><span class="calculator-list-txt">국민은행</span></a>
							</li>																			
						</ul>
					</div><!--calculator popup -->
				</div>
				<div class="input-box">
					<label for="bankAccount">계좌번호<em>*</em></label>
					<input type="text" id="bankAccount" name="bankAccount" placeholder="계좌번호 '-' 없이 입력">
				</div>			
			</div>
			<div class="popup-btnset other">
				<a href="javascript:refund_validation();" class="button blue">확인</a>
			</div>
			<p class="input-infor">
				* 문의사항이 있으면 <span>고객센터(1577-4338)</span>로 연락주세요.<br>
				* 환불신청은 수령희망시간 기준 <span>2일 전</span>까지 가능합니다.
			</p>
		</div>
		<!--// 환전 환불 popup -->

		<!-- 안내사항 popup -->
		<div id="guide_popup" class="layer-popup">
			<h3>안내사항</h3>
			<h4>한패스 환전 이용방법</h4>
			<ol class="guide-infor">
				<li><span class="num">1</span><span class="font-color-blue">출국 2일 전</span>까지 환전을 신청하세요!</li>
				<li><span class="num">2</span>환전 신청하실 때 외화를 수령 받을 <span class="font-color-blue">시간, 장소(공항)</span>를 지정하세요.</li>
				<li><span class="num">3</span>출국 당일 신청하신 <span class="font-color-blue">시간, 장소 </span>로 오세요.</li>
				<li><span class="num">4</span>한패스세터(직원)를 만나 간단하게<span class="font-color-blue">본인확인 후 신청외화를 수령</span>하세요.</li>
				<li><span class="num">5</span><span class="font-color-blue">끝입니다. 떠나세요!</span></li>
			</ol>
			<h4>유의사항</h4>
			<ol class="guide-infor">
				<li><span class="num">1</span>한패스환전 수령 가능 시간은 <span class="font-color-blue">06:00 - 23:00</span> 입니다. 신청하신 수령 희망시간을 준수해주세요.</li>
				<li><span class="num">2</span>한패스세터(직원)대면 시 <span class="font-color-blue">신분증을 제시</span>하여야 신청외화를 수령할 수 있습니다.<br><span class="font-color-gray">(반드시 본인이 오셔야 됩니다)</span></li>
			</ol>
			<div class="popup-btnset">
				<a href="#" class="button blue cancel">확인</a>
			</div>			
		</div>
		<!--// 안내사항  popup -->

		<!-- 위치확인1 popup -->
		<div id="air1_popup" class="layer-popup"> 
			<h3>인천국제공항 제 1 터미널</h3>
			<p class="popup-infor">
				제 1 여객터미널 1층 8번 출구 월드로밍 전용부스 옆<br>운영시간 <span>08:00 - 22:00</span></p>
			<div class="popup-inner" style="padding-top:20px">
				<picture>							
					<source media="(max-width:480px)" srcset="static/images/exchange/img-airport-icn-1-m.png">							
					<img src="static/images/exchange/img-airport-icn-1.png" alt="">
				</picture>
			</div>
			<div class="popup-btnset">
				<a href="#" class="button blue cancel">확인</a>
			</div>			
		</div>
		<!--// 위치확인1  popup -->

		<!-- 위치확인1 popup -->
		<div id="air2_popup" class="layer-popup"> 
			<h3>인천국제공항 제 2 터미널</h3>
			<p class="popup-infor">
				제 2 여객터미널 1층 도착층 6번 출구 월드로밍 전용부스 옆<br>운영시간 <span>08:00 - 22:00</span>
			</p>
			<div class="popup-inner" style="padding-top:20px">
				<picture>							
					<source media="(max-width:480px)" srcset="static/images/exchange/img-airport-icn-2-m.png">							
					<img src="static/images/exchange/img-airport-icn-2.png" alt="">
				</picture>
			</div>
			<div class="popup-btnset">
				<a href="#" class="button blue cancel">확인</a>
			</div>			
		</div>
		<!--// 위치확인1  popup -->

		<!-- 개인정보 수집 및 취급에 관한 동의 popup -->
		<div id="terms1_popup" class="layer-popup"> 
			<h3>약관동의</h3>
			<div class="popup-inner scroll">
			<h4>한패스 환전 개인정보처리방침</h4>
				<p>
					한패스(주) (이하 '회사')은(는) 개인정보보호법에 따라 이용자의 개인정보 보호 및 권익을 보호하고 개인정보와 관련한 이용자의 고충을 원활하게 처리할 수 있도록 다음과 같은 처리방침을 두고 있습니다.<br>
					한패스(주) ('회사') 은(는) 개인정보처리방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다. 본 방침은 2018년 10월 1일부터 시행됩니다.
				</p>
			<h5>제1장 개인정보처리방침 동의</h5>
				<p class="mt20">제1조 (개인정보처리에 관한 동의)<br>
					개인정보의 항목 및 처리방법<br>
				</p>
				<p>
					가. 수집하는 개인정보의 항목<br>
					① 회사는 제공하는 서비스에 따라 다음과 같은 개인정보를 필수항목으로 수집하고 있습니다.<br>
					– 성명, 주민등록번호, 여권번호, 휴대전화번호, 전자우편주소, 서비스 이용 기록<br>
					② 회사는 다음과 같은 개인정보를 선택항목으로 수집할 수 있습니다.<br>
					– 은행명, 계좌번호, 예금주명, 접속 로그<br>
					나. 서비스 이용 과정이나 사업 처리 과정에서 다음과 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.<br>
					– IP주소, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록, 네트워크정보 등<br>
					다. 개인정보 수집방법<br>
					회사는 다음과 같은 방법으로 개인정보를 수집합니다.<br>
					– 홈페이지, 모바일, 배송 요청, 마케팅 활용<br>
					– 제휴사로부터의 제공<br>
					– 생성 정보 수집 툴을 통한 수집<br>
				</p>
				<p>
					제2조 (개인정보의 처리 목적)<br>
					가. 홈페이지 회원 관리<br>
					- 제한적 본인확인제 시행에 따른 본인확인, 분쟁 조정을 위한 기록 보존 등을 목적으로 개인정보를 처리합니다.<br>

					나. 민원사무 처리<br>
					- 민원인의 신원 확인, 사실조사를 위한 연락·통지, 처리결과 통보 등을 목적으로 개인정보를 처리합니다.<br>

					다. 재화 또는 서비스 제공<br>
					- 서비스 제공, 청구서 발송, 본인인증 등을 목적으로 개인정보를 처리합니다.<br>

					라. 마케팅 및 광고에의 활용<br>
					- 신규 서비스(제품) 개발 및 맞춤 서비스 제공, 접속빈도 파악 또는 회원의 서비스 이용에 대한 통계 등을 목적으로 개인정보를 처리합니다.
				</p>
				<p>
					제3조 (개인정보의 보유 및 이용기간)<br>
					회사는 법령에 따른 개인정보 보유·이용기간 또는 정보주체로부터 개인정보를 수집시에 동의 받은 개인정보 보유,이용기간 내에서 개인정보를 처리,보유합니다.<br>

					가. 관계법령에 의한 정보 보유<br>
					– 표시/광고에 관한 기록: 6개월 (전자상거래 등에서의 소비자보호에 관한 법률)<br>
					– 계약 또는 청약철회 등에 관한 기록: 5년 (전자상거래 등에서의 소비자보호에 관한 법률)<br>
					– 대금결제 및 재화 등의 공급에 관한 기록: 5년 (전자상거래 등에서의 소비자보호에 관한 법률)<br>
					– 외국환 환전 거래에 관한 기록: 5년 (외국환거래법 등에서의 환전장부 보관에 관한 법률)<br>
					– 소비자의 불만 또는 분쟁 처리에 관한 기록: 3년 (전자상거래 등에서의 소비자보호에 관한 법률)<br>
					– 로그인 기록: 3개월 (통신비밀보호법)
				</p>
				<p>
					제4조 (동의의 거부권 및 거부 시의 불이익 고지)<br>
					회원은 개인정보 수집·이용에 관한 동의를 거부할 권리가 있습니다. 다만, 계약 체결 및 이행 등을 위해 필요한 최소한의 개인정보 수집·이용에 관한 동의를 거부하는 경우에는 서비스 이용이 불가하고, 마케팅 활동 및 홍보를 위한 개인정보 수집·이용 및/또는 선택적 수집·이용에 관한 동의를 거부하는 경우에는 이벤트, 혜택에 대한 정보를 제공받지 못하거나 사은품·판촉물 제공, 제휴서비스 이용, 할인 혜택 적용 등의 불이익이 있을 수 있습니다.
				</p>
				<p>
					제5조 (개인정보의 파기절차 및 방법)<br>
					회사는 원칙적으로 개인정보 처리목적이 달성된 경우에는 지체없이 해당 개인정보를 파기합니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.<br>
					가. 파기절차<br>
					이용자가 입력한 정보는 목적 달성 후 별도의 DB에 옮겨져(종이의 경우 별도의 서류) 내부 방침 및 기타 관련 법령에 따라 일정기간 저장된 후 혹은 즉시 파기됩니다. 이 때, DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 다른 목적으로 이용되지 않습니다.<br>

					나. 파기기한<br>
					이용자의 개인정보는 개인정보의 보유기간이 경과된 경우에는 보유기간의 종료일로부터 5일 이내에, 개인정보의 처리 목적 달성, 해당 서비스의 폐지, 사업의 종료 등 그 개인정보가 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 5일 이내에 그 개인정보를 파기합니다.<br>

					다. 파기방법<br>
					전자적 파일 형태의 정보는 기록을 재생할 수 없는 기술적 방법을 사용합니다.<br>
					종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.
				</p>
				<p>
					제6조 (회원 및 법정대리인의 권리와 그 행사방법)<br>
					정보주체와 법정대리인의 권리·의무 및 그 행사방법 이용자는 개인정보주체로써 다음과 같은 권리를 행사할 수 있습니다.<br>
					가. 정보주체는 한패스(주)에 대해 언제든지 개인정보 열람,정정,삭제,처리정지 요구 등의 권리를 행사할 수 있습니다.<br>
					나. 제1항에 따른 권리 행사는 한패스(주)에 대해 개인정보 보호법 시행령 제41조제1항에 따라 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며 한패스(주)은(는) 이에 대해 지체 없이 조치하겠습니다.<br>
					다. 제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 개인정보 보호법 시행규칙 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.<br>
					라. 개인정보 열람 및 처리정지 요구는 개인정보보호법 제35조 제5항, 제37조 제2항에 의하여 정보주체의 권리가 제한 될 수 있습니다.<br>
					마. 개인정보의 정정 및 삭제 요구는 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다.<br>
					바. 한패스(주)은(는) 정보주체 권리에 따른 열람의 요구, 정정·삭제의 요구, 처리정지의 요구 시 열람 등 요구를 한 자가 본인이거나 정당한 대리인인지를 확인합니다.
				</p>
				<p>
					제7조 (개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항)<br>
					가. 회사는 개별적인 맞춤서비스를 제공하기 위해 이용정보를 저장하고 수시로 불러오는 ‘쿠기(cookie)’를 사용합니다.<br>
					나. 쿠키는 웹사이트를 운영하는데 이용되는 서버(http)가 이용자의 컴퓨터 브라우저에게 보내는 소량의 정보이며 이용자들의 PC 컴퓨터내의 하드디스크에 저장되기도 합니다.<br>
					- 쿠키의 사용 목적 : 이용자가 방문한 각 서비스와 웹 사이트들에 대한 방문 및 이용형태, 인기 검색어, 보안접속 여부, 등을 파악하여 이용자에게 최적화된 정보 제공을 위해 사용됩니다.<br>
					- 쿠키의 설치•운영 및 거부 : 웹브라우저 상단의 도구>인터넷 옵션>개인정보 메뉴의 옵션 설정을 통해 쿠키 저장을 거부 할 수 있습니다.<br>
					- 쿠키 저장을 거부할 경우 맞춤형 서비스 이용에 어려움이 발생할 수 있습니다.
				</p>
			<h5>제2장 개인정보 제공에 관한 동의</h5>
				<p>
					제8조 (개인정보처리 위탁)<br>
					가. 회사는 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고 있습니다.<br>

					환전서비스 위수탁<br>
						- 위탁받는 자 (수탁자) : 비제이네트웍스(주)<br>
						- 위탁하는 업무의 내용 : 물품배송 또는 청구서 등 발송, 본인인증(금융거래, 금융서비스)<br>
						- 위탁기간 : 위탁계약 해지시 까지<br>
						나. 회사는 위탁계약 체결시 개인정보 보호법 제25조에 따라 위탁업무 수행목적 외 개인정보 처리금지, 기술적․관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리․감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다.<br>
						다. 위탁업무의 내용이나 수탁자가 변경될 경우에는 지체없이 본 개인정보 처리방침을 통하여 공개하도록 하겠습니다.
				</p>
				<p>
					제9조 (제공 정보의 제3자 보유 및 이용 기간)<br>
					개인정보 제공 목적 달성 시까지 또는 본인의 제공 동의 철회 요청 시까지
				</p>
				<p>
					제10조 (동의의 거부권 및 거부 시의 불이익 고지)<br>
					회원은 위와 같은 본인의 개인정보 제공에 관한 동의를 거부할 권리가 있습니다. 다만, 계약 체결 등을 위해 필요한 최소한의 개인정보 제공에 관한 동의를 거부하는 경우 서비스 이용이 불가능하거나 처리 업무가 지연되는 등의 불이익이 있을 수 있습니다.<br>
					※ 본 제공 동의 이외에도 회사는 회원이 별도로 동의한 경우, 회원이 동의한 바에 따라 제3자에게 개인정보를 제공할 수 있습니다.<br>
				</p>
			<h5>제3장 개인정보 보호 대책과 책임자</h5>
				<p>
					제11조 (개인정보의 안전성 확보 조치)<br>
					개인정보의 안전성 확보 조치 회사는 개인정보보호법 제29조에 따라 다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 하고 있습니다.<br>
					가. 내부관리계획의 수립 및 시행<br>
					개인정보의 안전한 처리를 위하여 내부관리계획을 수립하고 시행하고 있습니다.<br>
					나. 해킹 등에 대비한 기술적 대책<br>
					한패스(주) ('한패스')은 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신·점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적/물리적으로 감시 및 차단하고 있습니다.<br>
					다. 접속기록의 보관 및 위변조 방지<br>
					개인정보처리시스템에 접속한 기록을 최소 6개월 이상 보관, 관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 보안기능 사용하고 있습니다.<br>
					라. 비인가자에 대한 출입 통제<br>
					개인정보를 보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.
				</p>
				<p>
					제12조 (개인정보 보호책임자 작성)<br>

					회사는 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.<br>

					개인정보 보호책임자<br>
					성명 : 주성재<br>
					직급 : 대리<br>
					연락처 : contact@hanpass.com<br>
					※ 개인정보 보호 담당부서로 연결됩니다.<br>


					기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.<br>

					개인정보침해신고센터 (http://www.1336.or.kr/국번없이 118)<br>

					정보보호마크인증위원회 (http://www.eprivacy.or.kr/02-580-0533~4)<br>

					대검찰청 첨단범죄수사과 (http://spo.go.kr/02-3480-2000)<br>

					경찰청 사이버테러대응센터 (http://www.ctrc.go.kr/02-392-0330)<br>
				</p>
			<h5>제4장 고지의무</h5>
				<p>
					이 개인정보처리방침은 시행일로부터 적용되며, 법령 및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우에는 변경사항의 시행 7일 전부터 공지사항을 통하여 고지할 것입니다.
				</p>
			</div>
			<div class="popup-btnset">
				<a href="#" class="button blue cancel">확인</a>
			</div>			
		</div>
		<!--// 개인정보 수집 및 취급에 관한 동의  popup -->

		<!-- 한패스 환전서비스 이용 약관 popup -->
		<div id="terms2_popup" class="layer-popup"> 
			<h3>약관동의</h3>
			<div class="popup-inner scroll">
			<h4>한패스 환전서비스 이용 약관</h4>
				<p class="mt20">제1조(적용범위)<br>
					이 약관은 한패스㈜ 회사(이하 ‘회사’라 합니다.)와 ‘회사가 제공하는「온라인 환전서비스」(이하 ‘서비스’라 합니다.)를 이용하는 고객’(이하 ‘고객’이라 합니다.) 사이에 적용됩니다.
				</p>
				<p>
					제2조(실명거래)<br>
					이 약관에서 사용하는 용어의 정의는 다음과 같습니다.<br>
					1. “환전통화”라 함은 “서비스가 가능한 외화 통화의 종류” 를 말합니다.<br>
					2. “수령장소”라 함은 “고객이 서비스 신청 시 외화 수령을 위해 회사와 약속하는 장소”를 말합니다.<br>
					3. “수령일자”라 함은 “고객이 서비스 신청 시 외화 수령을 위해 회사와 약속하는 날짜 및 시간” 을 말합니다.<br>
					4. “한패스환율”이라 함은 “서비스 신청 시점을 기준으로 은행에서 고시한 환율에 서비스 이용 수수료율을 추가 적용한 환율”을 말합니다.<br>
					5. “배달수수료”라 함은 “고객이 서비스 신청 시 회사와 약속한 장소 외에, 고객이 원하는 특정 장소로 외화를 배송하는 서비스를 요청할 시 대가로 부과하는 수수료”를 말합니다.<br>
					6. “기타서비스”라 함은 “회사가 특정한 시기에 제공하는 특정 서비스(예: 수수료할인, 선물제공 등)”를 말합니다.<br>
					7. “예약번호”라 함은 “서비스 신청완료 이후부터 수령완료 전까지의 기간 동안 고객이 서비스 신청 내역을 온라인에서 확인하거나, 또는 회사와 약속한 장소 또는 고객이 원하는 특정 장소로 외화를 전달하는 과정에서 실명확인과 함께 서비스 신청내역을 확인하기 위해 인증하는 번호”를 말합니다.
				</p>

				<p>
					제3조(실명거래)<br>
					고객은 회사와의 환전거래시 실명으로 거래하여야 하며, 회사가 실명확인을 위해 고객에게 실명확인증표 등 필요한 자료를 요구하거나, 관련 규정에서 정해진 실명인증방식을 진행토록 요구할 경우 이에 따라야 합니다.
				</p>
				<p>
					제4조(환전한도 등)<br>
					고객은 본 서비스를 통해 외국통화의 매입만 가능하며, 고객이 환전할 수 있는 한도는 미화 2천달러 이하입니다.
				</p>
				<p>
					제5조(적용환율)<br>
					① 회사는 고객으로부터 본 서비스 이용신청을 받은 경우 고객에게 적용할 환율에 관한 사항을 제공하여야 합니다.<br>
					② 회사는 고객에게 적용할 환율에 관한 사항을 회사 홈페이지 등에 게시하고 이를 최신 내용으로 관리하여야 합니다.
				</p>
				<p>
					제6조(신청 및 수령)<br>
					① 고객은 환전신청 시 환전금액 수령방법 및 수령일시를 정해 회사에 고지(통보)하여야 합니다. 다만, 무인키오스 등 비대면으로 수령하는 경우에는 수령일시를 고지하지 않을 수 있습니다.<br>
					② 회사는 본 서비스를 신청한 고객이 지정계좌에 입금할 경우 적용환율에 따라 고객이 수령하는 환전금액에 관한 사항을 고객에게 제공하고, 환전금액을 고객이 요청한 수령방법을 통해 요청한 시점에 전달(배송)하여야 합니다. 고객이 요청한 수령방법이 불가한 경우 또는 수령시점에 전달이 불가한 경우에는 해당 사유를 즉시 통보하여야 합니다.<br>
					③ 회사는 고객으로부터 본 서비스 이용신청을 받은 경우 고객이 환전신청 가능한 일자 및 수령에 소요되는 예상 기간에 관한 사항을 회사 홈페이지 게시 등 고객에게 제공하여야 하며, 이를 최신 내용으로 관리하여야 합니다.
				</p>
				<p>
					제7조(환전거래의 변경취소)<br>
					① 고객은 본 서비스를 신청한 후 배송 등 회사의 외국통화 지급절차가 진행되지 않은 건에 대하여 회사에 변경 또는 취소를 신청할 수 있습니다.<br>
					② 회사는 고객으로부터 환전신청건에 대한 변경 또는 취소를 요청받은 경우 해당 요청사항을 처리하고 그 결과를 고객에게 통보하여야 합니다.
				</p>
				<p>
					제8조(환전결과 통보)<br>
					회사는 환전금액이 정상적으로 전달(배송)이 완료된 경우 즉시 그 결과를 고객이 사전에 등록한 연락처 등을 통하여 고객에게 통지하여야 합니다.
				</p>
				<p>
					제9조(손해배상)<br>
					회사의 책임있는 사유로 인하여 고객에게 손해가 발생한 경우 회사의 손해배상 범위는 민법에서 정하고 있는 통상손해를 포함하고, 특별한 사정으로 인한 손해는 회사가 그 사정을 알았거나 알 수 있었을 때에 한하여 배상책임이 있습니다.
				</p>
				<p>
					제10조(환급)<br>
					① 고객의 귀책사유 없이 고객이 회사에 본 서비스를 신청하여 환전금액을 수령하기로 한 날에 환전거래가 완료되지 않은 경우에는 회사의 C/S팀에 환급을 신청할 수 있습니다.<br>
					② 회사는 C/S팀을 통해 고객으로부터 제1항의 환급신청을 받은 경우 특별한 사정이 있는 경우를 제외하고는 당초 고객이 지정계좌에 입금한 금액 및 제11조(손해배상) 해당금액 등을 고객에게 지급하여야 합니다.<br>
					③ 회사는 회사의 귀책사유 없이 고객이 환전거래가 완료되지 않은 상태에서 환급을 요청하는 경우 환전업무와 관련되어 발생된 비용에 대해 차감 후 지급할 수 있으며, 이에 대한 사항은 회사 홈페이지 또는 앱 등을 통해 고객의 환전 신청 및 환급 요청 시 고객에게 제공하여야 합니다.
				</p>
				<p>
					제11조(분쟁처리절차)<br>
					① 회사는 ‘환전업무와 관련하여 고객이 제기하는 정당한 의견이나 불만을 반영하고 고객이 환전업무와 관련하여 입은 손해를 배상하기 위한 절차’(이하 ‘분쟁처리절차’)에 관한 사항을 마련하고 있습니다.<br>
					② 회사는 분쟁사항에 대한 접수방법 및 분쟁처리결과에 대한 고객통보에 관한 사항 등을 고객에게 제공합니다.<br>
					1) 분쟁처리조직 : 분쟁처리담당자 : C/S팀  /  분쟁처리책임자 : C/S팀장 이춘<br>
					2) 접수방법 : contact@hanpass.com / 02-1522-0767 (평일 09:00 ~ 18:00, 점심시간 12:00 ~ 13:00, 토/일/공휴일 휴무<br>
					3) 접수 시 확인사항 : 본인 및 대리인의 성명, 생년월일, 주소, 전화번호, 민원 신청취지 및 사유, 본인 실명확인증표 사본, 대리인 신청 시 위임장 및 인감증명서 또는 본인서명사실확인서 제출<br>
					4) 분쟁처리결과에 대한 고객통보에 관한 사항 : 민원 접수 후 15일 이내에 처리결과를 이용자에게 통지(해당 처리결과 통보 시 수사기관 및 손해보험사 등 외부기관을 통한 조사결과는 해당 기관의 일정에 따라 다소 지연될 수 있음)<br>
					③ 고객은 환전거래의 처리에 관하여 이의가 있을 때에는 제2항의 분쟁처리조직에 그 해결을 요구할 수 있으며, 회사는 이를 조사하여 제2항의 처리기한 이내에 처리결과를 고객에게 통보하여야 합니다.<br>
					④ 회사는 분쟁처리책임자와 담당자 지정내역 및 그 연락처 등을 회사 홈페이지 등에 게시하고 이를 최신 내용으로 관리하여야 합니다.
				</p>
				<p>
					제12조(거래기록의 보존)<br>
					회사는 외국환거래법령 등에 따라 고객과의 환전거래 기록을 5년간 보관하여야 합니다.
				</p>
				<p>
					제13조(비밀보장의무)<br>
					① 회사는 ‘고객의 인적사항, 계좌정보, 회사와의 환전거래 내용 및 실적에 관한 자료 등 환전업무 수행을 통하여 알게 된 일체의 고객정보’(이하 ‘고객정보’라 합니다.)에 대하여 관계법령에서 정한 경우를 제외하고는 고객 동의 없이 제3자에게 제공하거나 업무 목적 외에 누설하거나 이용하여서는 아니 됩니다.<br>
					② 회사가 관리소홀 등 회사의 귀책사유로 제1항을 위반하거나 고객정보의 도난 또는 유출이 발생한 경우 회사가 피해고객에게 배상책임이 있습니다. 다만, 회사가 고의 또는 과실이 없음을 증명한 경우에는 그 책임을 면할 수 있습니다.
				</p>
				<p>
					제14조(약관의 교부․설명)<br>
					① 회사는 약관을 정하거나 변경한 경우 인터넷 홈페이지 등을 통하여 공시하여야 하며, 고객과 환전업무와 관련한 계약을 체결할 때 약관을 명시하여야 합니다.<br>
					② 회사는 고객에게 전자문서의 전송(전자우편을 이용한 전송을 포함합니다.), 모사전송, 우편 또는 직접 교부의 방식으로 약관의 사본을 고객에게 교부하여야 합니다.<br>
					③ 회사는 고객이 약관의 내용에 대한 설명을 요청하는 경우 다음 각 호의 어느 하나의 방법으로 고객에게 약관의 중요내용을 설명하여야 합니다.<br>
					1. 고객에게 직접 설명<br>
					2. 전자적 장치를 통하여 고객이 알기 쉽게 표시하고 고객으로부터 해당 내용을 충분히 인지하였다는 의사표시를 전자적 장치를 통하여 수령
				</p>
				<p>
					제15조(준용규정)<br>
					이 약관에서 정하지 않은 사항에 대하여는 외국환거래법규 등 관련법규에 따릅니다.
				</p>
				<p>
					제16조(관할법원)<br>
					이 거래와 관련한 분쟁이 발생할 경우 양 당사자의 합의에 의해 해결함을 원칙으로 합니다. 다만 당사자 간에 합의할 수 없거나 합의가 이루어지지 않아 이 거래와 관련하여 소송이 제기되는 경우 관할법원은 민사소송법에서 정하는 바에 따르기로 합니다.
				</p>
			</div>
			<div class="popup-btnset">
				<a href="#" class="button blue cancel">확인</a>
			</div>			
		</div>
		<!--// 한패스 환전서비스 이용 약관  popup -->

		<!-- 유의사항 popup -->
		<div id="note_popup" class="layer-popup"> 
			<h3>유의사항</h3>
			<div class="popup-inner scroll">
				<h4>수령 가능 시간</h4>
				<ol class="guide-infor">
					<li><span class="num">1</span>한패스환전 수령가능시간은 <span class="font-color-blue">06시부터 23시까지</span>입니다.</li>
					<li><span class="num">2</span>가능한 환전 신청 시 지정한 <span class="font-color-blue">수령희망시간</span>을 지켜주십시오.<br></li>
					<li><span class="num">3</span>출국 전까지 공항 혼잡, 체크인 시간 지연 등 만일의 사고에 대비하여 수령가능시간을 탑승시간 최소 2시간 이전으로 지정해주십시오.</li>
				</ol>
				<h4>수령 방법</h4>
				<ol class="guide-infor">
					<li><span class="num">1</span>신청하신 수령가능시간에 <span class="font-color-blue">한패스세터(직원)가 고객님</span>께 찾아갑니다.</li>
					<li><span class="num">2</span>한패스세터(직원)가 고객님께 <span class="font-color-blue">간단한 본인확인 절차</span>를 거친 후 신청외화를 전달드립니다.</li>
					<li><span class="num">3</span>수령장소<br>
						<span>- 인천공항 제1터미널 : 1층 도착층 8번 게이트 앞</span><br>
						<span>- 인천공항 제2터미널 : 1층 도착층 6번 게이트 앞</span>
					</li>
				</ol>
				<h4>수령 시 정보확인</h4>
				<ol class="guide-infor">
					<li><span class="num">1</span>한패스세터(직원)가 고객님께 본인확인을 위해 신분증을 요구하면, <span class="font-color-blue">신청 당시 선택한 신분증</span>을 세터에게 보여주십시오.</li>
					<li><span class="num">2</span><span class="font-color-blue">본인이 아닌 경우 수령이 불가 </span>하오니 유의바랍니다.</li>					
				</ol>
				<h4>환불 수수료 규정</h4>
				<ol class="guide-infor">
					<li>
						<span class="num">1</span>한패스환전의 환불규정은 운영 비용 발생 시점에 따라 다음과 같이 <span class="font-color-blue">차등적 수수료를 부과</span>합니다.<br><br>
						<span class="block"><strong class="font-color-blue">미입금 시</strong> : 환전신청 실패로 자동취소됩니다.</span>
						<span class="block"><strong class="font-color-blue">수령시간 기준 48시간 전까지 요청 시</strong> : 신청금액의 <span class="font-color-blue">100%</span> 환불</span>
						<span class="block"><strong class="font-color-blue">수령시간 기준 24시간 전까지 요청 시</strong> : 신청금액의 <span class="font-color-blue">95%</span> 환불</span>
						<span class="block"><strong class="font-color-blue">수령시간 기준 24시간 이내(당일환불) 요청 시</strong> : 신청금액의 <span class="font-color-blue">90%</span> 환불</span>
						<span class="block"><strong class="font-color-blue">미수령 시</strong> : 고객님께 별도로 연락하여 환불 경로를 수집 후 신청금액의 <span class="font-color-blue">85%</span> 환불</span>
					</li>
					<%--<li>
						<span class="num">2</span>결항, 지연 등 부득이한 사정으로 공항에 못오신 미수령 고객께는 사실확인절차를 거쳐 수수료 없이 환불해드립니다.
					</li>--%>
				</ol>
			</div>
			<div class="popup-btnset">
				<a href="#" class="button blue cancel">확인</a>
			</div>			
		</div>
		<!--// 유의사항  popup -->

		<!-- alert-popup -->
		<div id="alertMessage" class="alert-popup">
			<div class="alert-box">
				<div class="alert-inner">
					<span name="inputMessage">

					</span>
				</div>
				<div class="alert-btn-set">
					<button type="button" class="cancel">확인</button>
				</div>
			</div>
		</div>
		<!--// alert-popup -->

		<!-- alert-popup -->
		<div id="expiredDateMessage" class="alert-popup">
			<div class="alert-box">
				<div class="alert-inner">
					<span name="inputMessage">

					</span>
				</div>
				<div class="alert-btn-set double">
					<button type="button" class="cancel">취소</button>
					<button type="button" onclick="window.location.reload()">확인</button>
				</div>
			</div>
		</div>
		<!--// alert-popup -->

		<!-- alert-popup -->
		<div id="amountError" class="alert-popup">
			<div class="alert-box">
				<div class="alert-inner">
					<span>
						금액을 확인해주세요.
					</span>
				</div>
				<div class="alert-btn-set">
					<button type="button" class="cancel">확인</button>
				</div>
			</div>
		</div>
		<!--// alert-popup -->

		<!-- alert-popup btn double -->
		<div id="refundDoubleMessage" class="alert-popup">
			<div class="alert-box">
				<div class="alert-inner">
					<span name="inputMessage">

					</span>
				</div>
				<div class="alert-btn-set double">
					<button type="button" class="cancel">취소</button>
					<button type="button" onclick="refund_popup();">확인</button>
				</div>
			</div>
		</div>
		<!--// alert-popup btn double -->

		<!-- alert-popup bank btn double -->
		<div id="refundMessage" class="alert-popup">
			<div class="alert-box">
				<div class="alert-inner">
					<span name="inputMessage">
						한패스 / 국민은행 / 080802-****** 으로<br>
						<strong class="font-color-blue font-size-20">712,350 원</strong><br>
						환불요청하시겠습니까?
					</span>
				</div>
				<div class="alert-btn-set double">
					<button type="button" class="cancel">취소</button>
					<button type="button" onclick="refund();">확인</button>
				</div>
			</div>
		</div>
		<!--// alert-popup btn double -->
	</div><!--// wrapper -->
	<%--<%@include file="./footer-kr.jsp"%>--%>
	<div>
		<footer>
			<div class="footer-top">
				<p class="text-customer">환전고객센터</p>
				<p class="text-tel">1577.4338</p>
				<p class="text-time-weekday">업무시간 상담 :</p>
				<p class="text-time-weekday">평일 09:00 - 18:00</p>
				<p class="text-time-weekday">주말 / 공휴일 / 업무 외 시간 상담 :</p>
				<p class="text-time-weekday">카카오플러스친구 @한패스공항환전</p>
				<p class="text-time-weekday">06:00 - 09:00 / 18:00 - 23:00</p>
				<div class="text-wrap">
					<p class="info-1">
						<span><strong>주소 .</strong> 서울 성동구 아차산로 92, 광명타워 4층 04782 ㈜한패스</span>
						<span><strong>이메일 .</strong> exchange@hanpass.com</span>
					</p>
				</div>
			</div>
			<div class="footer-bottom">
				<div class="footer-inner">
					<p class="footer-logo"><a href="#"><img src="static/images/footer-logo-large.png" alt="hanpass"></a></p>
					<p class="copyright ns-en">Copyright Ⓒ HANPASS Co.,Ltd. 2018 All rights reserved.</p>
				</div>
			</div>
		</footer>
	</div>
</body>
</html>