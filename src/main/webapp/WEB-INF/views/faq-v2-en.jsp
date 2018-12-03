<%@include file="./header-gnb.jsp"%>
		<!-- sub contents -->
		<div class="sub-contents-wrap">
			<div class="sub-head one-line faq">
				<p class="sub-title terms">
					FAQ
				</p>
			</div>

			<fieldset>
				<legend>faq search</legend>
				<div class="search-box">
					<button></button>
					<input type="text" name="" placeholder="Ask a question or search by topic." class="ns-en">
				</div>
			</fieldset>		

			<ul class="terms-tab faq">
				<li class="terms_li" id="service"><a class="active">Service <span></span></a></li>
				<li class="terms_li" id="member"><a>Member <span></span></a></li>
				<li class="terms_li" id="account"><a>Account <span></span></a></li>
				<li class="terms_li" id="remittance"><a>Remittance <span></span></a></li>
				<li class="terms_li" id="others"><a>Others <span></span></a></li>
			</ul>

			<%@include file="./faq/service.jsp"%>
			<%@include file="./faq/member.jsp"%>
			<%@include file="./faq/account.jsp"%>
			<%@include file="./faq/remittance.jsp"%>
			<%@include file="./faq/others.jsp"%>
		</div>
	</div><!--// news content -->
		</div>
		
		
		<!--// sub contents -->
<%@include file="./footer.jsp"%>
		</footer>
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