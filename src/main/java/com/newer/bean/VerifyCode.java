package com.newer.bean;

/**
 * 验证码的实体类
 * @author Admin
 *
 */
public class VerifyCode {
	private String code;
	private byte[] imgBytes;
	private long expireTime;
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public byte[] getImgBytes() {
		return imgBytes;
	}
	public void setImgBytes(byte[] imgBytes) {
		this.imgBytes = imgBytes;
	}
	public long getExpireTime() {
		return expireTime;
	}
	public void setExpireTime(long expireTime) {
		this.expireTime = expireTime;
	}
	
	public VerifyCode(String code, byte[] imgBytes, long expireTime) {
		super();
		this.code = code;
		this.imgBytes = imgBytes;
		this.expireTime = expireTime;
	}
	public VerifyCode() {
		super();
	}
}
