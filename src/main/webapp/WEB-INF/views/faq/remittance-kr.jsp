<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
			<!-- news-content -->
			<div id="remittance" class="tab news-content faq" style="display: none">
				<div class="news-suject faq">
					<a href="#">Q. 송금 수수료는 얼마인가요?<span class="faq-arrow"></span></a>
					<div class="news-toggle">
						<p class="news-text">
							국가별 송금 수수료는 App의 [송금] 화면에서 확인하실 수 있으며, 수수료는 입금할 금액에 포함되어 계산됩니다. 일부 국가의 수취 지점의 경우, 금액 수령 시 소액의 추가 수취 수수료가 부가될 수 있습니다.
						</p>
					</div>
				</div>
				<div class="news-suject">
					<a href="#">Q. 송금 완료까지 시간이 얼마나 걸리나요?<span class="faq-arrow"></span></a>
					<div class="news-toggle">
						<p class="news-text">
							송금신청은 24시간 가능하며, 송금이 처리되는 시간은 아래와 같이 적용됩니다.<br/>
							* 캐시픽업 : 평균 10분 이내<br/>
							* 계좌이체 : 오전 9시 ~ 오후 3시 송금완료 건 : 당일 1시간 이내 (평균 10분) / 오후 3시 이후 : 다음 영업일 오전 중 완료 (* 현지 국가의 공휴일 등 은행 영업사정에 따라 다를 수 있습니다.)
						</p>
					</div>
				</div>
				<div class="news-suject">
					<a href="#">Q. 최대 송금 한도는 얼마인가요?<span class="faq-arrow"></span></a>
					<div class="news-toggle">
						<p class="news-text">
							국내 금융당국의 지침에 따라 건 당 3,000달러 / 연 간 20,000달러의 한도 규정을 적용하고 있습니다.
						</p>
					</div>
				</div>
				<div class="news-suject">
					<a href="#">Q. 어떤 방식으로 돈을 받을 수 있나요? <span class="faq-arrow"></span></a>
					<div class="news-toggle">
						<p class="news-text">
							한패스의 파트너 가맹지점에서 수취할 수 있는 캐시픽업 (Cash Pick up) / 계좌이체 (Bank Transfer) / 도어 투 도어 (Door to door) 옵션을 제공하고 있습니다.
						</p>
					</div>
				</div>
				<div class="news-suject">
					<a href="#">Q. [수동] 가상계좌에 입금이 안되요. <span class="faq-arrow"></span></a>
					<div class="news-toggle">
						<p class="news-text">
							아래 항목 중 해당하는 사항이 없거나, 실패가 계속될 경우 고객센터로 문의 바랍니다.<br/>
							1. 가상 계좌의 유효 시간이 초과한(발급 후 12시간) 경우, 새로 송금 신청해 주세요.<br/>
						  	2. 계좌 등록한 은행이 점검 중일 수 있습니다. 잠시 후 다시 시도하시기 바랍니다.<br/>
						   	3. 송금 신청 시 발급받은 가상계좌번호와 금액이 정확한 지 확인해 주세요.<br/>
						    	4. 송금 신청 시 선택한 계좌와 이체하려는 계좌가 동일한 지 확인해 주세요.<br/>
						</p>
					</div>
				</div>
				<!-- over 5 -->
				<div style="display: none"  class="news-suject">
					<a href="#">Q. 송금이 실패/거절 되었습니다. <span class="faq-arrow"></span></a>
					<div class="news-toggle">
						<p class="news-text">
							아래 항목 중 해당하는 사항이 없거나, 실패가 계속될 경우 고객센터로 문의 바랍니다.<br/>
							  1. 수취 지점의 운영 사정에 따라 처리가 지연되거나 실패할 수 있습니다.<br/>
							 2. 신분증 정보와 등록한 계좌의 정보가 불일치하는 경우 송금이 거절될 수 있습니다.<br/>
							  3. 고객이 입력한 송금정보가 실제와 다른 경우 송금이 실패할 수 있습니다. 반드시 수취인 정보가 올바른지 확인해 주세요.<br/>
							  4. 출금 계좌로 등록한 은행이 점검 중일 수 있습니다. 잠시 후 다시 시도하시기 바랍니다.<br/>
							   5. 한패스 내부 보안청잭에 따라 자금세탁, 불법거래, 현지 법인계좌 송금으로 판단되는 경우 송금이 거절될 수 있습니다.<br/>
						</p>
					</div>
				</div>
				<div style="display: none" class="news-suject">
					<a href="#">Q. 보낸 돈을 현지에서 수령할 때, 어떤 정보가 필요한가요?<span class="faq-arrow"></span></a>
					<div class="news-toggle">
						<p class="news-text">
							계좌 이체 (Bank Transfer) : 없음.<br/>
							  캐시 픽업 (Cash Pick up) : 신청 상태가 '완료'로 변경되면, 영문+숫자 또는 숫자로 이루어진 [캐시픽업 코드]와 [파트너 컴퍼니]가 발급됩니다. 이 정보를 수취인에게 알려주세요. 현지의 수취지점에서 [캐시픽업 코드]와 [파트너 컴퍼니]를 지점에 제출하여 금액을 수령할 수 있습니다. 현지에서 수령이 어려우신 경우, 현지 파트너 고객센터에 전화하시면 빠르게 도움을 받으실 수 있습니다.<br/>
							   * 자세한 사항은 [송금 내역] 페이지에서 확인가능 ( 파트너 컴퍼니 : [필리핀 : Land Bank Remittance Service], [캐시픽업 코드], [파트너 컴퍼니], [수령 지점], [현지 파트너 C/S Contact] 등 )
						</p>
					</div>
				</div>
				<div style="display: none"  class="news-suject">
					<a href="#">Q. 송금 신청이 완료 됐는지 어떻게 확인할 수 있나요?<span class="faq-arrow"></span></a>
					<div class="news-toggle">
						<p class="news-text">
							한패스 모바일 앱의 History 메뉴를 통해 전체 거래내역 및 결과를 확인하실 수 있습니다. (* 삭제된 계좌의 송금 신청은 내역에서 확인되지 않을 수 있습니다.)
						</p>
					</div>
				</div>
				<div style="display: none"  class="news-suject">
					<a href="#">Q. 송금 신청을 취소하고 싶어요 (수취인 정보 오입력 등)<span class="faq-arrow"></span></a>
					<div class="news-toggle">
						<p class="news-text">
							송금 신청이 완료된 경우, 송금 프로세스가 이미 진행되어 취소가 불가능합니다. 현재 취소는 [입금 대기] 상태인 경우만 가능합니다, 이 경우 고객센터 유선 문의를 통해 자세히 안내받으실 수 있습니다.
						</p>
					</div>
				</div>
 				<div class="news-suject more text-align-center">
					<a style="cursor: pointer;"><strong>More</strong> <span class="ico-more-arrow"></span></a>
				</div>
			</div><!--// news-content -->