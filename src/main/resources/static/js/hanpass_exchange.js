//production
//var baseUrl ='https://exchange.hanpass.com'
//staging
//var baseUrl ='http://testexchange.hanpass.com'
//test
var baseUrl ='http://localhost:8081'

var placeList = new Object();
//최소값 최대값
var maxAmount;
var minAmount;
//신청정보 into object
var requestInfo = new Object();

var settings = {
	"async": true,
	"crossDomain": true,
	"url": baseUrl +"/exchange/web/v1/main/init",
	"method": "GET",
	"headers": {
		"content-type": "application/json",
		"cache-control": "no-cache"
	},
	"data": "access_token="+at,
	"dataType" : "json"
}

var settings2 = {
	"async": true,
	"crossDomain": true,
	"url": baseUrl +"/exchange/web/v1/estimate/exchange-amount",
	"method": "GET",
	"headers": {
		"content-type": "application/json",
		"cache-control": "no-cache"
	},
	"data": "termCurrencyCode=USD&termAmount=1000&access_token="+at,
	"dataType" : "json"
}

$.ajax(settings).done(function (data) {
	console.log(data);
	//수령장소 popup 초기화
	$("#receiptPlaceInfoList").html("");
	$("#receiptPlaceInfoList2").html("");
	var palceList = data.receiptPlaceInfoList;
	$("input[name=receiptPlace]").val(data.receiptPlaceInfoList[0].receiptPlaceName);
	$('#receiptPlace').css('color','black');
	$('#receiptPlaceId').val(data.receiptPlaceInfoList[0].receiptPlaceId);
	for (var i = 0; i < palceList.length; i++){
		//수령장소ID 선택을 위한 input 데이터 삽입
		$("#receiptPlaceInfoList").append('<li><a href="javascript:void(0);"><span class="calculator-list-txt">'
			+'<input type="hidden" name="placeid" value="'+data.receiptPlaceInfoList[i].receiptPlaceId+'"/> '
			+data.receiptPlaceInfoList[i].receiptPlaceName+'</span></a></li>');
		$("#receiptPlaceInfoList2").append('<li><a href="javascript:void(0);"><span class="calculator-list-txt">'
			+'<input type="hidden" name="placeid" value="'+data.receiptPlaceInfoList[i].receiptPlaceId+'"/>'
			+data.receiptPlaceInfoList[i].receiptPlaceName+'</span></a></li>');
	}

	//상세장소 object 데이터 생성
	var detailPlace = new Array();
	for (var i = 0; i < palceList.length; i++){
		var index = [];
		var palceDetailList = data.receiptPlaceInfoList[i].receiptDetailPlaceInfoList;
		for (var j = 0; j < palceDetailList.length; j++) {
			var placeData = new Object();
			placeData.receiptDetailPlaceId = palceDetailList[j].receiptDetailPlaceId;
			placeData.receiptDetailPlaceName = palceDetailList[j].receiptDetailPlaceName;
			placeData.receiptPlaceImgUrl = palceDetailList[j].receiptPlaceImgUrl;
			index.push(placeData);
		}
		detailPlace.push(index);
	}
	placeList.placeinfo = detailPlace;

	//상세장소 출력
	$('#detailplaceList').html('');
	$('#receiptDetailPlaceId').val(placeList.placeinfo[0][0].receiptDetailPlaceId);
	for(var i=0; i <placeList.placeinfo[0].length; i++){
		$('#detailplaceList').append('<li idx="0"><a href="javascript:void(0);"><span class="calculator-list-txt">'+placeList.placeinfo[0][i].receiptDetailPlaceName+'</span></a></li>')
	}

	console.log(data.bankInfoList);
	console.log(data.bankInfoList[0].nameKor);
	banklist = data.bankInfoList.length;
	console.log(banklist);
	$('.bankList').html('');
	for(var i=1; i <banklist; i++){
		$('.bankList').append('<li><a href="#"><span><img src="static/images/exchange/'+data.bankInfoList[i].imgSrc+'" alt=""></span><span class="calculator-list-txt" value="'+data.bankInfoList[i].bankSeq+'">'+data.bankInfoList[i].nameKor+'</span></a></li>');
	}

});

$.ajax(settings2).done(function (data) {
	$.extend(requestInfo,data);
	console.log(requestInfo);
	maxAmount = data.estimateInfo.maxAmount;
	minAmount = data.estimateInfo.minAmount;
	//$("#number_1").val(numberWithCommas(10000));
	$("#number_1").val(numberWithCommas(data.estimateInfo.termAmount));
	$("#number_2").val(numberWithCommas(data.estimateInfo.depositAmount));
	$("#number_3").val(numberWithCommas(data.estimateInfo.termAmount));
	$("#number_4").val(numberWithCommas(data.estimateInfo.depositAmount));
	$("dd[name=service_rate]").text(numberWithCommas(data.estimateInfo.depositAmount)+" 원").append("<span>(1"+data.estimateInfo.termCurrencyCode+" - "+data.estimateInfo.currencyServiceAmount+")</span>");
	$("dd[name=compare_rate]").text(numberWithCommas(data.estimateInfo.compareAmount)+" 원").append("<span>(1"+data.estimateInfo.termCurrencyCode+" - "+data.estimateInfo.currencyCompareAmount+")</span>");
	$("dd[name=calcul]").text(numberWithCommas(data.estimateInfo.depositAmount - data.estimateInfo.compareAmount)+" 원");
	$("#ExpiredDate").text(data.policyInfo.estimateExpiredDate);

});

$(document).ready(function(){

	setTimeout(function(){
		$('html, body').scrollTop(0);
	}, 100);

	//아코디언 탭 이벤트
	$('.step1 > a').on('click',function(){
		var view = $(this).parent().find('.step-area-inner');
		if(view.is(':visible')){
			view.hide();
			$('.step-area > a').removeClass('active');
		} else{
			$('.step-area-inner').hide();
			view.show();
			$('.step-area > a').removeClass('active');
			//$(this).addClass('active');
		}
		return false;
	})


	//아코디언 탭 이벤트
	$('.step2 > a').on('click', function () {
		if (($('.step1 > a').hasClass('active'))) {
			var view = $(this).parent().find('.step-area-inner');
			if (view.is(':visible')) {
				view.hide();
				$('.step2 > a').removeClass('active');
			} else {
				$('.step-area-inner').hide();
				view.show();
				$('.step2 > a').removeClass('active');
				//$(this).addClass('active');
			}
			return false;
		}
	});
});

//동적생성된 수령장소1 이벤트 처리
$(document).on('click','#receiptPlaceInfoList li a',function(){
	var flagName = $(this).find('>span.calculator-list-txt').text();
	var flagName_1 = $(this).find('>span.left-text').text();
	$('.calculator-popup').css({'display':'none'});
	$(this).parent().parent().parent().parent().find('input.popup-btn').val(flagName);
	$(this).parent().parent().parent().parent().find('input.input-day').val(flagName_1);
	$('span[name=place]').text(flagName);
	$('#receiptPlace').css('color','black');
	var receiptPlaceId = $(this).find('>span.calculator-list-txt input').val();

	//select 된 수령장소1의 상세 수령장소 출력
	var index = $(this).parent().closest('li').index();
	$('#receiptPlaceId').val(receiptPlaceId);
	$('#detailplaceList').html('');
	$('#detail_place').val(placeList.placeinfo[index][0].receiptDetailPlaceName);
	$('span[name=detailplace]').text(placeList.placeinfo[index][0].receiptDetailPlaceName);
	$('#receiptDetailPlaceId').val(placeList.placeinfo[index][0].receiptDetailPlaceId);
	$('#detail_place').css('color','black');

	//수령장소 선택 변경
	$('a[name=airplace]').attr('href','#air'+(index+1)+'_popup');

	for(var i=0; i <placeList.placeinfo[index].length; i++){
		$('#detailplaceList').append('<li idx="'+index+'"><a href="javascript:void(0);"><span class="calculator-list-txt">'
			+placeList.placeinfo[index][i].receiptDetailPlaceName+'</span></a></li>')
	}
});

//동적생성된 수령장소2 이벤트 처리
$(document).on('click','#receiptPlaceInfoList2 li a',function(){
	var flagName = $(this).find('>span.calculator-list-txt').text();
	var flagName_1 = $(this).find('>span.left-text').text();
	$('.calculator-popup').css({'display':'none'});
	$(this).parent().parent().parent().parent().find('input.popup-btn').val(flagName);
	$(this).parent().parent().parent().parent().find('input.input-day').val(flagName_1);
	$('span[name=place]').text(flagName);
	$('#receiptPlace').css('color','black');
	var receiptPlaceId = $(this).find('>span.calculator-list-txt input').val();

	//select 된 수령장소2의 상세 수령장소 출력
	var index = $(this).parent().closest('li').index();
	$('#receiptPlaceId').val(receiptPlaceId);
	$('#detailplaceList').html('');
	$('#detail_place').val(placeList.placeinfo[index][0].receiptDetailPlaceName);
	$('span[name=detailplace]').text(placeList.placeinfo[index][0].receiptDetailPlaceName);
	$('#receiptDetailPlaceId').val(placeList.placeinfo[index][0].receiptDetailPlaceId);
	$('#detail_place').css('color','black');

	//수령장소 선택 변경
	$('a[name=airplace]').attr('href','#air'+(index+1)+'_popup');

	for(var i=0; i <placeList.placeinfo[index].length; i++){
		$('#detailplaceList').append('<li idx="'+index+'"><a href="javascript:void(0);"><span class="calculator-list-txt">'
			+placeList.placeinfo[index][i].receiptDetailPlaceName+'</span></a></li>')
	}
});

//동적생성된 상세수령장소 이벤트 처리
$(document).on('click','#detailplaceList li a',function(){
	var parentindex = $(this).parent().closest('li').attr('idx');
	console.log("parentindex = "+parentindex);
	var chiledindex = $(this).parent().closest('li').index();
	console.log("chiledindex = "+chiledindex);
	var flagName = $(this).find('>span.calculator-list-txt').text();
	var flagName_1 = $(this).find('>span.left-text').text();
	$('#detail_place').css('color','black');
	$('.calculator-popup').css({'display':'none'});
	$(this).parent().parent().parent().parent().find('input.popup-btn').val(flagName);
	$(this).parent().parent().parent().parent().find('input.input-day').val(flagName_1);

	var receiptDetailPlaceId = placeList.placeinfo[parentindex][chiledindex].receiptDetailPlaceId
	$('#receiptDetailPlaceId').val(receiptDetailPlaceId);
	$('span[name=detailplace]').text(flagName);
});


$(document).on('click','.bank li a',function() {
	var flagName = $(this).find('>span.calculator-list-txt').text();
	var flagName_1 = $(this).find('>span.left-text').text();
	$('.calculator-popup').css({'display':'none'});
	$(this).parent().parent().parent().parent().find('input.popup-btn').val(flagName);
	$(this).parent().parent().parent().parent().find('input.input-day').val(flagName_1);
	return false
});

var popoup = {
	init : function(){
		popoup.open();
		$('.mask-layer').hide();
	},
	position : function(ind){
		var $layer = $(ind);
		var top = (($(window).height() - $layer.outerHeight()) / 2 );
		var ww = $(window).width();
		var ss = $(window).scrollTop();
		$layer.css({'top': ss+80+'px' })
	},
	open : function(){
		$('.popup-open-btn').on('click',function(){
			var obj = $(this).attr('href');
			popoup.position(obj);
			$(obj).show();
			$('body').append("<div class='mask-layer'></div>");
			/*$("html, body").css({overflow:'hidden'}).bind('touchmove');*/
			/*$("html, body").addClass("not_scroll");*/
			return false;
		})
	},
	layerAlert : function(id,message){
		var obj = '#'.concat(id);
		$(obj).show();
		//$('span[name=inputMessage]').text();
		$('span[name=inputMessage]').html('');
		if(message != ""){
			//var mdata = message.replace(/<br\s?\/?>/g,"\n");
			$('span[name=inputMessage]').html(message);
			//document.getElementsByName('inputMessage').values(message);
		}
		$('body').append("<div class='alert_mask-layer'></div>");
		return false;
	},
	layerPop : function(id){
		var obj = '#'.concat(id);
		$(obj).show();
		//var top = (($(window).height() - $(obj).outerHeight()) / 2 );
		var ss = $(window).scrollTop();
		$(obj).css({'top': ss+80+'px' })
		$('body').append("<div class='mask-layer'></div>");
		return false;
	}

}

$(document).ready(function(){
	popoup.init();
	$('.popup-btnset a.cancel').on('click',function(){
		$('.layer-popup').hide();
		/*$("html, body").css({'overflow':'visible'}).unbind('touchmove');*/
		$('.mask-layer').hide();
		/*$("html, body").removeClass("not_scroll")*/
		return false;
	})

	$('.alert-btn-set button.cancel').on('click',function(){
		$('.alert-popup').hide();
		/*$("html, body").css({'overflow':'visible'}).unbind('touchmove');*/
		$('.alert_mask-layer').hide();
		/*$("html, body").removeClass("not_scroll")*/
		return false;
	})

	//layer
	$('.calculator-button > a').on('click',function(){
		viewElement = $(this).parent().parent().find('.calculator-popup');
		if(viewElement.is(':visible')){
			viewElement.hide()
		} else{
			$('.calculator-popup').hide()
			viewElement.show();
		}
		return false;
	})

	$('input.popup-btn').on('focusin',function(){
		viewElement = $(this).parent().find('.calculator-popup');
		if(viewElement.is(':visible')){
			viewElement.hide();
		} else{
			$('.calculator-popup').hide()
			viewElement.show();
			viewElement.find('ul>li:eq(0)>a').focus();
		}
		return false;
	})

	//body event
	$('body').on('click', function(event) {
		if($(event.target).parents('.calculator-button,.select-box-wrap').length === 0) {
			if($('.calculator-popup').is(':visible')) {
				$('.calculator-popup').hide();
			}
		}
	});

	//select flag
	$('.calculator-popup.w500 a , .calculator-popup.w650 a').on('click',function(){
		var flagClass = 'usd,cny,jpy';
		var flagSplit = flagClass.split(',');
		var flagName_1 = $(this).find('>span.calculator-list-txt.currency').text();
		var flagName_2 = $(this).find('>span.left-text').text();
		var ind = $(this).parent().index();
		var minAmountList = [100,600,9000];
		var maxAmountList = [2000,13800,220000];
		if(flagName_1 == "USD" || flagName_1 == "CNY" || flagName_1 == "JPY"){
			$(document).find('.ico-flag').attr('class','ico-flag '+flagSplit[ind]);
			$('.calculator-popup').css({'display':'none'});
			$(document).find('.flag-text-large').text(flagName_1);
			$(document).find('.flag-text-small').text(flagName_2);
			$(document).find('.nation-name').text(flagName_1)
			$(document).find('input.popup-btn').attr('class','popup-btn checked');
			minAmount = minAmountList[ind];
			maxAmount = maxAmountList[ind];
			$("#number_1").val(0);
			$("#number_2").val(0);
			$("#number_3").val(0);
			$("#number_4").val(0);
			$('#baseExchangeableAmount').hide();
		}else{
			alert("서비스 준비중입니다.");
		}
	})



	//기타 selcet box popup 이벤트 처리
	$('.daylist a').on('click',function(){
		$('#inputday').css('color','black');
		$('#inputdayofweek').css('color','black');
		var flagName = $(this).find('>span.calculator-list-txt').text();
		var flagName_1 = $(this).find('>span.left-text').text();
		$('span[name=dayinfo]').text(flagName);
		$('.calculator-popup').css({'display':'none'});
		$(this).parent().parent().parent().parent().find('input.popup-btn').val(flagName);
		$(this).parent().parent().parent().parent().find('input.input-day').val(flagName_1);
		return false
	})

	//시간선택 이벤트 처리
	$('.timelist a').on('click',function(){
		$('#inputTime').css('color','black');
		var flagName = $(this).find('>span.calculator-list-txt').text();
		var flagName_1 = $(this).find('>span.left-text').text();
		$('span[name=timeinfo]').text(flagName);
		$('.calculator-popup').css({'display':'none'});
		$(this).parent().parent().parent().parent().find('input.popup-btn').val(flagName);
		$(this).parent().parent().parent().parent().find('input.input-day').val(flagName_1);
		return false
	})

	//신분증 선택 이벤트 처리
	$('.idinfolist a').on('click',function(){
		var flagName = $(this).find('>span.calculator-list-txt').text();
		var flagName_1 = $(this).find('>span.left-text').text();
		var idcode = $(this).find('>input[name=idcard]').val();
		$('#idcode').val(idcode);
		$('#idInfo').css('color','black');
		$('.calculator-popup').css({'display':'none'});
		$(this).parent().parent().parent().parent().find('input.popup-btn').val(flagName);
		$(this).parent().parent().parent().parent().find('input.input-day').val(flagName_1);
		return false
	})

	$('.calculator-popup.data a').on('click',function(){
		var flagName = $(this).find('>span.calculator-list-txt').text();
		var flagName_1 = $(this).find('>span.left-text').text();
		$('.calculator-popup').css({'display':'none'});
		$(this).parent().parent().parent().parent().find('input.popup-btn').val(flagName);
		$(this).parent().parent().parent().parent().find('input.input-day').val(flagName_1);
		return false
	})

	$('.calculator-popup.bank a').on('click',function(){
		alert("!!!!!");
		var flagName = $(this).find('>span.calculator-list-txt').text();
		var flagName_1 = $(this).find('>span.left-text').text();
		$('.calculator-popup').css({'display':'none'});
		$(this).parent().parent().parent().parent().find('input.popup-btn').val(flagName);
		$(this).parent().parent().parent().parent().find('input.input-day').val(flagName_1);
		return false
	})

	//promotion
	$('.promotion-title a').on('click',function(){
		$(this).parent().parent().toggleClass('active');
		return false;
	})

	// slide

	function dots(event) {
		var $nav = $('.slide-dot-lst li');
		var $flag = $('.ex-number div')
		var item = event.page.index;
		$nav.removeClass('active');
		if(item == -1){
			$('.slide-dot-lst li:eq(0)').addClass('active');
		} else{
			$('.slide-dot-lst li:eq('+item+')').addClass('active');
			$('.ex-number div').fadeOut(500);
			$('.ex-number div:eq('+item+')').fadeIn(500);
		}
	}

	var slideName = $('.owl-carousel');
	slideName.owlCarousel({
		smartSpeed:700,
		loop:true,
		nav:false,
		items:1,
		autoplay:true,
		autoplayTimeout:3000,
		onChanged:dots,
		animateOut: 'fadeOut',
		animateIn: 'fadeIn'
	});

	$("#exchangeRequest").on('click',function(e) {
		console.log("@@@@@@@@@@@@@@@@@@");
		//form 초기화
		$('form').each(function () {
			this.reset();
		});
		//경고문구 초기화
		$('.input-box').removeClass('warning');
		//탭 초기화
		$('.step-area-inner').hide();
		$('.step1').removeClass('active');
		$('.step1> a').removeClass('active');
		$('.step2').removeClass('active');
		$('.step2> a').removeClass('active');
		$('.step3').removeClass('active');
		$('.step3> a').removeClass('active');
		var inputAmount = $("#number_1").val();
		console.log(inputAmount);
		if(inputAmount > maxAmount && inputAmount < minAmount){
			popoup.layerAlert('alertMessage','환전 신청할 수 없는 금액');
		}else{
			exchangeRequest(e);
		}
	});

	//환율 계산 조회
	//calculExchange();

	//인증 문자 전송
	$('#telCertRequest').on('click',function(){
		var telconfirm =  $('#telCertRequest').text();
		//var telconfirm =  '인증완료';
		switch (telconfirm) {
			case '인증번호 받기':
				console.log('sendsms');
				var reqUrl = baseUrl + '/exchange/web/v1/sendsms';
				var telnum = $('#tel1').val();
				if (telnum == null || telnum == "") {
					alert("휴대폰 번호를 입력해주세요");
					$('#tel1').focus();
					return;
				}
				var data = [];
				data.push("destNumber=" + telnum);
				data.push("access_token=" + at);
				$.ajax({
					type : "GET"
					, url : reqUrl
					, accept : "application/json"
					, contentType : "application/json; charset-utf-8"
					, data : data.join('&')
					, error : function(jqXHR, textStatus, errorThrown) {
						console.log(errorThrown);
					}
					, success : function(data, textStatus, jqXHR){
						if($('#telCertRequest').text() == '인증번호 받기'){
							$('#telCertRequest').text('인증하기');
							timer_start();
						}
					}
				});
				break;
			case '인증하기' :
				console.log('confirmSms');
				var reqUrl = baseUrl + '/exchange/web/v1/confirmSms';
				var telnum = $('#tel1').val();
				var telCert = $('#telCert').val();
				var data = [];
				data.push("destNumber=" + telnum);
				data.push("messageBody="+ telCert)
				data.push("access_token=" + at);
				$.ajax({
					type : "GET"
					, url : reqUrl
					, accept : "application/json"
					, contentType : "application/json; charset-utf-8"
					, data : data.join('&')
					, error : function(jqXHR, textStatus, errorThrown) {
						console.log(errorThrown);
					}
					, success : function(data, textStatus, jqXHR){
						if(data.resultCode == "0000"){
							popoup.layerAlert('alertMessage','인증완료 되었습니다.');
							$('#telCertRequest').text('인증완료');
							$('#telCert').prop('disabled',true);
							//$('#telCert').val('인증완료 되었습니다.');
							tstop();
							$('#timer_s').html('');
						}else{
							$('#telCertRequest').text('인증번호 받기');
							tstop();
							$('#timer_s').html('03:00');
						}
					}
				});
				break;
			case '인증완료' :
				$('#telCertRequest').text('인증완료');
				$('#telCert').prop('disabled',true);
				//$('#telCert').val('인증완료 되었습니다.');
				console.log('success!!');
				break;
		}
	})

	// '-' 빼기 이벤트
	$('.withoutdash input').on('focusout',function() {
		var inputdata = $(this).attr('id'); // 사용자가 데이터를 입력한 필드의 아이디 /
		var inputvalidation = $('#'.concat(inputdata)).val();
		$('#'.concat(inputdata)).val(inputvalidation.replace(/-/g,""));
	})

	$('.calculator-number-box.black input').on('input',function() {
		var position = 'calculator';
		user_input_base = $(this).attr('id'); // 사용자가 데이터를 입력한 필드의 아이디 /
		user_input_currency = $(this).siblings('div').find('.flag-btn-txt').text(); // 사용자가 데이터를 입력한 필드의 통화
//		console.log('uuu', user_input_base, user_input_currency)
		var baseMoneyAmount = $('#'.concat(user_input_base)).val(); // 사용자가 입력한 금액
		var permitMoney = baseMoneyAmount.replace(/,/gi,'');
		var selectedCurr = $(".flag-text-large.cal").text();
		var data = JSON.stringify({
			"termCurrencyCode": selectedCurr, "termAmount": baseMoneyAmount.replace(/,/gi,'') ,"access_token" : at,
			"maxAmount" : maxAmount, "minAmount" : minAmount
		});
//		console.log(data)
		calculExchange(data,position);
	})

	$('.calculator-number-box.step2 input').on('input',function() {
		var position = 'step2';
		//console.log('input call');
		user_input_base = $(this).attr('id'); // 사용자가 데이터를 입력한 필드의 아이디 /
		user_input_currency = $(this).siblings('div').find('.flag-btn-txt').text(); // 사용자가 데이터를 입력한 필드의 통화
//		console.log('uuu', user_input_base, user_input_currency)
		var baseMoneyAmount = $('#'.concat(user_input_base)).val(); // 사용자가 입력한 금액
		var selectedCurr = $(".flag-text-large.cal").text();
		var data = JSON.stringify({
			"termCurrencyCode": selectedCurr, "termAmount": baseMoneyAmount.replace(/,/gi,'') ,"access_token" : at,
			"maxAmount" : maxAmount, "minAmount" : minAmount
		});
//		console.log(data)
		calculExchange(data,position);
	})
});

function calculExchange(data,position){
	var inputAmount = JSON.parse(data).termAmount;
	var reg = new RegExp('^[0-9]+$'); // 숫자외의 문자가 포함되어 있는지 검사하는 정규식
	var isPureNumber =  reg.test(inputAmount);
	var amountboolean = false;
	if(!isPureNumber)
		return;

	if(position != "change"){
		if(position == "calculator"){
			if(inputAmount > maxAmount){
				$('#baseExchangeableAmount').text('최대 '+numberWithCommas(maxAmount)+' '+JSON.parse(data).termCurrencyCode);
				$('#baseExchangeableAmount').show();
				$('#number_2').val("0")
				return;
			}else{
				$('#baseExchangeableAmount').hide();
				amountboolean = true;
			}

			if(inputAmount < minAmount){
				$('#baseExchangeableAmount').text('최소 '+numberWithCommas(minAmount)+' '+JSON.parse(data).termCurrencyCode);
				$('#baseExchangeableAmount').show();
				$('#number_2').val("0")
				return;
			}else{
				$('#baseExchangeableAmount').hide();
				amountboolean = true;
			}
		}else{
			if(inputAmount > maxAmount){
				$('#permitAmount').text('최대 '+numberWithCommas(maxAmount)+' '+JSON.parse(data).termCurrencyCode);
				$('#permitAmount').show();
				$('#number_4').val("0")
				return;
			}else{
				$('#permitAmount').hide();
				amountboolean = true;
			}

			if(inputAmount < minAmount){
				$('#permitAmount').text('최소 '+numberWithCommas(minAmount)+' '+JSON.parse(data).termCurrencyCode);
				$('#permitAmount').show();
				$('#number_4').val("0")
				return;
			}else{
				$('#permitAmount').hide();
				amountboolean = true;
			}
		}
	}



	var param = [];
	param.push("termCurrencyCode="+(JSON.parse(data)).termCurrencyCode);
	param.push("termAmount="+(JSON.parse(data)).termAmount);
	param.push("access_token="+(JSON.parse(data)).access_token);

	var reqUrl = baseUrl+"/exchange/web/v1/estimate/exchange-amount";
	$.ajax({
		type : "GET"
		, async: true
		, crossDomain: true
		, url : reqUrl
		, accept : "application/json"
		, contentType : "application/json; charset-utf-8"
		, dataType : "json"
		, data : param.join("&")
		, error : function(jqXHR, textStatus, errorThrown) {
			console.log(errorThrown)
		}
		, success : function(data, textStatus, jqXHR){
			//신청정보 추가
			$.extend(requestInfo,data);
			console.log(requestInfo);
			//console.log(numberWithCommas(data.estimateInfo.baseToUsdAmount));

			minAmount = data.estimateInfo.minAmount;
			maxAmount = data.estimateInfo.maxAmount;
			if(position == 'calculator'){
				$("#number_1").val(numberWithCommas(data.estimateInfo.termAmount));
				$("#number_2").val(numberWithCommas(data.estimateInfo.depositAmount));
				$("#ExpiredDate").text(data.policyInfo.estimateExpiredDate);
				$('#termAmount').text(numberWithCommas(data.estimateInfo.termAmount)+" "+data.estimateInfo.termCurrencyCode);
				$('#depositAmount').text(numberWithCommas(data.estimateInfo.depositAmount)+" 원");
			}else{
				$("#number_3").val(numberWithCommas(data.estimateInfo.termAmount));
				$("#number_4").val(numberWithCommas(data.estimateInfo.depositAmount));
				$("#ExpiredDate2").text(data.policyInfo.estimateExpiredDate);
				$('#termAmount').text(numberWithCommas(data.estimateInfo.termAmount)+" "+data.estimateInfo.termCurrencyCode);
				$('#depositAmount').text(numberWithCommas(data.estimateInfo.depositAmount)+" 원");
			}

			$("dd[name=service_rate]").text(numberWithCommas(data.estimateInfo.depositAmount)+" 원").append("<span>(1"+data.estimateInfo.termCurrencyCode+" - "+data.estimateInfo.currencyServiceAmount+")</span>");
			$("dd[name=compare_rate]").text(numberWithCommas(data.estimateInfo.compareAmount)+" 원").append("<span>(1"+data.estimateInfo.termCurrencyCode+" - "+data.estimateInfo.currencyCompareAmount+")</span>");
			$("dd[name=calcul]").text(numberWithCommas(data.estimateInfo.depositAmount - data.estimateInfo.compareAmount)+" 원");

		}
	});
}

//환전신청하기
//신청인 정보 입력 및 약관동의 출력
function exchangeRequest(e) {
 	//다음을 누르기 전까지 un_active
	$('.step1').show();
	//$('.step1').removeClass('active');
	//$('.step1 > a').removeClass('active');
	//환율 계산기 정보 데이터 전달
	//start
	var number_1 = $('#number_1').val();
	var number_2 = $('#number_2').val();

	var ExpiredDate = $('#ExpiredDate').text();
	$('#number_3').val(number_1);
	$('#number_4').val(number_2);
	$('#ExpiredDate2').text(ExpiredDate);
	//end

	//수령장소 select
	var place = $('input[name=initplace]').val();
	$('#receiptPlace').val(place);
	$('#receiptPlace').css('color','black');

	//수령날짜 select
	var date = $('#day').val();
	var dayofweek = $('#dayoftheweek').val()
	$('#inputday').val(date);
	$('span[name=dayinfo]').text(date);
	$('#inputdayofweek').val(dayofweek);
	$('#inputday').css('color','black');
	$('#inputdayofweek').css('color','black');

	var scrollPosition = $('.step1').offset().top - 80;

	$("body").animate({
		scrollTop: scrollPosition
	}, 500);
	$('#requestName').focus();
}

//신청정보 입력
function step2() {

	//$('.step2').removeClass('active');
	//$('.step2 > a').removeClass('active');

	var idInfo = $('#idInfo').val();
	var idcode = $('#idcode').val();
	var requestName = $('#requestName').val();
	var idnumber =  $('#idnumber').val();
	var tel1 =  $('#tel1').val();
	var telCertConfirm = $('#telCertRequest').text();
	var emailVal = $('#email').val();
	var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var Validation = true;

	if(requestName == "" || requestName == null){
		$('#requestName').closest('div').addClass("warning");
		//$('#requestName').focus();
		Validation = false;
	}else{
		$('#requestName').closest('div').removeClass("warning");
	}

	if(idInfo == "신분증 종류"){
		$('#idInfo').closest('label').closest('div').html();
		$('#idInfo').parent().parent().parent().closest('div').find('.warning-text').text('신분증 종류를 선택해주세요.');
		$('#idInfo').parent().parent().parent().closest('div').addClass('warning');
		//$('#idInfo').focus();
		Validation = false;
	}else{
		$('#idInfo').parent().parent().parent().closest('div').removeClass('warning');
	}

	if(idnumber == "" || idnumber == null){
		$('#idInfo').parent().parent().parent().closest('div').find('.warning-text').text('신분증 번호를 입력해주세요.');
		$('#idInfo').parent().parent().parent().closest('div').addClass('warning');

		//$('#idnumber').focus();
		Validation = false;
	}else {
		$('#idInfo').parent().parent().parent().closest('div').removeClass('warning');
	}

	if(tel1 == "" || tel1 == null){
		$('#tel1').parent().parent().parent().parent().closest('div').find('.warning-text').text('휴대폰 번호를 입력해주세요.');
		$('#tel1').parent().parent().parent().parent().closest('div').addClass('warning');
		//$('#tel1').focus();
		Validation = false;
	}else{
		$('#tel1').parent().parent().parent().parent().closest('div').removeClass('warning');
	}

	if(telCertConfirm != "인증완료"){
		$('#telCert').parent().parent().parent().parent().closest('div').find('p').html();
		$('#telCert').parent().parent().parent().parent().closest('div').find('.warning-text').text('휴대폰 인증을 진행해주세요.');
		$('#telCert').parent().parent().parent().parent().closest('div').addClass('warning');
		//$('#telCert').focus();
		Validation = false;
	}else{
		$('#telCert').parent().parent().parent().parent().closest('div').removeClass('warning');
	}

	if (emailVal == "" || emailVal == "null") {
		$('#email').parent().find('.warning-text').text('이메일 을 입력해주세요.');
		$('#email').closest('div').addClass("warning");
		//$('#email').focus();
		Validation = false;
	}else{
		if (!emailVal.match(regExp)) {
			$('#email').parent().find('.warning-text').text('올바른 이메일 형식이 아닙니다.');
			$('#email').closest('div').addClass("warning");
			//$('#email').focus();
			Validation = false;
		}else{
			$('#email').closest('div').removeClass("warning");
		}
	}

	var agreeCheck = $('#checkbox1').is(':checked');

	if(!agreeCheck){
		popoup.layerAlert('alertMessage','약관동의후 진행 가능합니다.');
		return;
		Validation = false;
	}

	if(Validation){
		//신청개인정보 object 추가
		var applicantInfoList = new Object();
		var applicantInfo = new Object();
		//var applicantInfo = new Object();
		applicantInfoList.applicantName = requestName;
		applicantInfoList.applicantIdType = idcode;
		applicantInfoList.applicantIdValue = idnumber;
		applicantInfoList.applicantEmail = emailVal;
		applicantInfoList.applicantPhoneNumber = tel1;
		applicantInfo.applicantInfo =applicantInfoList;
		var data = applicantInfo;
		$.extend(requestInfo,data);
		//console.log(requestInfo);

		$('dd[name=applicantName]').text(applicantInfoList.applicantName);
		$('dd[name=applicantIdValue]').text(applicantInfoList.applicantIdValue);
		$('dd[name=applicantPhoneNumber]').text(applicantInfoList.applicantPhoneNumber);
		$('dd[name=applicantEmail]').text(applicantInfoList.applicantEmail);

		//$('#number_3').focus();

		$('.step-area-inner').hide();
		//$('.step1').addClass('active');
		$('.step1 > a').addClass('active');
		$('.step2').show();
		var scrollPosition = $('.step2').offset().top - 80;
		$("body").animate({
			scrollTop: scrollPosition
		}, 500);
	}else{
		popoup.layerAlert('alertMessage','필수항목이 입력되지 않았습니다.<br>확인해주세요.');
		return;
	}


}

//신청정보 확인
function step3() {
	var userReceiptPlaceInfo = new Object();
	var ReceiptPlace = new Object();
	var userReceiptDateInfo = new Object();
	var ReceiptDate = new Object();
	var promotionInfo = new Object();
	var promotion = new Object();

	var receiptPlaceName =  $('#receiptPlace').val();
	var receiptdetailPlaceName =  $('#detail_place').val();
	var receiptday = $('#inputday').val();
	var receiptTime = $('#inputTime').val();
	if(receiptPlaceName == "" || receiptPlaceName == null){
		popoup.layerAlert('alertMessage','* 필수항목이 선택되지 않았습니다.<br>확인해주세요.');
		return;
	}

	if(receiptdetailPlaceName == "" || receiptdetailPlaceName == null){
		popoup.layerAlert('alertMessage','* 필수항목이 선택되지 않았습니다.<br>확인해주세요.');
		return;
	}

	if(receiptday == "" || receiptday == null){
		popoup.layerAlert('alertMessage','* 필수항목이 선택되지 않았습니다.<br>확인해주세요.');
		return;
	}

	if(receiptTime == "" || receiptTime == null){
		popoup.layerAlert('alertMessage','* 필수항목이 선택되지 않았습니다.<br>확인해주세요.');
		return;
	}

	//수령장소 정보
	var receiptPlaceId =  $('#receiptPlaceId').val();
	var receiptDetailPlaceId =  $('#receiptDetailPlaceId').val();
	//수령시간 정보
	var dateInfo = $('#inputday').val().replace(/\//gi,'-').replace(/(\s*)/gi,'');
	var dueTime = $('#inputTime').val().split(' - ');
	var receiptDueStartTime = dueTime[0]+":00";
	var receiptDueEndTime = dueTime[1]+":00";
	//프로모션 코드 정보
	var promotioncode = $('#promotioncode').val();

	//수령장소 data extend
	ReceiptPlace.receiptPlaceId = receiptPlaceId;
	ReceiptPlace.receiptDetailPlaceId = receiptDetailPlaceId;
	userReceiptPlaceInfo.userReceiptPlaceInfo = ReceiptPlace;
	$.extend(requestInfo,userReceiptPlaceInfo);
	//수령시간 data extend
	ReceiptDate.receiptDueDate = dateInfo;
	ReceiptDate.receiptDueStartTime = receiptDueStartTime;
	ReceiptDate.receiptDueEndTime = receiptDueEndTime;
	userReceiptDateInfo.userReceiptDateInfo = ReceiptDate;
	$.extend(requestInfo,userReceiptDateInfo);
	//프로모션 data extend
	promotion.promotionName = null;
	promotion.promotionCode = promotioncode;
	promotionInfo.promotionInfo = promotion;
	$.extend(requestInfo,promotionInfo);
	console.log(requestInfo);

	$('.step-area-inner').hide();
	$('.step2').addClass('active');
	$('.step2 > a').addClass('active');
	$('.step3').show();
	var scrollPosition = $('.step3').offset().top - 80;
	$("body").animate({
		scrollTop: scrollPosition
	}, 500);
}

function step4(){
	//console.log(requestInfo.policyInfo.estimateExpiredDate);

	$('.step3').addClass('active');
	$('.step3 > a').addClass('active');
	var reqUrl = baseUrl +'/exchange/web/v1/application?access_token='+at;

	$.ajax({
		type : "POST"
		, async: true
		, crossDomain: true
		, url : reqUrl
		, accept : "application/json"
		, contentType : "application/json; charset-utf-8"
		, dataType : "json"
		, data : JSON.stringify(requestInfo)
		, error : function(jqXHR, textStatus, errorThrown) {
			console.log(jqXHR.status);
			if(jqXHR.status == "401"){
				popoup.layerAlert('alertMessage','신청시간이 초과하였습니다. <br>재신청 해주시기 바랍니다.');
				location.reload();
			}
		}
		, success : function(data, textStatus, jqXHR){

			console.log(jqXHR.status);
			console.log(data.result);
			console.log(data.message);
			if(data.result == "0000"){
				$('dd[name=confirmTermAmount]').text(numberWithCommas(data.termAmount)+" "+data.termCurrencyCode);
				$('dd[name=confirmDepositAmount]').text(numberWithCommas(data.depositAmount)+'원');
				$('dd[name=depositinfo]').text(data.bankName+" "+data.depositAccountNum);
				$('dd[name=depositExpiredDate]').text(data.depositExpiredDate);
				$('dd[name=applicantConfirmName]').text(data.applicantName);
				$('dd[name=applicantConfirmPhoneNumber]').text(data.applicantPhoneNumber);

				$('.step-area-inner').hide();
				$('.step4').show();
				$('.step4').addClass('active');
				$('.step4 > a').addClass('active');
				$('#telCertRequest').text('인증번호 받기');
				$('#checkbox1').prop('checked',false);
				$('form').each(function () {
					this.reset();
				});

				var scrollPosition = $('.step4').offset().top - 80;

				$("body").animate({
					scrollTop: scrollPosition
				}, 500);
			}else{
				popoup.layerAlert('alertMessage',data.message);
			}
		}
	});


}

//4단계 확인 버튼 클릭
function exchangeConfirm(){
	$('form').each(function () {
		this.reset();
	});
	//경고문구 초기화
	$('.input-box').removeClass('warning');
	//탭 초기화
	$('.step-area-inner').hide();
	$('.step1').removeClass('active');
	$('.step1> a').removeClass('active');
	$('.step2').removeClass('active');
	$('.step2> a').removeClass('active');
	$('.step3').removeClass('active');
	$('.step3> a').removeClass('active');
	$('.step4').removeClass('active');
	$('.step4> a').removeClass('active');
	$('#checkbox1').prop('checked',false);
	$("body").animate({
		scrollTop: 0
	}, 500);
	location.reload();
}

function timer_start(){ //초기 설정함수
	tcounter=180; //3분설정
	t1=setInterval(Timer,1000);
	$('.time-text').css('color','#e90000');
}


function Timer(){     //시간표및 조건검사
	tcounter=tcounter-1;   //1초식 감소
	temp=Math.floor(tcounter/60); // 분부분 두자리 계산 mm
	if ( Math.floor(tcounter/60) < 10 ) { temp = '0'+temp; }
	temp = temp + ":";   //mm:ss의 : 이부분추가
	if ( (tcounter%60) < 10 ) { temp = temp + '0'; } //초부분 두자리 계산 ss
	temp = temp + (tcounter%60);
	document.getElementById("timer_s").innerHTML=temp;    // 시간 출력
	if(tcounter<0) tstop();    // 3분후 완료
}

function tstop(){ //완료함수
	clearInterval(t1);
	document.getElementById("timer_s").innerHTML="인증시간이 만료되었습니다.";
}

function numberWithCommas(x) {
	return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

/**------------------------------ 팝업 컨트롤 -------------------------------------------*/
var reserveinquiryObject = new Object();
function reservationInquiry(){
	reserveinquiryObject.info = null;
	$('.layer-popup').hide();
	$('.mask-layer').hide();
	console.log('reservationInquiry');
	var reqUrl = baseUrl + '/exchange/web/v1/reservation';
	var applicantName = $('input[name=reserveRequestName]').val();
	var applicantPhoneNumber = $('input[name=reservePhoneNumber]').val();
	var reserveCode = $('input[name=reserveCode]').val();

	if (applicantName == null || applicantName == "") {
		popoup.layerAlert('alertMessage','필수항목이 입력되지 않았습니다.<br>확인해주세요.');
		return;
	}
	if (applicantPhoneNumber == null || applicantPhoneNumber == "") {
		popoup.layerAlert('alertMessage','필수항목이 입력되지 않았습니다.<br>확인해주세요.');
		return;
	}
	if (reserveCode == null || reserveCode == "") {
		popoup.layerAlert('alertMessage','필수항목이 입력되지 않았습니다.<br>확인해주세요.');
		return;
	}
	var data = [];
	data.push("applicantName=" + applicantName);
	data.push("applicantPhoneNumber=" + applicantPhoneNumber);
	data.push("pickupCode=" + reserveCode);
	data.push("access_token=" + at);
	$.ajax({
		type : "GET"
		, url : reqUrl
		, accept : "application/json"
		, contentType : "application/json; charset-utf-8"
		, data : data.join('&')
		, error : function(jqXHR, textStatus, errorThrown) {
			console.log(errorThrown);
			popoup.layerAlert('alertMessage','환전 정보가 존재 하지 않습니다.');
		}
		, success : function(data, textStatus, jqXHR){
			console.log(data);
			reserveinquiryObject.info = data;
			console.log(reserveinquiryObject);
			$('dd[name=reserveName]').text(data.applicantName);
			$('dd[name=reservePhoneNumber]').text(data.applicantPhoneNumber);
			$('dd[name=reserveCode]').text(data.pickupCode);
			$('dd[name=regdate]').text(data.regDate.substring(0, data.regDate.length - 3));
			console.log(data.termAmount);
			$('strong[name=termAmount]').text(numberWithCommas(data.termAmount)+" "+data.termCurrencyCode);
			$('dd[name=depositAmount]').text(numberWithCommas(data.depositAmount) + " 원");
			$('dd[name=receiptDueDate]').html('');
			$('dd[name=receiptDueDate]').append(data.receiptDueDate+"<br>"+(data.receiptDueStartTime).replace(":00","")+" - "+(data.receiptDueEndTime).replace(":00",""));
			//document.getElementsByName('receiptDueDate').(data.receiptDueDate+"<br>"+data.receiptDueStartTime+" - "+data.receiptDueEndTime);
			$('strong[name=receiptPlaceInfo]').html('');
			$('strong[name=receiptPlaceInfo]').append(data.receiptPlaceName + "<br>" + data.receiptDetailPlaceName);

			var stsCode = data.exchangeStatusCode.code;
			if(stsCode == "NOT_RECEIVED")
				$('dd[name=exchangeStatusCode]').text("수령가능");
			else
				$('dd[name=exchangeStatusCode]').text(data.exchangeStatusCode.text);

			$('.inquery').find('a').remove();
			$('#reserve_inquery_popup').find('.popup-btnset').append('<a href="javascript:cancel();" class="button blue cancel">확인</a>');
			if(stsCode == "PREPARING" || stsCode == "RECEPTIBLE" || stsCode == "NOT_RECEIVED") {
				$('#reserve_inquery_popup').find('.popup-btnset').append('<a href="javascript:refundRequest();" class="button navy popup-open-btn">환불요청</a>');
			}

			$('.layer-popup').hide();
			$('input[name=reserveRequestName]').val('');
			$('input[name=reservePhoneNumber]').val('');
			$('input[name=reserveCode]').val('');
			popoup.layerPop('reserve_inquery_popup');
		}
	});
}
function refundRequest(){
	popoup.layerAlert('refundDoubleMessage', '환불요청하시겠습니까?');
}

//환불요청 팝업 출력
function refund_popup(){
	$('.layer-popup').hide();
	$('.alert-popup').hide();
	$('.alert_mask-layer').hide();
	//환전신청 시퀀스
	console.log(reserveinquiryObject.info.exchangeRequestSeq);
	$('dd[name=refundApplicantName]').text(reserveinquiryObject.info.applicantName);
	$('dd[name=refundPhone ]').text(reserveinquiryObject.info.applicantPhoneNumber);
	$('dd[name=refundReserveCode ]').text(reserveinquiryObject.info.reserveCode);
	$('dd[name=refundDepositAmount ]').text(numberWithCommas(reserveinquiryObject.info.depositAmount) +" 원");
	$('input[name=bankAccountName ]').val(reserveinquiryObject.info.applicantName);
	popoup.layerPop('refund_popup');
}

function refund_validation(){
	var refund_bankName = $('#bankName').val();
	var refund_bankAccount = $('#bankAccount').val();
	if(refund_bankName == null || refund_bankName == "" ){
		popoup.layerAlert('alertMessage','필수항목이 입력되지 않았습니다.<br>확인해주세요.');
		return;
	}
	if(refund_bankAccount == null || refund_bankAccount ==""){
		popoup.layerAlert('alertMessage','필수항목이 입력되지 않았습니다.<br>확인해주세요.');
		return;
	}

	popoup.layerAlert('refundMessage',''+reserveinquiryObject.info.applicantName+'/'+ refund_bankName +'/'
		+ refund_bankAccount+' 으로<br><strong class="font-color-blue font-size-20">'
		+ numberWithCommas(reserveinquiryObject.info.depositAmount)+' 원</strong><br>환불요청하시겠습니까?');
}

function refund(){
	var refund_bankAccount = $('#bankAccount').val();
	var reqUrl = baseUrl + '/exchange/web/v1/refund?access_token='+at;
	console.log(reserveinquiryObject.info.exchangeRequestSeq);
	var body = new Object();
	body.exchangeRequestSeq = reserveinquiryObject.info.exchangeRequestSeq;
	body.accountHolderName = reserveinquiryObject.info.applicantName;
	body.bankSeq = 4;
	body.accountNumber = refund_bankAccount;
	$.ajax({
		type: "POST"
		, async: true
		, crossDomain: true
		, url: reqUrl
		, accept: "application/json"
		, contentType: "application/json; charset-utf-8"
		, data: JSON.stringify(body)
		, error: function (jqXHR, textStatus, errorThrown) {
			console.log(errorThrown);
		}
		, success: function (data, textStatus, jqXHR) {
			popoup.layerAlert('alertMessage','환불신청이 완료되었습니다.');
			location.reload();
		}
	});
}

function cancel(){
	$('.layer-popup').hide();
	$('.mask-layer').hide();
}




