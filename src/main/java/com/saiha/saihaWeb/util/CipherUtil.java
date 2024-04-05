/**********************************************************************
 * SITE          :  새하정보시스템
 * PROJECT       :  홈페이지
 * PROGRAM ID    :  CipherUtil.java
 * DESCRIPTION   :  암복호화 유틸
 * PROGRAMMER    :  inhabs@saiha.co.kr (2018. 12. 6.)
 * --------------------------------------------------------------------
 * J2EE Env    	  : JavaSE 5(1.6.0_45), JavaEE 5(서블릿2.5 , JSP2.1)
 * Tool Env       : Eclipse 4.3(Kepler), Tomcat 7.0.88, VisualSVN 3.7.1
 * Encoding/space : EUC-KR (MS949) , ts=4
 **********************************************************************/
package com.saiha.saihaWeb.util;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.Random;

import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.codec.binary.Hex;

/**
 *
 * @author inhabs@saiha.co.kr
 * @since 2018. 12. 6.
 *
 *
 * */

public final class CipherUtil {

    /**
     * BASE64, HEX 인코딩
     * @param str
     * @param charset   인코딩 문자셋
     * @return
     */
    public static String base64EncodeHex(String str, String charset) {
        try {
            return new String(Hex.encodeHex(Base64.encodeBase64(str.getBytes(charset))));
        } catch (UnsupportedEncodingException e) {
            StringBuffer sbLog = new StringBuffer();
            sbLog.append("64BASE encode ERROR: "+e.toString()+"...\n");
            System.out.println(sbLog);
        }

        return null;
    }

    /**
     * BASE64, HEX 디코딩
     * @param base64hexed BASE64, HEX 인코딩 된 문자열
     * @param charset   디코딩 문자셋
     * @return
     */
    public static String base64DecodeHex(String base64hexed, String charset) {
        try {
            return new String(Base64.decodeBase64(Hex.decodeHex(base64hexed.toCharArray())), charset);
        } catch (DecoderException e) {
            StringBuffer sbLog = new StringBuffer();
            sbLog.append("64BASE decode ERROR: "+e.toString()+"...\n");
            System.out.println(sbLog);
        } catch (UnsupportedEncodingException e) {
            StringBuffer sbLog = new StringBuffer();
            sbLog.append("64BASE decode ERROR: "+e.toString()+"...\n");
            System.out.println(sbLog);
        }

        return null;
    }


    //20200715 문자열 -> sha256
    public static String  sha256(String str) throws NoSuchAlgorithmException{
        MessageDigest sha = MessageDigest.getInstance("SHA-256");
        sha.update(str.getBytes());
        return byteToHexString(sha.digest());
    }

    //20200715 바이트 배열 hex문자열로 변환
    public static String byteToHexString(byte[] data) {
        StringBuilder sb = new StringBuilder();
        for(byte b : data) {
            sb.append(Integer.toString((b & 0xff) + 0x100, 16).substring(1));
        }
        return sb.toString();
    }

    //20200715 pw 암호화
    public static String pwHashChange(String passwrod) throws NoSuchAlgorithmException {
        if(passwrod == null || passwrod == "") {
            return "";
        }
        return Base64.encodeBase64String( (new StringBuffer(sha256((new StringBuffer(passwrod)).reverse().toString()))).reverse().toString().getBytes());
    }

    public static String getRandomPassword(int length) {
        int index = 0;
        char[] charArr = new char[] {
                '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
                'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J',
                'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T',
                'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd',
                'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n',
                'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x',
                'y', 'z'
        };
        StringBuffer sb = new StringBuffer();
        Random random = new Random();
        random.setSeed(new Date().getTime());
        for (int i = 0; i < length; i++) {
            index = (int) (random.nextInt(charArr.length));
            sb.append(charArr[index]);
        }
        return sb.toString();
    }
}
