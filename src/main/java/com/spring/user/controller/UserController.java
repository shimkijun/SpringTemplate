package com.spring.user.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.project.HomeController;
import com.spring.user.dto.UserDto;
import com.spring.user.service.UserService;
import com.spring.utill.PasswordEncoding;


@Controller
public class UserController {
private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	UserService service;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
	public String joinForm() {
		return "/user/join";
	}

	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String joinAction(UserDto user,
			@RequestParam("userPw1") String userPw1,
			@RequestParam("userPw2") String userPw2) {

		PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		PasswordEncoding passwordEncoding = new PasswordEncoding(passwordEncoder);
		if(userPw1.equals(userPw2)) {
			user.setUserPw(passwordEncoding.encode(userPw2));
		}
		service.userRegister(user);
		return "/user/login";
	}

	@RequestMapping(value = "/loginForm", method = RequestMethod.GET)
	public String loginForm() {
		return "/user/login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginAction(UserDto user,HttpSession session) {
		UserDto dto = service.userLogin(user);
		if(dto == null) {
			return "/user/login";
		}
		session.setAttribute("sessionId",dto.getUserId());
		return "/user/loginOk";
	}
}
