
// 초기화면 송금 데이터 조회 후 세팅 
var settings = {
  "async": true,
  "crossDomain": true,
  "url": "https://api.hanpass.com/core/remittance/ns/estimate",
  "method": "POST",
  "headers": {
    "content-type": "application/json",
    "cache-control": "no-cache"
  },
  "data": "{\r\n  \"base\" : \"KRW\",\r\n  \"term\" : \"PHP\",\r\n  \"amount\" : \"1000000\",\r\n  \"country_code\" : \"PH\",\r\n  \"remittance_option\" : \"CASH_PICK_UP\",\r\n  \"provider_code\": \"LANDBANK\",\r\n  \"mto_service_center_code\": \"LBCP-0001\"\r\n}"

}

$.ajax(settings).done(function (data) {
//  console.log('resres',data);
  $('#deposit_amount').val(numberWithCommas(data.deposit_amount.substring(0,data.deposit_amount.indexOf('.'))));
	$('#receive_amount').val(numberWithCommas(data.receive_amount.substring(0,data.receive_amount.indexOf('.'))));
	$('#currency_rate').html('1KRW = '.concat(data.rate).concat($('#receive_curr').text()));
	$('#service_charge').text(data.fee.substring(0,data.fee.indexOf('.')).concat(' KRW'));
});


// 이상 김회경 front_dev 작업분 


// product페이지 이벤트 핸들링 
$(document).ready(function(){
	// movie
	$('.btn-set a').on('click',function(){
		var ind = $(this).attr('href');
		var text = $(this).text();
		$('.movie-layer').fadeIn(500);				
		$(ind).show();
		if(ind == '#m1'){					
			$('.movie-layer-title').html(text);					
		} else if(ind == '#m2'){
			$('.movie-layer-title').html(text);
		}
		return false;
	})

	$('.movie-close').on('click',function(){					
		$('.movie-layer').hide();
		$('#m1,#m2').css({'display':'none'});
		return false;
	})

	//layer
	$('.flag-btn > a,.option-btn > a').on('click',function(){				
		viewElement = $(this).parent().parent().find('.currencies-popup');
		if(viewElement.is(':visible')){
			viewElement.hide()
		} else{
			$('.currencies-popup').hide()
			viewElement.show();
		}
		return false;
	})
	//body event
	$('body').on('click', function(event) {
		if($(event.target).parents('.flag-btn,.option-btn').length === 0) {
			if($('.currencies-popup').is(':visible')) {
				$('.currencies-popup').hide();
			}
		}
	});

	//select flag
	$('.input-inbox .currencies-popup a').on('click',function(){
		 var flagClass = 'idr,cam,npr,php,php';
		 var flagSplit = flagClass.split(',');
		 var flagName = $(this).find('>span.currencies-list-txt').text();
		 var ind = $(this).parent().index()										 
		 $('.flag-btn-txt').text(flagName)
		 $('.flag-btn.recipient .flag-large').attr('class','flag-large '+flagSplit[ind])
	})
	$('.option-wrap .currencies-popup a').on('click',function(){										 
		 var flagName = $(this).find('>span.currencies-list-txt').text();
		 $('.option-btn .currencies-list-txt').text(flagName)
	})

	var moved = function(event) {		console.log('moved');		
		var $nav = $('.item-lst li a');	
		var item = event.page.index;	
		$nav.removeClass('active');
		$('.item-lst li:eq('+item+') a').addClass('active') 			
	}	

	function callback(event) {//console.log('moved');
	    var $nav = $('.item-lst li a');	
		var item = event.page.index;
		$nav.removeClass('active');
		if(item == -1){
			$('.item-lst li:eq(0) a').addClass('active') 
		} else{
			$('.item-lst li:eq('+item+') a').addClass('active') 
		}				
	}

	// slide
	var slideName = $('.owl-carousel');
    slideName.owlCarousel({
    	smartSpeed:700,
    	loop:true,
	    nav:true,
	    items:1,
	    dots:true,			   
	    onChanged:callback,
	    onDragged: moved,
	    autoplay:true,
	    autoplayTimeout:2000,
	    autoplayHoverPause:true
	});					        

//    slideName.on('mousewheel', '.owl-stage', function(e) {	        	
//	    if (e.deltaY > 0) {
//	        slideName.trigger('next.owl');
//	    } else {			    	  	
//	        slideName.trigger('prev.owl');			       
//	    }
//	    e.preventDefault();
//	});		

	$('.item-lst a').on('click', function() {
        var owl = $('.owl-carousel');
        var $nav = $('.item-lst a');
        var slideNum = $(this).parent().index();     
        $nav.removeClass('active');                             
        $('.item-lst li:eq('+slideNum+') a').addClass('active'); 
        owl.trigger("to.owl.carousel", slideNum);
    });
    
	
	//이상  퍼블리셔 작업분
	
	
	//이하 김회경 front dev 작업
	// 송금가능한 통화 및 국가 목록, 송금 수단등을 조회해온다. 
    //  https://[domain]/core/remittance/ns/v1/estimate // 환율계산
	var reqUrl = "https://api.hanpass.com/core/app/ns/page/remittance/main/v2";
	//var reqUrl = "http://211.115.67.10/core/app/ns/page/remittance/main/v2";
	//var reqUrl = "http://localhost:8080/apiProxy/remittance";
     $.ajax({
	    type : "GET" 
		    , url : reqUrl
		    , accept : "application/json"
		    , contentType : "application/json; charset-utf-8"
		    , dataType : "json"
		    , error : function(jqXHR, textStatus, errorThrown) { // jqXHR : xml http request object, textStatus : Jquery status code, errorThrown : exception object 
		    		console.log(errowThrown)
		    }
		    , success : function(data, textStatus, jqXHR){ // data : server response data, textStatus : Jquery status code, jqXHR : xml http request object
		    		renderData(data, afterRenderAddEvent)
		    }
    });
     
function renderData(data, callback) {
	console.log(data)
	remittanceOptions = data.receive_tab.currencies;
	var countryArr = data.receive_tab.currencies;
	var addedHtml = '';
	var added = '';
	for(var i=0; i<countryArr.length; i++){
		added = '<li><a href="#" onclick="return false;"><input id="reci_country_code" type="hidden" value="'
			+ countryArr[i].country_code 
			+'"/><span class="flag-small '
			+ countryArr[i].country_code.toLowerCase()
			+ '"></span><span class="currencies-list-txt">'
			+ countryArr[i].currency_code+'</span><span class="right-text">'
			+ countryArr[i].country_name+'</span></a></li>';
		addedHtml += added;
	}
	var countryCurrList = $('.currencies-popup').find('ul').first();
		countryCurrList.append(addedHtml);
		callback();
}
		
});
var user_input_base = 'deposit_amount'; // 사용자가 데이터를 입력한 필드의 아이디. 초기값 세팅 /   
var user_input_currency = "KRW"; // 사용자가 데이터를 입력한 필드의 통화. 초기값은 KRW  /
function afterRenderAddEvent() {
	var eventType;
	// 사용자가 통화 목록 팝업에서 특정 통화를 클릭했을 경우의 이벤트 처리 
	$('.input-inbox .currencies-popup ul li a').on('click', function(e){ // revieve통화선택팝업 선택 이벤트
		eventType = 'currencyChoice';
		var selectedCurr = $(this).find('span').eq(1).text(); // 타겟통화 PHP
		var selectedCountryCode = $('input[type=hidden]', this).val(); // 타겟국가 PH
		var resultStyle = 'flag-large ' + selectedCountryCode.toLowerCase(); // CSS 스타일링을 위한 값  
		var remittanceOption = $('#selected_option').val(); // 송금옵션
		var baseMoneyAmount = $('#'.concat(user_input_base)).val(); // 사용자가 입력한 금액
			console.log('0',user_input_currency,'  1', selectedCountryCode, '  2',selectedCurr, '   3',resultStyle, '   4',remittanceOption,'   5',baseMoneyAmount)
		console.log(resultStyle + "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
		$('.flag-large').eq(1).attr("class", resultStyle) // 국기 세팅 
		$('.flag-btn-txt').eq(1).text(selectedCurr) // 통화 세팅
		$('#selected_reci_country_code').val(selectedCountryCode)
		
		//console.log('remittanceOptions', remittanceOptions,selectedCurr);

		var obj = $.grep(remittanceOptions, function(obj){ // 송금옵션목록에서 선택된 국가의송금옵션 객체 리턴 
			return obj.currency_code == selectedCurr && obj.country_code == selectedCountryCode;
		});
		var isKr = location.href.indexOf('kr')>0;
		if(obj[0].supported_option[0] != remittanceOption) { // 변화가 있을 경우 값 변경 
			var optionText = ''; 
			if(isKr) {
				optionText = obj[0].supported_option[0] == 'CASH_PICK_UP' ? '캐시픽업' : '계좌이체';
			} else {
				optionText = obj[0].supported_option[0] == 'CASH_PICK_UP' ? 'Cash Pickup' : 'Bank Transfer';
			}
			$('.option-btn .currencies-list-txt').text(optionText)
			$('#selected_option').val(obj[0].supported_option[0]);
			remittanceOption = obj[0].supported_option[0];
		}
		// 임시 데이터
		//console.log('hhh',selectedCurr,baseMoneyAmount)
		var data = JSON.stringify({
			  "base": user_input_currency== "KRW" ? "KRW" : selectedCurr, "term": user_input_currency=='KRW' ? selectedCurr : 'KRW', "amount": baseMoneyAmount.replace(/,/gi,''),
			  "country_code": selectedCountryCode, "remittance_option": remittanceOption,
			  "provider_code": remittanceCodePairs[selectedCountryCode.toLowerCase()][remittanceOption].provider_code,
			  "mto_service_center_code": remittanceCodePairs[selectedCountryCode.toLowerCase()][remittanceOption].mto_service_center_code
		});
		//console.log(data)
		calculRequest(data, eventType)
	});
	// 인풋필드에 사용자가 데이터를 입력할 때의 이벤트 처리 
	$('div.input-inbox input').on('input',function() {
		eventType = 'moneyInput';
		user_input_base = $(this).attr('id'); // 사용자가 데이터를 입력한 필드의 아이디 / 
		user_input_currency = $(this).siblings('div').find('.flag-btn-txt').text(); // 사용자가 데이터를 입력한 필드의 통화
//		console.log('uuu', user_input_base, user_input_currency)
		var baseMoneyAmount = $('#'.concat(user_input_base)).val(); // 사용자가 입력한 금액
		var selectedCurr = $('#receive_curr').text()
		var selectedCountryCode = $('#selected_reci_country_code').val();
		var remittanceOption = $('#selected_option').val(); // 송금옵션
//		console.log('user',user_input_base,user_input_currency, baseMoneyAmount, selectedCurr,selectedCountryCode,remittanceOption)
		var data = JSON.stringify({
			  "base": user_input_currency, "term": user_input_currency=='KRW' ? selectedCurr : 'KRW', "amount": baseMoneyAmount.replace(/,/gi,''),
			  "country_code": selectedCountryCode, "remittance_option": remittanceOption,
			  "provider_code": remittanceCodePairs[selectedCountryCode.toLowerCase()][remittanceOption].provider_code,
			  "mto_service_center_code": remittanceCodePairs[selectedCountryCode.toLowerCase()][remittanceOption].mto_service_center_code
		});
//		console.log(data)
		calculRequest(data, eventType)
	})
	// remittance option을 선택했을 경우의 이벤트 처리
	$('.currencies-popup>ul>li.option').parent().on('click', function(e) {
		eventType = 'optionChoice';
//		console.log('uuu', user_input_base, user_input_currency)
		var baseMoneyAmount = $('#'.concat(user_input_base)).val(); // 사용자가 입력한 금액
		var selectedCurr = $('#receive_curr').text()
		var selectedCountryCode = $('#selected_reci_country_code').val();
		var remittanceOption = $('#selected_option').val(); // 송금옵션
//		console.log('user',user_input_base,user_input_currency, baseMoneyAmount, selectedCurr,selectedCountryCode,remittanceOption)
		var data = JSON.stringify({
			  "base": user_input_currency, "term": user_input_currency=='KRW' ? selectedCurr : 'KRW', "amount": baseMoneyAmount.replace(/,/gi,''),
			  "country_code": selectedCountryCode, "remittance_option": remittanceOption,
			  "provider_code": remittanceCodePairs[selectedCountryCode.toLowerCase()][remittanceOption].provider_code,
			  "mto_service_center_code": remittanceCodePairs[selectedCountryCode.toLowerCase()][remittanceOption].mto_service_center_code
		});
//		console.log(data)
		calculRequest(data, eventType)
	})
}
var remittanceOptions;
var remittanceCodePairs = {
	ph: { CASH_PICK_UP: { provider_code: "LANDBANK", mto_service_center_code: "LBCP-0001" }, BANK_TRANSFER: { provider_code: "LANDBANK", mto_service_center_code: "LBBT-0001" } },
	id: { CASH_PICK_UP: { provider_code: "FINNET", mto_service_center_code: "FNCP-0001" }, BANK_TRANSFER: { provider_code: "FINNET", mto_service_center_code: "FNBT-0001" } },
	np: { CASH_PICK_UP: { provider_code: "EASYLINK", mto_service_center_code: "ELCP-0001" }, BANK_TRANSFER: { provider_code: "EASYLINK", mto_service_center_code: "ELBT-0003" } },
	kh: { CASH_PICK_UP: { provider_code: "WING", mto_service_center_code: "WGCP-0001" }, BANK_TRANSFER: { provider_code: "Wing", mto_service_center_code: "WGBT-0001" } },
	vn: { CASH_PICK_UP: { provider_code: "DONGA", mto_service_center_code: "LBCP-0001" }, BANK_TRANSFER: { provider_code: "TRANSFERTO", mto_service_center_code: "TTBT-0001" } },
	cn: { CASH_PICK_UP: { provider_code: "DONGA", mto_service_center_code: "LBCP-0001" }, BANK_TRANSFER: { provider_code: "TRANSFERTO", mto_service_center_code: "TTBT-0001" } },
	th: { CASH_PICK_UP: { provider_code: "DONGA", mto_service_center_code: "LBCP-0001" }, BANK_TRANSFER: { provider_code: "TRANSFERTO", mto_service_center_code: "TTBT-0001" } },
	lk: { CASH_PICK_UP: { provider_code: "TRANSFERTO", mto_service_center_code: "TTMW-0057" }, BANK_TRANSFER: { provider_code: "TRANSFERTO", mto_service_center_code: "TTBT-0045" } },
	bd: { CASH_PICK_UP: { provider_code: "EXPRESS", mto_service_center_code: "TTCP-0400" }, BANK_TRANSFER: { provider_code: "EXPRESS", mto_service_center_code: "TTBT-0370" } },
	pk: { CASH_PICK_UP: { provider_code: "EXPRESS", mto_service_center_code: "EMCP-0061" }, BANK_TRANSFER: { provider_code: "EXPRESS", mto_service_center_code: "EMBT-0071" } }
}
// 사용자 입력값과 지정한 통화로 실제 송금되는 금액을 계산한다.
var requestAllow = true;
var violation_word; // 최소, 최대 금액중 어느 부분을 위반했는지 
var limit_amount; // 제한 금액 
function calculRequest(targetData, eventType) {
	
	var inputAmount = JSON.parse(targetData).amount;
	var reg = new RegExp('^[0-9]+$'); // 숫자외의 문자가 포함되어 있는지 검사하는 정규식 
	var isPureNumber =  reg.test(inputAmount);
	// 숫자 외의 문자가 포함되었거나 요청이 허락되지 않는 경우 서버요청을 보내지 않는다. 
	//if(!isPureNumber || !requestAllow) {
	if(!isPureNumber) {	
		return;
	}
	var target_amount_int = parseInt(JSON.parse(targetData).amount);
	var limit_amount_int  = limit_amount? parseInt(limit_amount) : null;
//	console.log('target ',violation_word,target_amount_int, limit_amount_int, eventType)
	
	if(eventType == 'moneyInput') {
		if(violation_word=='min'||violation_word=='최소') {
			if(target_amount_int <= limit_amount_int) {
				return;
			} else {
				var error_text_selector = '#'.concat(user_input_base.substring(0, user_input_base.indexOf('_')+1)).concat('error_txt')
//				console.log('error_text_selector',error_text_selector)
				$(error_text_selector).text('');
				violation_word = '';
			}
		} else if(violation_word=='max'||violation_word=='최대') {
			if(target_amount_int >= limit_amount_int) {
				return;
			} else {
				var error_text_selector = '#'.concat(user_input_base.substring(0, user_input_base.indexOf('_')+1)).concat('error_txt')
				$(error_text_selector).text(''); 
				violation_word = '';
			}
		}
	}
	//var reqUrl = "http://localhost:8080/apiProxy/estimate";
	var reqUrl = "https://api.hanpass.com/core/remittance/ns/estimate";
      $.ajax({
	    type : "POST" 
	    , url : reqUrl
	    , accept : "application/json"
	    , contentType : "application/json; charset-utf-8"
	    , data: targetData
	    , dataType : "json"
	    , error : function(jqXHR, textStatus, errorThrown) {  
	    		console.log(errorThrown)
	    }
	    , success : function(data, textStatus, jqXHR){ 
	    		if(data.deposit_amount){
	    			setData(data);
	    		} else { // 송금액 계산에 실패했을 경우. min, max 예외처리.
	    			var error_text_selector = '#'.concat(user_input_base.substring(0, user_input_base.indexOf('_')+1)).concat('error_txt')
	    			violation_word = Object.keys(data)[0].substring(0, Object.keys(data)[0].indexOf('_'))
	    			var violation_key = Object.keys(data)[0];
	    			
	    			
//	    			limit_amount = Object.values(data[violation_key])[1];
	    			// IE 호환을 위해 objectValues함수 사용 
	    			limit_amount = objectValues(data[violation_key])[1];
	    			
	    			if(location.href.indexOf('kr')>0) {
	    				violation_word = violation_word=='max' ? '최대' : '최소'; 
	    			}
	    			var error_currency;
//	    			if(eventType=='moneyInput') {
//	    				error_currency = user_input_currency;
//	    			} else if(eventType=='currencyChoice' || eventType=='optionChoice') {
//	    				error_currency = $('#receive_curr').text();
//	    			}
	    			error_currency = user_input_currency == 'KRW' ? 'KRW' : $('#receive_curr').text();
	    			$(error_text_selector).text(capitalizeFirstLetter(violation_word)+' '+numberWithCommas(limit_amount.substring(0,limit_amount.indexOf('.')+2))+' '+error_currency)
	    			clearCountPartData(user_input_base);
	    			requestAllow = false;
	    		}
	    }
    });
}
function clearCountPartData(user_input_base) {
	if(user_input_base=='deposit_amount') {
		$('#receive_amount').val('');
	} else {
		$('#deposit_amount').val('');
	}
}
function setData(data) {
	$('#deposit_amount').val(numberWithCommas(data.deposit_amount.substring(0,data.deposit_amount.indexOf('.'))));
	$('#receive_amount').val(numberWithCommas(data.receive_amount.substring(0,data.receive_amount.indexOf('.'))));
	$('#currency_rate').html('1KRW = '.concat(data.rate).concat($('#receive_curr').text()));
	$('#service_charge').text(data.fee.substring(0,data.fee.indexOf('.')).concat(' KRW'));
	$('.input-error-text').text('');
}
function numberWithCommas(x) {
  return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}
function capitalizeFirstLetter(string) {
    return string.charAt(0).toUpperCase() + string.slice(1);
}

function objectValues(obj) {
    var res = [];
    for (var i in obj) {
        if (obj.hasOwnProperty(i)) {
            res.push(obj[i]);
        }
    }
    return res;
}