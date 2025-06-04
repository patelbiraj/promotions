package com.flalottery.secondchance.domain;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.Map;

import javax.crypto.Cipher;
import javax.crypto.Mac;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.codec.binary.Hex;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.StringUtils;
import org.joda.time.DateTime;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.flalottery.secondchance.dao.PropDAO;
import com.flalottery.secondchance.dataobject.AuthDO;
import com.flalottery.secondchance.dataobject.LoginDO;
import com.google.gson.GsonBuilder;

/**
 * Utility Enum for Pass Through Authentication (PTA)
 * 
 */
public enum PTA {

	INSTANCE();

	private static final Logger logger = LoggerFactory.getLogger(PTA.class.getName());

	// Florida Lottery Specific Keys
	// QA for imarcs
//	private static final String AES_KEY = "6c2162b3399cbc823d7a8606646704c8";
//	private static final String HMAC_KEY ="c4efd2643a1fe55922f8e7117b9582b5";

	// PROD for imarcs
	//private static final String AES_KEY = "4fa28a1a5bf320fdd9d61b01c880a267";
	//private static final String HMAC_KEY ="a164bfd6ee35de6215733085b01decbf";
	

	public static final String HMAC_ALGORITHM = "HmacSHA256";
	public static final String SECURE_RANDOM_ALGORITHM = "SHA1PRNG";
	public static final String ENCRYPT_ALGORITHM = "AES";
	public static final String ENCRYPT_TRANSFORMATION = "AES/CBC/NoPadding";
	public static final String CHARACTER_ENCODING = "UTF-8";

	/**
	 * Calculates a SHA256 HMAC
	 * 
	 * @param base64CipherText
	 *            - The MIME base64 encoded ciphertext
	 * @param hmacKey
	 *            - The Florida lottery specific signing key
	 * @return - the SHA256 HMAC
	 */
	public static String calculateHmac(final String base64CipherText, final String hmacKey) {
		final SecretKeySpec key = new SecretKeySpec(hmacKey.getBytes(), HMAC_ALGORITHM);
		String returnValue = "";
		try {
			final Mac sha256_HMAC = Mac.getInstance(HMAC_ALGORITHM);
			sha256_HMAC.init(key);
			returnValue = Hex.encodeHexString(sha256_HMAC.doFinal(base64CipherText.getBytes()));
		} catch (final InvalidKeyException e) {
			logger.error("Invalid Key: " + e);
		} catch (final NoSuchAlgorithmException e) {
			logger.error("No Such Algorithm: " + e);
		}
		return returnValue;
	}

	/**
	 * Method providing Advanced Encryption Standard (AES) encryption using the
	 * Cipher-block chaining (CBC) mode of operation with zero byte padding. The
	 * Zero byte padding - A padder that adds NULL byte padding to a block.
	 * 
	 * @param value
	 * @param aesHexKey
	 * @return
	 */
	public static Map<String, String> encrypt(final String value, final String aesHexKey) {
		final Map<String, String> returnMap = new HashMap<String, String>();
		try {
			PTAProp ptaProp = new PropDAO().getPTAKey();			
			final byte[] aesKeyBytes = javax.xml.bind.DatatypeConverter.parseHexBinary(aesHexKey);
			final SecretKeySpec key = new SecretKeySpec(aesKeyBytes, ENCRYPT_ALGORITHM);
			final Cipher cipher = Cipher.getInstance(ENCRYPT_TRANSFORMATION);
			final SecureRandom rnd = SecureRandom.getInstance(SECURE_RANDOM_ALGORITHM);
			cipher.init(Cipher.ENCRYPT_MODE, key, rnd);
			final byte[] encrypted = cipher.doFinal(addZeroBytePadding(value, cipher.getBlockSize()));
			returnMap.put("Iv", URLEncoder.encode(Base64.encodeBase64String(cipher.getIV()), CHARACTER_ENCODING));
			returnMap.put("Data", URLEncoder.encode(Base64.encodeBase64String(encrypted), CHARACTER_ENCODING));
			returnMap.put("Hash", calculateHmac(Base64.encodeBase64String(encrypted), ptaProp.getKeyHmac()));
			return returnMap;
		} catch (final Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}

	
	public static String decrypt(final String value, final String iv) {
		try {
			PTAProp ptaProp = new PropDAO().getPTAKey("PTA_KEY_ALCHEMY");
			final byte[] aesKeyBytes = javax.xml.bind.DatatypeConverter.parseHexBinary(ptaProp.getKeyAes());
			final SecretKeySpec key = new SecretKeySpec(aesKeyBytes, ENCRYPT_ALGORITHM);
			final Cipher cipher = Cipher.getInstance(ENCRYPT_TRANSFORMATION);
			final SecureRandom rnd = SecureRandom.getInstance(SECURE_RANDOM_ALGORITHM);
			cipher.init(Cipher.DECRYPT_MODE, key, new IvParameterSpec(Base64.decodeBase64(iv)));
			byte[] encryptedText = Base64.decodeBase64(value);
			byte[] plainText = cipher.doFinal(encryptedText);
			return new String(plainText);
		} catch (final Exception ex) {
			ex.printStackTrace();
		}
		return "";
	}
	
	
	/**
	 * Converts the value to its byte array and the array with NULL byte
	 * padding. The resulting byte array is a multiple of the blockSizeInBytes.
	 * If converting the value to bytes is already a multiple of the
	 * blockSizeInBytes then no padding is added.
	 * 
	 * @param value
	 *            - original string to be converted to bytes and padded
	 * @param blockSizeInBytes
	 *            - the block size in bytes (usually a power of 2);
	 * @return - the byte array of the value that has been padded to the next
	 *         multiple of the blockSizeInBytes.
	 */
	public static byte[] addZeroBytePadding(final String value, final Integer blockSizeInBytes) {
		final byte[] valueByteArray = value.getBytes();
		final int paddingAmount = (blockSizeInBytes - (valueByteArray.length % blockSizeInBytes)) % blockSizeInBytes;
		return ArrayUtils.addAll(valueByteArray, new byte[paddingAmount]);
	}

	/**
	 * Constructs the url for the pass through authentication (PTA)
	 * 
	 * @param loginDO
	 *            - the account information
	 * @param ptaUrl
	 *            - a url for the PTA entry point to which the lottery will
	 *            redirect the player's browser upon successful login.
	 * @param ptaRedirect
	 *            - the url that the player will be redirected to upon
	 *            successful PTA processing
	 * @return
	 */
	public static String buildPtaRedirectUrl(final LoginDO loginDO, final String ptaUrl, final String ptaRedirect) {
		final StringBuilder finalPtaRedirectUrl = new StringBuilder();
		String decodedPtaUrl = null;
		try {
			decodedPtaUrl = URLDecoder.decode(ptaUrl, "UTF-8");
		} catch (final UnsupportedEncodingException e) {
			logger.warn("Could not decode the ptaUrl");
		}
		if (null != loginDO && !StringUtils.isBlank(decodedPtaUrl) && !StringUtils.isBlank(ptaRedirect)) {
			try {
				PTAProp ptaProp = new PropDAO().getPTAKey();
				final Map<String, String> map = encrypt(toJsonForPTA(loginDO), ptaProp.getKeyAes());
				finalPtaRedirectUrl.append(decodedPtaUrl).append("&Hash=").append(map.get("Hash")).append("&Iv=").append(map.get("Iv")).append("&Data=").append(map.get("Data"))
				.append("&Redirect=").append(ptaRedirect);
			} catch (final Exception ex) {
				ex.printStackTrace();
			}
		}
		return finalPtaRedirectUrl.toString();
	}

	/**
	 * Converts the account information to JSON for the PTA.
	 * 
	 * @param loginDO
	 *            - the account information
	 * @return - the account information as a JSON string for the PTA
	 */
	@SuppressWarnings("unchecked")
	public static String toJsonForPTA(final LoginDO loginDO) {
		final JSONObject json = new JSONObject();
		json.put("RegistrarId", loginDO.getPlayerId().toString());
		json.put("FirstName", loginDO.getName().getFirst());
		json.put("LastName", loginDO.getName().getLast());
		json.put("Email", loginDO.getEmail());
		json.put("Address1", loginDO.getStreet1());
		if (StringUtils.isNotBlank(loginDO.getStreet2())) {
			json.put("Address2", loginDO.getStreet2());
		}
		json.put("City", loginDO.getCity());
		json.put("State", loginDO.getState());
		json.put("PostalCode", StringUtils.removePattern(loginDO.getPostalCode(), "[^a-zA-Z0-9]"));
		json.put("Phone", loginDO.getDayPhone().replaceAll("\\D", ""));
		json.put("AlternatePhone", loginDO.getEveningPhone().replaceAll("\\D", ""));
		json.put("KYCVerified", 0);
		json.put("SelfExclusion", 0);
		json.put("NowTimestamp", DateTime.now().toString());
		json.put("SessionId", loginDO.getSessionId());
		return json.toJSONString();
	}

	public static String removeNonAlphanumeric(final String s) {
		return StringUtils.removePattern(s, "[^a-zA-Z0-9]");
	}
}