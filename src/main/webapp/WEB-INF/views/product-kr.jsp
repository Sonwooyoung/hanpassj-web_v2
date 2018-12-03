<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <title>한패스(주)-해외송금</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport"
          content="user-scalable=no, width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <link rel="icon" href="static" type="image/x-icon">
    <link rel="stylesheet" href="static/css/base.css">
    <link rel="stylesheet" href="static/css/contents.css">
    <link rel="stylesheet" href="static/css/jquery.bxslider.css">
    <link rel="stylesheet" href="static/css/plugin/ionicons-2.0.1/css/ionicons.min.css">

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
<%@include file="./header-gnb-kr.jsp"%>
<body>
    <div id="product">
        <section id="section-1">
            <div class="text-wrap">
                <p><span class="pd-large">송금이 빨라진다</span><span class="pd-large-xs ns-en">HANPASS</span></p>
                <p class="pd-small">최소한의 터치로 이루어지는 간편송금<br>해외송금은 쉽고, 빠르고 저렴하게</p>
                <ul class="btn-set">
                    <li><a href="https://play.google.com/store/apps/details?id=com.hanpass.remittance"
                           target="_blank"><img src="static/images/btn-googleplay.png" alt="googleplay"></a></li>
                    <li><a href="https://itunes.apple.com/app/id1344407760" target="_blank"><img
                            src="static/images/btn-appstore_open.png" alt="appstore"></a></li>
                </ul>
            </div>
            <div class="img"></div>
        </section>
        <section id="section-2" class="text-align-center">
            <div class="text-wrap">
                <p class="pd-large">최소한의 터치로 <span>간편송금</span></p>
                <p class="pd-small">궁금하다구요? 아래의 소개영상과 함께 지금 시작하세요!</p>
            </div>
            <div class="btn-set">
                <a href="#" class="blue">송금방법 <span class="ion-android-arrow-dropright-circle"></span></a>
                <a href="#" class="white">계좌등록방법 <span class="ion-android-arrow-dropright-circle"></span></a>
            </div>
            <div class="img"></div>
        </section>
        <section id="section-3" class="text-align-center">
            <div class="text-wrap">
                <p class="pd-large">언제, 어디서나 가능한 <span>해외송금</span></p>
                <p class="pd-small">원하는 시간에 최저의 송금 수수료로 송금이 가능합니다.</p>
            </div>
            <ul class="item-wrap">
                <li style="display:block"><img src="static/images/img-pd-3-1.jpg"
                                               alt=""><span>이제 단 한번의 클릭으로 쉽게</span></li>
                <li><img src="static/images/img-pd-3-2.jpg" alt=""><span>송금하세요. 365일 내내 주말,휴일없이</span></li>
                <li><img src="static/images/img-pd-3-3.jpg" alt=""><span>은행보다 최대 90%까지 저렴한 송금수수료</span></li>
                <li><img src="static/images/img-pd-3-4.jpg" alt=""><span>최대 24시간 이내 송금 보장</span></li>
            </ul>
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
                        <span class="txt">수수료<br>90%까지</span>
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
                <p class="pd-large">이제 <span>나만의 방식</span> 으로!</p>
                <p class="pd-small">다양한 해외송금방법으로 다욱 쉽고, 빠르게 보냅니다.</p>
            </div>
            <div class="img">
                <div class="item pos1">
                    <p class="large-text">캐시픽업</p>
                    <p class="small-text">한패스 공식 파트너 현지 지점에서 수령</p>
                </div>
                <div class="item pos2">
                    <p class="large-text">계좌이체</p>
                    <p class="small-text">현지 원하는 은행계좌로 송금</p>
                </div>
                <div class="item pos3">
                    <p class="large-text">캐시 카드</p>
                    <p class="small-text">이젠 해외송금도 Cash Card와 함께</p>
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
                <p class="pd-small">한패스의 안전한 송금이 여러분의 일상이 됩니다.</p>
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
										<span class="title">철저한 보안</span>
										<span class="infor">
											고객들의 개인정보 보호를 위해 한패스만의 강력한 보안 검증과 데이터 암호화 됩니다.
										</span>
									</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
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
                                <span class="number">3</span>
                                <span class="text-wrap">
										<span class="title">신뢰할 수 있는 송금 서비스</span>
										<span class="infor">
											송금과정의 투명성을 높여 고객의 해외송금거래를 100% 책임집니다.
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
                <p class="pd-small">한패스는 다국어로 고객문의를 안내합니다. 고객을 위한 저희의 노력은 멈추지 않을 것입니다.</p>
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