<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./header-gnb.jsp"%>
		<!-- sub contents -->
		<div class="sub-contents-wrap">
			<div class="sub-head one-line">
				<p class="sub-title terms ns-en">
					Terms
				</p>
			</div>		

			<ul class="terms-tab ns-en">
				<li class="terms_li" id="user-agreement"><a href="#" class="active">Hanpass User Agreement <span></span></a></li>
				<li class="terms_li" id="privacy-policy"><a href="#">Privacy Policy <span></span></a></li>
				<li class="terms_li" id="checkpay-agreement"><a href="#">CheckPay User Agreement <span></span></a></li>
				<li class="terms_li" id="kcb-agreement"><a href="#">KCB User Agreement <span></span></a></li>
			</ul>
			<%@include file="./terms/user-agreement.jsp"%>
			<%@include file="./terms/privacy-policy.jsp"%>
			<%@include file="./terms/checkpay-agreement.jsp"%>
			<%@include file="./terms/kcb-agreement.jsp"%>						
		</div>
		<!--// sub contents -->
<%@include file="./footer.jsp"%>
	</div><!--// wrapper -->			
<script>
$(document).ready(function(){
	$('.day-box > a').on('click',function(){
		var view = $('.day-list');
		if(view.is(':visible')){
			view.slideUp(500)
		} else{
			view.slideDown(500)
		}
		return false;
	})
})

$('.terms_li').on('click', function(){
	var selectedTabId = $(this).attr('id');
	console.log('dddd', selectedTabId)
	$('.terms_li a').attr('class','deactive');
	$('a', this).attr('class','active');
	$('.tab').each(function() {console.log('kk')
		$(this).css('display','none');
	});
	$('#'.concat(selectedTabId).concat('.tab')).css('display', 'block')
})
</script>
</body>
</html>