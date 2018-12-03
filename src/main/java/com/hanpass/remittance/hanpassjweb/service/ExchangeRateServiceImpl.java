package com.hanpass.remittance.hanpassjweb.service;


import org.hibernate.service.spi.ServiceException;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Service;

import java.util.HashMap;

/**
 * Created by sonwooyoung on 2018-11-12.
 */
@Service
public class ExchangeRateServiceImpl implements ExchangeRateService{

	/** naver 환율 웹 크롤링
	 *
	 * @throws ServiceException
	 */
	@Override
	public HashMap<String,String> ExchangeRate() throws ServiceException {
		String URL = "https://finance.naver.com/marketindex/exchangeList.nhn";
		HashMap<String,String> rateList = new HashMap<>();
		try {
			Document doc = Jsoup.connect(URL).get();
			Elements elem = doc.select("tbody > tr > td.tit > a");
			Elements elem1 = doc.select("tbody > tr > td:nth-of-type(3)");
			String CounturyStr = elem.text();
			String CounturyRate = elem1.text();
			String str = CounturyStr.replaceAll("[^a-zA-Z]", "");
			String[] counturySplit = str.split("(?<=\\G.{" + 3 + "})"); // 3글자마다 잘라내어 배열 생성
			String[] CounturyRateSplit = CounturyRate.split(" ");

			for(int i=0; i < counturySplit.length; i++ ){
				rateList.put(counturySplit[i],CounturyRateSplit[i]);
			}

		}catch (Exception e){
			e.printStackTrace();
		}
		return rateList;
	}

}
