package com.hanpass.remittance.hanpassjweb.controller;

import com.hanpass.remittance.hanpassjweb.contract.mail.SendMailRequest;
import com.hanpass.remittance.hanpassjweb.service.ExchangeRateService;
import com.hanpass.remittance.hanpassjweb.service.HanpassMailService;
import com.hanpass.remittance.hanpassjweb.utils.DateUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
public class homePageController {
	private Logger logger = LoggerFactory.getLogger(homePageController.class);

	@Autowired HanpassMailService hanpassMailService;

	@Autowired ExchangeRateService exchangeRateService;

		/**인덱스 페이지(en)*/
	@RequestMapping(value="/")
	public String indexPage() throws Exception {

		/**spring mobile 이용 device 구분*/
		/*Device device = DeviceUtils.getCurrentDevice(request);

		if(false == device.isNormal()) {
			System.out.println("isNomal");
			return "redirect:error";
		}*/

		return "product-v2-kr";
	}

	/**인덱스 페이지(kr)*/
	@RequestMapping(value="kr/index")
	public String indexPageKr(HttpServletRequest request) throws Exception {
		return "index-kr";
	}

//	/**회사 소개 페이지(en)*/
//	@RequestMapping(value="company")
//	public String companyPage() throws Exception {
//		return "company";
//	}
//
//	/**회사 소개 페이지(kr)*/
//	@RequestMapping(value="kr/company")
//	public String companyPageKr() throws Exception {
//		return "company-kr";
//	}

//	/**제품 소개 페이지(en)*/
//	@RequestMapping(value="product")
//	public String productPage() throws Exception {
//		return "product";
//	}
//
//	/**제품 소개 페이지(kr)*/
//	@RequestMapping(value="kr/product")
//	public String productPageKr() throws Exception {
//		return "product-kr";
//	}

//	/**웹 공지사항 페이지(en)*/
//	@RequestMapping(value="news")
//	public String newsPage() throws Exception {
//		return "news";
//	}
//
//	/**웹 공지사항 페이지(kr)*/
//	@RequestMapping(value="/kr/news")
//	public String newsPageKr() throws Exception {
//		return "news-kr";
//	}

	/**APP 공지사항 페이지(en)*/
	@RequestMapping(value="news-app/en")
	public String newsAppEnPage() throws Exception {
		return "news-app-en";
	}

	/**APP 공지사항 페이지(kr)*/
	@RequestMapping(value="news-app/kr")
	public String newsAppKrPage() throws Exception {
		return "news-app-kr";
	}

	/*
	 * V2. 2018.03.20~2018.03.xx
	 *
	 * added routing
	 * kr/aboutus, aboutus
	 * kr/terms, terms
	 * kr/service, service
	 * kr/faq, faq
	 * kr/aboutus, aboutus
	 *
	 *
	 * modified routing
	 * kr/product, product
	 * kr/company, company
	 * kr/news, news
	 * kr/contactus, contactus
	 * kr/partner, partner
	 * kr/service, service
	 *
	 *
	 * */
	/**상세소개 페이지*/
	@RequestMapping(value="kr/aboutus")
	public String aboutUsKrPage() throws Exception {
		return "aboutus-v2-kr";
	}

	/**상세소개 페이지*/
	@RequestMapping(value="/aboutus")
	public String aboutUsEnPage() throws Exception {
		return "aboutus-v2-en";
	}

	/**제품소개 페이지 v2*/
	@RequestMapping(value="kr/product")
	public String productKrPage() throws Exception {
		return "product-v2-kr";
	}

	/**제품소개 페이지 v2*/
	@RequestMapping(value="/product")
	public String productEnPage() throws Exception {
		return "product-v2-en";
	}

	/**회사 소개 페이지(kr)*/
	@RequestMapping(value="kr/company")
	public String companyKrPage() throws Exception {
		return "company-v2-kr";
	}

	/**회사 소개 페이지(en)*/
	@RequestMapping(value="/company")
	public String companyEnPage() throws Exception {
		//System.out.println("commmm");
		return "company-v2-en";
	}

	/**연락 페이지(kr)*/
	@RequestMapping(value="kr/contactus")
	public String contactusKrPage() throws Exception {
		return "contactus-v2-kr";
	}

	/**연락 페이지(en)*/
	@RequestMapping(value="/contactus")
	public String contactusEnPage() throws Exception {
		return "contactus-v2-en";
	}

	/**파트너 페이지(kr)*/
	@RequestMapping(value="kr/partner")
	public String partnerKrPage() throws Exception {
		return "partner-v2-kr";
	}

	/**파트너 페이지(en)*/
	@RequestMapping(value="/partner")
	public String partnerEnPage() throws Exception {
		return "partner-v2-en";
	}

	/**서비스 페이지(kr)*/
	@RequestMapping(value="kr/service")
	public String serviceKrPage() throws Exception {
		return "service-v2-kr";
	}

	/**서비스 페이지(en)*/
	@RequestMapping(value="/service")
	public String serviceEnPage() throws Exception {
		return "service-v2-en";
	}

	/**약관 페이지(kr)*/
	@RequestMapping(value="kr/terms")
	public String termsKrPage() throws Exception {
		return "terms-v2-kr";
	}

	/**약관 페이지(en)*/
	@RequestMapping(value="/terms")
	public String termsEnPage() throws Exception {
		return "terms-v2-en";
	}

	/**웹 공지사항 페이지(kr)*/
	@RequestMapping(value="kr/news")
	public String newsKrPage() throws Exception {
		return "news-v2-kr";
	}

	/**웹 공지사항 페이지(en)*/
	@RequestMapping(value="/news")
	public String newsEnPage() throws Exception {
		return "news-v2-en";
	}

	/**FAQ 페이지(kr)*/
	@RequestMapping(value="kr/faq")
	public String faqKrPage() throws Exception {
		return "faq-v2-kr";
	}

	/**FAQ 페이지(en)*/
	@RequestMapping(value="/faq")
	public String faqEnPage() throws Exception {
		return "faq-v2-en";
	}

	/**메일 발송 */
	@PostMapping(path="/send-mail")
	@ResponseBody
	@ResponseStatus(HttpStatus.NO_CONTENT)
	public String sendMailToHanpass(@RequestBody SendMailRequest request) throws Exception {
		logger.debug(request.toString());
		return hanpassMailService.sendMailToHanpass(request);
	}


	/** exchange 페이지(kr */
	@RequestMapping(value="/exchange")
	public String exchange(Model model) throws Exception {

		HashMap<String,String> rateList = exchangeRateService.ExchangeRate();
		//날짜 선택을 위한 로직 구성
		List<Map> dayList = new DateUtil().daylists();
		logger.debug("dayList = "+ dayList);
		//시간 선택을 위한 로직 구성
		List<Map> timeList = new DateUtil().timeLists();
		model.addAttribute("dayList", dayList);
		model.addAttribute("timeList", timeList);
		model.addAttribute("rateList",rateList);
		return "exchange-kr";
	}
}
