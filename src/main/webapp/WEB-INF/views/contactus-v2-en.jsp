<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./header-gnb.jsp"%>
		<!-- sub contents -->
		<div class="sub-contents-wrap">
			<div class="sub-head">
				<p class="sub-title contactus">
					<span class="block-one">Send</span>
					<span class="block-two">a Signal</span>
				</p>
				<div class="pic contactus"><img src="static/images/img-contact-top.jpg" alt=""></div>				
			</div>
			<dl class="sub-text-wrap contactus">
				<dt>CONTACT US</dt>
				<dd>
					Let's stay in touch! We would love to connect with you and learn more about you. Our door is always open for you. We respect your voice and feedback.
				</dd>
			</dl>

			<div class="contact-wrap">
				<div class="cont-left">
					<dl>
						<dt>HANPASS Address</dt>
						<dd>4F, 92 Achasan-ro, Seongdong-gu, Seoul, Republic of Korea (04782)</dd>
					</dl>
					<dl>
						<dt>Telephone</dt>
						<dd>(+82) 2.3409.1540</dd>
					</dl>
					<dl>
						<dt>Fax</dt>
						<dd>(+82) 2.3674.5988</dd>
					</dl>
					<dl>
						<dt>E-mail</dt>
						<dd>contact@hanpass.com</dd>
					</dl>
					<dl class="last">
						<dt>CONNECT WITH US</dt>
						<dd>
							<ul class="flag-wrap">
								<li class="fb">
									<a href="#">facebook <span class="go"></span></a>
									<div class="calculator-popup connect">
										<p class="calculator-title">facebook</p>
										<ul>
											<li>
												<a href="https://www.facebook.com/hanpass.kr" target="_blank">@hanpass.kr</a>
											</li>
											<li>
												<a href="https://www.facebook.com/Hanpass.id" target="_blank">@hanpass.id</a>
											</li>
											<li>
												<a href="https://www.facebook.com/Hanpass.ph" target="_blank">@hanpass.ph</a>
											</li>
											<li>
												<a href="https://www.facebook.com/Hanpass.khmer" target="_blank">@hanpass.khmer</a>
											</li>
											<li>
												<a href="https://www.facebook.com/hanpass.np" target="_blank">@hanpass.np</a>
											</li>
											<li>
												<a href="https://www.facebook.com/hanpass.vnm" target="_blank">@hanpass.vnm</a>
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
				</script>
				<!-- form -->
				<div class="cont-right">
					<p class="cont-title">Fill out the form. We will get back to you as soon as we can!</p>
					<form action="">
						<fieldset>
							<legend>questions form</legend>
							<div class="inbox-group">
								<label for="">* Your Name (Type in English)</label>
								<input type="text" name="">
							</div>
							<div class="inbox-group">
								<label for="">* E-mail Address</label>
								<input type="text" name="">
							</div>
							<div class="inbox-group">
								<label for="">* Subject</label>
								<input type="text" name="">
							</div>
							<div class="inbox-group">
								<label for="">* Message</label>
								<textarea name="contents" id="contents" cols="30" rows="7"></textarea>
							</div>
							<div class="form-btn">
								<a href="#">SUBMIT FORM</a>
							</div>
						</fieldset>
					</form>
				</div><!--// form -->
			</div>
			<div id="map"></div>						
		</div>
		
		
		<!--// sub contents -->
			
<%@include file="./footer.jsp"%>
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