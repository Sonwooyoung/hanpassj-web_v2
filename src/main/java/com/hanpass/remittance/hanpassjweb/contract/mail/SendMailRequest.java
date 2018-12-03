package com.hanpass.remittance.hanpassjweb.contract.mail;

import org.springframework.stereotype.Repository;

@Repository
public class SendMailRequest {
	
	private String senderEmail;
	
	private String subject;
	
	private String contents;

	@Override
	public String toString() {
		return "SendMailRequest [senderEmail=" + senderEmail + ", subject=" + subject + ", contents=" + contents + "]";
	}

	public String getSenderEmail() {
		return senderEmail;
	}

	public void setSenderEmail(String senderEmail) {
		this.senderEmail = senderEmail;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

}
