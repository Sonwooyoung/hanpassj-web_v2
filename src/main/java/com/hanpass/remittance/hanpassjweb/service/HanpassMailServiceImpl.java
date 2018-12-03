package com.hanpass.remittance.hanpassjweb.service;

import com.hanpass.remittance.hanpassjweb.contract.mail.SendMailRequest;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

@Service
public class HanpassMailServiceImpl implements HanpassMailService {

	@Value("${hanpass.user.name}")
	private String UserNameProperties;

	@Value("${hanpass.user.password}")
	private String UserPasswordProperties;

	@Value("${recipient.email}")
	private String recipientEmailProperties;

	@Value("${mail.smtp.host}")
	private String mailSmtpHostProperties;

	@Value("${mail.smtp.port}")
	private String mailSmtpPortProperties;

	@Value("${mail.smtp.auth}")
	private String mailSmtpAuthProperties;

	@Value("${mail.smtp.ssl.enable}")
	private String mailSmtpSslEnableProperties;

	@Value("${mail.smtp.ssl.trust}")
	private String mailSmtpSslTrustProperties;

	@Override
	public String sendMailToHanpass(SendMailRequest request) throws Exception {
		System.out.println(request);
		System.out.println("sendMailTest");

		String result = null;

		final String UserName = UserNameProperties;
		final String UserPassword = UserPasswordProperties;
		final String recipientEmail = recipientEmailProperties;

		Properties prop = new Properties();
		prop.put("mail.smtp.host", mailSmtpHostProperties);
		prop.put("mail.smtp.port", mailSmtpPortProperties);
		prop.put("mail.smtp.auth", mailSmtpAuthProperties);
		prop.put("mail.smtp.ssl.enable", mailSmtpSslEnableProperties);
		prop.put("mail.smtp.ssl.trust", mailSmtpSslTrustProperties);

		Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(UserName, UserPassword);
            }
        });

		try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(request.getSenderEmail(), request.getSenderEmail()));

            // 수신자 메일주소
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(recipientEmail));

            // reply to(답장) 메일 주소
            message.setReplyTo(new Address[]{
            		new InternetAddress(request.getSenderEmail())
            });

            // 메일 제목
            message.setSubject(request.getSubject());

            // 메일 내용
            message.setText(request.getContents());

            // 메일 전송
            Transport.send(message);
			result = "{result:{'resCode': '0000','resMessage':'메일발송 완료'}}";

        } catch (Exception e) {
            throw e;
        }
        return result;
	}

	@Override
	public void sendHtmlMailToHanpass(SendMailRequest request) throws Exception {
		System.out.println("send html Mail Test");

		final String UserName = UserNameProperties;
		final String UserPassword = UserPasswordProperties;
		final String recipientEmail = recipientEmailProperties;

		Properties prop = new Properties();
		prop.put("mail.smtp.host", mailSmtpHostProperties);
		prop.put("mail.smtp.port", mailSmtpPortProperties);
		prop.put("mail.smtp.auth", mailSmtpAuthProperties);
		prop.put("mail.smtp.ssl.enable", mailSmtpSslEnableProperties);
		prop.put("mail.smtp.ssl.trust", mailSmtpSslTrustProperties);

		Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(UserName, UserPassword);
            }
        });

		try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(request.getSenderEmail(), request.getSenderEmail()));

            // 수신자 메일주소
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(recipientEmail));

            // reply to(답장) 메일 주소
            message.setReplyTo(new Address[]{
            		new InternetAddress(request.getSenderEmail())
            });

            // 메일 제목
            message.setSubject(request.getSubject());

            // 메일 내용
            message.setContent(request.getContents(), "text/html;charset=euc-kr");

            // 메일 전송
            Transport.send(message);


        } catch (Exception e) {
            throw e;
        }
	}

}
