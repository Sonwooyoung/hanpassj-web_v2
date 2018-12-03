<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./header-gnb-kr.jsp"%>
		<!-- news content -->
		<div class="news">
			<div class="news-head">
				<p class="news-title ns-en">
					<span>Appeal</span>
					<span>to People</span>
				</p>
				<div class="book"><img src="static/images/img-news-book.png" alt="book"></div>
				<dl class="infor-text-wrap">
					<dt class="ns-en">NEWS</dt>
					<dd>
						한패스의 다양한 소식과 사용자들이 꼭 알아야하는 공지사항 및 국내외 주요매체에서 다룬 기사들  그리고, 한패스 직원 한 명 한 명이 전하는 진솔한 이야기까지 기록하는 공간입니다.
					</dd>
				</dl>
			</div>
			<div class="news-contents">
				<!-- news-tab -->
				<ul class="news-tab">
					<li class="news_li" id="all"><a href="#" class="active">전체 <span></span></a></li>
					<li class="news_li" id="notice"><a href="#">공지사항 <span></span></a></li>
					<li class="news_li" id="event"><a href="#">이벤트 <span></span></a></li>
					<li class="news_li" id="system"><a href="#">시스템 공지 <span></span></a></li>
				</ul><!--// news-tab -->
				<!-- news-content -->
				<div id="all" class="tab news-content">
					<div class="news-suject">
						<a href="#"><strong>[공지사항]</strong>한패스 오픈 및 송금 라이센스 취득 공지<span class="news-time">2018.02.02</span></a>
						<div class="news-toggle">
							<p class="news-text">
								한패스㈜는 외국환거래법에 따라 기획재정부 장관으로부터 소액해외송금업 등록 허가를 받았습니다.<br/>
								한패스는 한국에서 필리핀, 네팔, 인도네시아, 캄보디아로 모바일 해외송금 서비스를 운영합니다.<br/>
								국가 별 한패스 페이스북 페이지에서 서비스 이용방법, 이벤트안내, 환율 등 다양한 정보를 확인하세요.
							</p>
						</div>
					</div>
					<div class="news-suject">
						<a href="#"><strong>[공지사항]</strong>고객 센터 안내<span class="news-time">2018.02.02</span></a>
						<div class="news-toggle">
							<p class="news-text">
								한패스는 4개국 언어 상담 서비스를 지원합니다.<br/>
								앱 사용 과정에서 문제가 생기면 고객센터로 문의해주세요.<br/><br/>
								1) 전화상담<br/>
								&nbsp; &nbsp; - 대표번호 : 1522-0767<br/>
								&nbsp; &nbsp; - 필리핀 : 02) 3409-1125<br/>
								&nbsp; &nbsp; - 네팔 : 02) 3409-1126<br/>
								&nbsp; &nbsp; - 인도네시아 : 02) 3409-1127<br/>
								&nbsp; &nbsp; - 캄보디아 : 02) 3409-1128<br/>
								운영 시간<br/>
								&nbsp; &nbsp; - 평일) 오전 09시 ~ 오후 9시<br/>
								&nbsp; &nbsp; - 주말) 오전 10시 ~ 오후 6시<br/><br/>

								2) 페이스북 메신저 상담<br/>
								&nbsp; &nbsp; - 필리핀 : @Hanpass.ph<br/>
								&nbsp; &nbsp; - 네팔 : @Hanpass.np<br/>
								&nbsp; &nbsp; - 캄보디아 : @Hanpass.khmer<br/>
								&nbsp; &nbsp; - 인도네시아 : @Hanpass.id
							</p>
						</div>
					</div>
					<div class="news-suject">
						<a href="#"><strong>[공지사항]</strong>페이스북 이벤트 안내<span class="news-time">2018.02.02</span></a>
						<div class="news-toggle">
							<img src="static/notice_img/notice3_facebook_special_event.png" alt="">
							<p class="news-text">
								한패스의 팬이 되어주세요!<br/>
								놀라운 선물이 기다리고 있습니다.<br/><br/>
								[이벤트 참여 방법]<br/>
								① 한패스 앱 가입하기<br/>
								② 송금하기<br/>
								③ 한패스 페이스북 페이지 좋아요 누르기<br/>
								④ 페이스북 프레임을 프로필 사진에 추가하기 (변경된 페이스북 프로필 사진 일주일간 유지)<br/>
								⑤ 본인의 송금 History를 캡처하여 한패스 페이스북 메신저로 전송<br/>
								⑥ 한패스 페이스북 이벤트 공지 게시물에 ‘Done’ 이라는 참여완료 댓글 달기<br/><br/>
								*더 자세한 내용은 페이스북 이벤트 공지 게시물을 통해 확인하실 수 있습니다.
							</p>
						</div>
					</div>
					<div class="news-suject more text-align-center" style="display:none;">
						<a href="#"><strong>More</strong> <span class="ion-chevron-down"></span></a>
					</div>
				</div><!--// news-content -->
				<div id="notice" class="tab news-content" style="display: none">
				<div class="news-suject">
						<a href="#"><strong>[공지사항]</strong>한패스 오픈 및 송금 라이센스 취득 공지<span class="news-time">2018.02.02</span></a>
						<div class="news-toggle">
							<p class="news-text">
								한패스㈜는 외국환거래법에 따라 기획재정부 장관으로부터 소액해외송금업 등록 허가를 받았습니다.<br/>
								한패스는 한국에서 필리핀, 네팔, 인도네시아, 캄보디아로 모바일 해외송금 서비스를 운영합니다.<br/>
								국가 별 한패스 페이스북 페이지에서 서비스 이용방법, 이벤트안내, 환율 등 다양한 정보를 확인하세요.
							</p>
						</div>
					</div>
					<div class="news-suject">
						<a href="#"><strong>[공지사항]</strong>고객 센터 안내<span class="news-time">2018.02.02</span></a>
						<div class="news-toggle">
							<p class="news-text">
								한패스는 4개국 언어 상담 서비스를 지원합니다.<br/>
								앱 사용 과정에서 문제가 생기면 고객센터로 문의해주세요.<br/><br/>
								1) 전화상담<br/>
								&nbsp; &nbsp; - 대표번호 : 1522-0767<br/>
								&nbsp; &nbsp; - 필리핀 : 02) 3409-1125<br/>
								&nbsp; &nbsp; - 네팔 : 02) 3409-1126<br/>
								&nbsp; &nbsp; - 인도네시아 : 02) 3409-1127<br/>
								&nbsp; &nbsp; - 캄보디아 : 02) 3409-1128<br/>
								운영 시간<br/>
								&nbsp; &nbsp; - 평일) 오전 10시 ~ 오후 9시<br/>
								&nbsp; &nbsp; - 주말) 오전 10시 ~ 오후 6시<br/><br/>

								2) 페이스북 메신저 상담<br/>
								&nbsp; &nbsp; - 필리핀 : @Hanpass.ph<br/>
								&nbsp; &nbsp; - 네팔 : @Hanpass.np<br/>
								&nbsp; &nbsp; - 캄보디아 : @Hanpass.khmer<br/>
								&nbsp; &nbsp; - 인도네시아 : @Hanpass.id
							</p>
						</div>
					</div>
					<div class="news-suject">
						<a href="#"><strong>[공지사항]</strong>페이스북 이벤트 안내<span class="news-time">2018.02.02</span></a>
						<div class="news-toggle">
							<img src="static/notice_img/notice3_facebook_special_event.png" alt="">
							<p class="news-text">
								한패스의 팬이 되어주세요!<br/>
								놀라운 선물이 기다리고 있습니다.<br/><br/>
								[이벤트 참여 방법]<br/>
								① 한패스 앱 가입하기<br/>
								② 송금하기<br/>
								③ 한패스 페이스북 페이지 좋아요 누르기<br/>
								④ 페이스북 프레임을 프로필 사진에 추가하기 (변경된 페이스북 프로필 사진 일주일간 유지)<br/>
								⑤ 본인의 송금 History를 캡처하여 한패스 페이스북 메신저로 전송<br/>
								⑥ 한패스 페이스북 이벤트 공지 게시물에 ‘Done’ 이라는 참여완료 댓글 달기<br/><br/>
								*더 자세한 내용은 페이스북 이벤트 공지 게시물을 통해 확인하실 수 있습니다.
							</p>
						</div>
					</div>
					<div class="news-suject more text-align-center" style="display:none;">
						<a href="#"><strong>More</strong> <span class="ion-chevron-down"></span></a>
					</div>
				</div>
				<div id="event" class="tab news-content" style="display: none">
				</div>
				<div id="system" class="tab news-content" style="display: none">
				</div>
			</div>
		</div><!--// news content -->
		<!-- footer -->
<%@include file="./footer-kr.jsp"%>
	</div><!--// wrapper -->
<script>	
$('.news_li').on('click', function(){
	var selectedTabId = $(this).attr('id');
	$('.news_li a').attr('class','deactive');
	$('a', this).attr('class','active');
	$('.tab').each(function() {
		$(this).css('display','none');
	});
	$('#'.concat(selectedTabId).concat('.tab')).css('display', 'block')
	return false;
})
</script>		
</body>
</html>