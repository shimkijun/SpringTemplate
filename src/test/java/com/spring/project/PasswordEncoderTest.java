package com.spring.project;

import org.junit.Test;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.spring.encoder.test.PasswordEncoding;
import com.spring.encoder.test.SHAPasswordEncoder;

public class PasswordEncoderTest {
	/**
	 * @author Seok Kyun. Choi. 최석균 (Syaku)
	 * @site http://syaku.tistory.com
	 * @since 16. 2. 18.
	 */
	@Test
	public void test() {
		String password = "tlarlwns";
		SHAPasswordEncoder shaPasswordEncoder = new SHAPasswordEncoder(512);
		shaPasswordEncoder.setEncodeHashAsBase64(true);
		PasswordEncoding passwordEncoding = new PasswordEncoding(shaPasswordEncoder);

		System.out.println("SHA 암호화: " + passwordEncoding.encode(password));
		System.out.println("SHA 비교: " + passwordEncoding.matches(password, passwordEncoding.encode(password)));


		PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		passwordEncoding = new PasswordEncoding(passwordEncoder);

		System.out.println("BCrypt 암호화: " + passwordEncoding.encode(password));
		System.out.println("BCrypt 비교: " + passwordEncoding.matches(password, passwordEncoding.encode(password)));

		//다시 암호화
		System.out.println("BCrypt 암호화: " + passwordEncoding.encode(password));
		System.out.println("BCrypt 비교: " + passwordEncoding.matches(password, passwordEncoding.encode(password)));

		
	}
	
	
}
