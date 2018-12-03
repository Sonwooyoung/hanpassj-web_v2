<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./header-gnb-kr.jsp"%>
<script type="text/javascript" src="/static/js/hanpass.js"></script>
		<!-- sub contents -->
		<div class="sub-contents-wrap">
			<div class="sub-head">
				<p class="sub-title contactus ns-en">
					<span class="block-one">Send</span>
					<span class="block-two">a Signal</span>
				</p>
				<div class="pic contactus"><img src="static/images/img-contact-top.jpg" alt=""></div>
			</div>
			<dl class="sub-text-wrap contactus">
				<dt class="ns-en">CONTACT US</dt>
				<dd>
					한패스는 언제나 열린 마음으로 기다리고 있습니다. 우리는 함께 멀리 즐겁게 원합니다. 아래 양식을 통해 문의해주세요.
				</dd>
			</dl>

			<div class="contact-wrap">
				<div class="cont-left">
					<dl>
						<dt class="ns-en">HANPASS Address</dt>
						<dd>서울 성동구 아차산로 92, 광명타워 4층 04782 ㈜한패스</dd>
					</dl>
					<dl>
						<dt class="ns-en">Telephone</dt>
						<dd>(+82) 2.3409.1540</dd>
					</dl>
					<dl>
						<dt class="ns-en">Fax</dt>
						<dd>(+82) 2.3674.5988</dd>
					</dl>
					<dl>
						<dt class="ns-en">E-mail</dt>
						<dd>contact@hanpass.com</dd>
					</dl>
					<dl class="last">
						<dt>CONNECT WITH US</dt>
						<dd>
							<ul class="flag-wrap">
								<li class="fb">
									<a href="#">facebook <span class="go"></span></a>
									<div class="calculator-popup connect">
										<p class="calculator-title ns-en">facebook</p>
										<ul class="place"><!-- 0806 수정 -->
											<li>
												<a href="https://www.facebook.com/hanpass.kr" target="_blank" class="ns-en">@hanpass.kr</a>
											</li>
											<li>
												<a href="https://www.facebook.com/Hanpass.id" target="_blank" class="ns-en">@hanpass.id</a>
											</li>
											<li>
												<a href="https://www.facebook.com/Hanpass.ph" target="_blank" class="ns-en">@hanpass.ph</a>
											</li>
											<li>
												<a href="https://www.facebook.com/Hanpass.khmer" target="_blank" class="ns-en">@hanpass.khmer</a>
											</li>
											<li>
												<a href="https://www.facebook.com/hanpass.np" target="_blank" class="ns-en">@hanpass.np</a>
											</li>
											<li>
												<a href="https://www.facebook.com/hanpass.vnm" target="_blank" class="ns-en">@hanpass.vnm</a>
											</li>
										</ul>
									</div><!--calculator popup -->
								</li>
								<li class="nv"><a href="https://blog.naver.com/hanpassmaster" target="_blank">naverblog <span class="link"></span></a></li>
								<li class="is"><a href="https://www.instagram.com/hanpass_korea/" target="_blank">instagram <span class="link"></span></a></li>
								<li class="yt"><a href="https://www.youtube.com/channel/UCukxZqozxNQft2H60_E0e2A/featured" target="_blank">youtube <span class="link"></span></a></li>
							</ul>
						</dd>
					</dl>
				</div>
				<script>
                    $(document).ready(function(){
                        $('.flag-wrap .fb > a').on('click',function(){
                            var view = $(this).parent().find('div')
                            if(view.is(':visible')){
                                view.hide();
                                $(this).removeClass('active');
                            } else{
                                view.show();
                                $(this).addClass('active');
                            }
                            return false;
                        })
                        //body event
                        $('body').on('click', function(event) {
                            if($(event.target).parents('.calculator-popup.connect').length === 0) {
                                if($('.calculator-popup.connect').is(':visible')) {
                                    $('.calculator-popup.connect').hide();
                                    $('.flag-wrap .fb > a').removeClass('active')
                                }
                            }
                        });
                    })


					function sendEmail() {
						try {
							var errorMsg = "";
							var emailObject = new Object();
							emailObject.senderName = $("input[name=senderName]").val();
							emailObject.senderEmail = $("input[name=senderEmail]").val();
							emailObject.subject = $("input[name=subject]").val();
							emailObject.contents = $("textarea[name=contents]").val();

							// 등록 요청
							var url="${pageContext.request.contextPath}/send-mail";
							var data = JSON.stringify(emailObject);

							requestAjaxPost(url, data, sendEmailCallback);

						} catch(e) {
							alert("[sendEmail()] " + e.message);
						}
					}

					function sendEmailCallback(response, jqXHR) {
                    	console.log(response);
						try {
							if(jqXHR.status == 204) {
								alert("EMAIL_SEND_SUCCESS");
							} else {
								alert("FAIL_SEND_MAIL")
							}

							$("input[name=senderName]").val("");
							$("input[name=senderEmail]").val("");
							$("input[name=subject]").val("");
							$("textarea[name=contents]").val("");

						} catch(e) {
							alert("[sendEmailCallback(response, jqXHR)] " + e.message);
						}
					}

				</script>
				<!-- form -->
				<div class="cont-right">
					<p class="cont-title">아래 양식을 작성해주시면 빠르게 연락드리겠습니다.</p>
					<form id="mailcontent">
						<fieldset class="ns-en">
							<legend>questions form</legend>
							<div class="inbox-group">
								<label for="">* Your Name (Type in English)</label>
								<input type="text" name="senderName">
							</div>
							<div class="inbox-group">
								<label for="">* E-mail Address</label>
								<input type="text" name="senderEmail">
							</div>
							<div class="inbox-group">
								<label for="">* Subject</label>
								<input type="text" name="subject">
							</div>
							<div class="inbox-group">
								<label for="">* Message</label>
								<textarea name="contents" id="contents" cols="30" rows="7"></textarea>
							</div>
							<div class="form-btn">
								<a href="javascript:sendEmail()">제출</a>
							</div>
						</fieldset>
					</form>
				</div><!--// form -->
			</div>
			<div id="map"></div>							
		</div>
		
		
		<!--// sub contents -->
<%@include file="./footer-kr.jsp"%>
	</div><!--// wrapper -->	

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA4JIm_6DZGwNqU6sRVHYODf3LXvFXg4tU&callback=initMap" async defer></script>
<script>
var map;
function initMap() {
  var uluru = {lat: 37.544800, lng: 127.054210};
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 16,
    center: uluru
  });
  var marker = new google.maps.Marker({
    position: uluru,
    map: map
  });
}

initMap();
</script>	
</body>
<style>
#map {
  height: 70%;
  margin-top: 60px;
  margin-bottom: 120px;
}
html, body {
  height: 100%;
  margin: 0;
  padding: 0;
}
</style>
</html>