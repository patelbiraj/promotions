package com.flalottery.secondchance.domain;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Date;
import java.util.Properties;

import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public enum Mailer {

	INSTANCE;

	private static final Logger logger = LoggerFactory.getLogger(Mailer.class.getName());

	public static Boolean sendMessage(final String from, final String subject, final String sendTo, final String message) throws AddressException, MessagingException {
		return sendMsg(from, subject, sendTo, message, false);
	}
	
	public static Boolean sendHTMLMessage(final String from, final String subject, final String sendTo, final String message) throws AddressException, MessagingException {
		return sendMsg(from, subject, sendTo, message, true);
	}
		
	public static Boolean sendMsg(final String from, final String subject, final String sendTo, final String message, boolean isHtml) throws AddressException, MessagingException {
		final Properties mailBundle = getMailBundle();
		final Boolean success = true;
		final MimeMessage mimeMessage = new MimeMessage(Session.getInstance(mailBundle));
		mimeMessage.setFrom(new InternetAddress(from));
		mimeMessage.setSubject(subject);
		
		if(isHtml) {
			mimeMessage.setContent(message, "text/html");
		} else {
			mimeMessage.setText(message);
		}
		
		mimeMessage.setSentDate(new Date());
		mimeMessage.setRecipient(RecipientType.TO, new InternetAddress(sendTo));
		Transport.send(mimeMessage);
		return success;
	}
	
	private static Properties getMailBundle() {
		final Properties mailBundle = new Properties();
		// To use ironport1
				// mailBundle.put("mail.smtp.host", "192.149.205.164");
				 //To use mail server
				mailBundle.put("mail.smtp.host", "192.149.205.164");
				// To use ironport2
				//mailBundle.put("mail.smtp.host", "192.149.205.111");
				// To use hqems2
				// mailBundle.put("mail.smtp.host", "hqems2");
				mailBundle.put("mail.smtp.port", "25");
				//mailBundle.put("mail.smtp.auth", "true");
				//mailBundle.put("mail.smtp.starttls.enable", "true");
				return mailBundle;
	}
	
}
