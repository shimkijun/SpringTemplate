package com.spring.utill;

import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

public class SHAPasswordEncoder implements PasswordEncoder{
	
	/**
	 * @author Seok Kyun. Choi. 최석균 (Syaku)
	 * @site http://syaku.tistory.com
	 * @since 16. 2. 18.
	 */
	
	private ShaPasswordEncoder shaPasswordEncoder;
	private Object salt = null;
	
	public SHAPasswordEncoder(int sha) {
		shaPasswordEncoder = new ShaPasswordEncoder(sha);
	}
	
	public void setEncodeHashAsBase64(boolean encodeHashAsBase64) {
		shaPasswordEncoder.setEncodeHashAsBase64(encodeHashAsBase64);
	}
	
	public void setSalt(Object salt) {
		this.salt = salt;
	}
	
	@Override
	public String encode(CharSequence rawPassword) {
		return shaPasswordEncoder.encodePassword(rawPassword.toString(),salt);
	}
	@Override
	public boolean matches(CharSequence rawPassword, String encodedPassword) {
		return shaPasswordEncoder.isPasswordValid(encodedPassword, rawPassword.toString(),salt);
	}
	


}
