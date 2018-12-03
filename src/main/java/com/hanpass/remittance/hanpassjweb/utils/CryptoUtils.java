/**
 * 
 */
package com.hanpass.remittance.hanpassjweb.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import java.security.Key;

/**
 * @author Kisong
 *
 */
public class CryptoUtils {
	
	private static final String ALGORITHM = "AES/ECB/PKCS5Padding";
	
	private static final byte[] KEY = "hanpasscorekey12".getBytes();

	private static final Logger logger = LoggerFactory.getLogger(CryptoUtils.class);

	/**
	 * 송금서비스 암호화에 사용하는 알고리즘을 조회한다.
	 * @return
	 */
	public static String algorithm() {
		return ALGORITHM;
	}
	
	/**
	 * 송금서비스 암호화에 사용하는 기본 키를 조회한다.
	 * @return
	 */
	public static Key key() {
		return new SecretKeySpec(KEY, "AES");
	}

	/**
	 * 바이트 배열을 서비스 기본 키 값을 이용하여 AES-256 으로 암호화 한다.
	 * 
	 * @param contents
	 * @return
	 */
	public static byte[] encrypt(byte[] contents) {
		try {
			Key key = new SecretKeySpec(KEY, "AES");
			return encrypt(contents, key);
		} catch (Exception e) {
			logger.error("[encrypt] Error ", e);
			return null;
		}
	}
	
	/**
	 * 바이트 배열을 주어진 키 를 이용하여 AES-256 으로 암호화 한다.
	 * 
	 * @param contents
	 * @param randomKey
	 * @return
	 */
	public static byte[] encrypt(byte[] contents, String randomKey) {
		try {
			Key key = new SecretKeySpec(randomKey.getBytes(), "AES");
			return encrypt(contents, key);
		} catch (Exception e) {
			logger.error("[encrypt] Error ", e);
			return null;
		}
	}

	/**
	 * AES-256 알고리즘으로 암호화된 바이트 배열을 서비스 기본 키 값을 이용하여 복호화 한다.
	 * 
	 * @param contents
	 * @return
	 */
	public static byte[] decrypt(byte[] contents) {
		try {
			Key key = new SecretKeySpec(KEY, "AES");
			return decrypt(contents, key);
		} catch (Exception e) {
			logger.error("[decrypt] Error ", e);
			return null;
		}
	}
	
	/**
	 * AES-256 알고리즘으로 암호화된 바이트 배열을 주어진 키를 이용하여 복호화 한다.
	 * 
	 * @param contents
	 * @param randomKey
	 * @return
	 */
	public static byte[] decrypt(byte[] contents, String randomKey) {
		try {
			Key key = new SecretKeySpec(randomKey.getBytes(), "AES");
			return decrypt(contents, key);
		} catch (Exception e) {
			logger.error("[decrypt] Error ", e);
			return null;
		}
	}
	
	private static byte[] encrypt(byte[] contents, Key key) {
		try {
			Cipher c = Cipher.getInstance(ALGORITHM);
			c.init(Cipher.ENCRYPT_MODE, key);
			return c.doFinal(contents);
		} catch (Exception e) {
			logger.error("[encrypt] Error ", e);
			return null;
		}
	}
	
	private static byte[] decrypt(byte[] contents, Key key) {
		try {
			Cipher c = Cipher.getInstance(ALGORITHM);
			c.init(Cipher.DECRYPT_MODE, key);
			return c.doFinal(contents);
		} catch (Exception e) {
			logger.error("[decrypt] Error ", e);
			return null;
		}
	}
	
}
