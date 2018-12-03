<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./header-gnb-kr.jsp"%>

		<!-- sub contents -->
		<div class="sub-contents-wrap">
			<div class="sub-head one-line faq">
				<p class="sub-title terms ns-en">
					FAQ
				</p>
			</div>

			<fieldset>
				<legend>faq search</legend>
				<div class="search-box">
					<button></button>
					<input type="text" name="" placeholder="궁금하신 점이 있다면 검색 또는 카테고리를 선택해주세요.">
				</div>
			</fieldset>		

			<ul class="terms-tab faq">
				<li class="terms_li" id="service"><a class="active">서비스 <span></span></a></li>
				<li class="terms_li" id="member"><a>회원가입 <span></span></a></li>
				<li class="terms_li" id="account"><a>계좌등록 <span></span></a></li>
				<li class="terms_li" id="remittance"><a>송금 <span></span></a></li>
				<li class="terms_li" id="others"><a>기타 <span></span></a></li>
			</ul>

			<%@include file="./faq/service-kr.jsp"%>
			<%@include file="./faq/member-kr.jsp"%>
			<%@include file="./faq/account-kr.jsp"%>
			<%@include file="./faq/remittance-kr.jsp"%>
			<%@include file="./faq/others-kr.jsp"%>
		</div>
	</div><!--// news content -->
		</div>
		
		
		<!--// sub contents -->
<%@include file="./footer-kr.jsp"%>
	</div><!--// wrapper -->	
<script>
$('.terms_li').on('click', function(){
	var selectedTabId = $(this).attr('id');
	$('.terms_li a').attr('class','deactive');
	$('a', this).attr('class','active');
	$('.tab').each(function() {console.log('kk')
		$(this).css('display','none');
	});
	$('#'.concat(selectedTabId).concat('.tab')).css('display', 'block')
})

// 'more'클릭했을 때 이벤트 처리 
$('.more').on('click', function() {
	console.log('more click')
	$(this).siblings().css('display','block');
	$(this).hide()
})
</script>
<style>
.terms_li {
	cursor: pointer;
}
</style>	
</body>
</html>