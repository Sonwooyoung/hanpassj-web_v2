<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./header-gnb-kr.jsp"%>
		<!-- sub contents -->
		<div class="sub-contents-wrap">
			<div class="sub-head">
				<p class="sub-title aboutus ns-en">
					<span class="block-one">Asia</span>
					<span class="block-two">and</span>
					<span class="block-three">Beyond</span>
				</p>
				<div class="pic"><img src="static/images/img-aboutus-top.png" alt=""></div>				
			</div>
			<dl class="sub-text-wrap">
				<dt class="ns-en">ABOUT US</dt>
				<dd>
					한패스는 아시아를 비롯한 글로벌 고객들에게 쉽고, 편리한 서비스를 제공하기 위해 고민합니다. 보다 더 편리한 일상을 만들기 위한 한패스만의 생각과 BI를 소개합니다.   
				</dd>
			</dl>
			<div class="sub-inner hexagon">
				<p class="sub-inner-title">
					한패스의 Hexagon
				</p>
				<p class="sub-inner-infor">
					한패스는 송금자와 수신자를 이어주는 하나의 송금 서비스망과 파트너(Partner), 시스템(System), 문화(Culture), 합법적인(Legal),<br class="mobile-hidden"> 금융(Finance) 그리고 고객(Customer)을 의미하는 6가지 요소를 육각형으로 표현합니다.
				</p>
			</div>
			<div class="hexagon-pic">
                <picture>
					<source media="(max-width: 320px)" srcset="static/images/img-aboutus-visual-320.png">
					<source media="(max-width: 750px)" srcset="static/images/img-aboutus-visual-750.png">
					<source media="(max-width: 1024px)" srcset="static/images/img-aboutus-visual-1024.png">
					<source media="(max-width: 1920px)" srcset="static/images/img-aboutus-visual-1920.png">
					<img src="static/images/img-aboutus-visual-1920.png" alt="">
				</picture>
			</div>			
		</div>
		<!-- 일상 속에서의 한패스 -->
		<div class="about-visual-wrap">
			<div class="sub-contents-wrap">
				<div class="about-visual-text">
					<div class="inbox">
						<span class="about-visual-title">
							일상 속에서의 한패스
						</span>
						<span class="about-visual-infor">
							한패스를 통해 언제 어디서든 송금 서비스를 이용할 수 있습니다.<br class="mobile-hidden">은행을 직접 가지 않아도, 일상 속에서 쉽고 편리한 서비스를 만나볼 수 있습니다.
						</span>
					</div>
				</div>
			</div>
		</div><!--// 일상 속에서의 한패스 -->
		<!-- 스마트한 한패스 -->
		<div class="sub-contents-wrap smart">
			<div class="sub-inner">
				<p class="sub-inner-title">
					더 빠르고, <span class="block">더 스마트한 한패스</span>
				</p>
				<p class="sub-inner-infor">
					송금 서비스의 허브를 의미하는 육각형과 언제, 어디서든 만날 수 있는 의미를 반영한 심볼입니다.<br class="mobile-hidden">나아가, 서비스의 중심으로서 아시아를 넘어 글로벌 고객들에게 서비스 이상의 가치를 제공하는 의미를 담고 있습니다.
				</p>
			</div>
			<div class="about-hanpass">
				<span class="pic-wrap">
					<img src="static/images/img-aboutus-blue-logo.jpg" alt="">
					<span class="pic-text">Standard Blue background</span>
				</span>
				<span class="pic-wrap">
					<img src="static/images/img-aboutus-blue-logo-1.jpg" alt="">
					<span class="pic-text">Reversed Color</span>
				</span>
			</div>
		</div><!-- 스마트한 한패스 -->
		<!--// sub contents -->
<%@include file="./footer-kr.jsp"%>
	</div><!--// wrapper -->	
	
</body>
</html>