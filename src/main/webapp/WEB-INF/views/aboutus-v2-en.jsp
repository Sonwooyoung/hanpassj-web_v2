<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./header-gnb.jsp"%>
		<!-- sub contents -->
		<div class="sub-contents-wrap">
			<div class="sub-head">
				<p class="sub-title aboutus">
					<span class="block-one">Asia</span>
					<span class="block-two">and</span>
					<span class="block-three">Beyond</span>
				</p>
				<div class="pic"><img src="static/images/img-aboutus-top.png" alt=""></div>				
			</div>
			<dl class="sub-text-wrap">
				<dt>ABOUT US</dt>
				<dd>
					HANPASS thinks from your side.<br class="mobile-hidden"> 
					Our vision is to make your day-to-day financial life simpler and easier.<br class="mobile-hidden"> 
					We present our brand dentity with our innovative technology and customer-focused transparency.
				</dd>
			</dl>
			<div class="sub-inner hexagon">
				<p class="sub-inner-title">
					HANPASS Hexagon
				</p>
				<p class="sub-inner-infor">
					Our symbol originates from our six values of partner, system, culture, legal, finance and customer.<br class="mobile-hidden"> We are a single remittance service that connects the sender and receiver.
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
							Your money, your way
						</span>
						<span class="about-visual-infor">
							HANPASS wants to give you the freedom to send money whenever you want - from loved ones to friends and everyone in-between, fast and easy.
						</span>
					</div>
				</div>
			</div>
		</div><!--// 일상 속에서의 한패스 -->
		<!-- 스마트한 한패스 -->
		<div class="sub-contents-wrap smart">
			<div class="sub-inner">
				<p class="sub-inner-title">
					Remittance Hub - <span class="block">The smarter the better</span>
				</p>
				<p class="sub-inner-infor">
					As a center of service, the hexagon means to provide value with service to global customers beyond Asia.<br class="mobile-hidden">It is a symbol that represents the hub of remittance service and the ability to meet anywhere at any time.
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
			
<%@include file="./footer.jsp"%>
	</div><!--// wrapper -->	
	
</body>
</html>