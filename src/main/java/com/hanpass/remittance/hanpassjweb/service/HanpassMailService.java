package com.hanpass.remittance.hanpassjweb.service;

import com.hanpass.remittance.hanpassjweb.contract.mail.SendMailRequest;

public interface HanpassMailService {

	/**
	 * 한패스 메일로 메일을 발송 한다.
	 *
	 * @param request
	 * @throws Exception
	 */
	public String sendMailToHanpass(SendMailRequest request) throws Exception;

	/**
	 * 한패스 메일로 html 메일을 발송 한다.
	 *
	 * @param request
	 * @throws Exception
	 */
	public void sendHtmlMailToHanpass(SendMailRequest request) throws Exception;
}
