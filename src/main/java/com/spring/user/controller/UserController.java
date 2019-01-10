package com.spring.user.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.project.HomeController;
import com.spring.user.dto.UserDto;
import com.spring.user.service.UserService;
import com.spring.utill.PasswordEncoding;


@Controller
public class UserController {
private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	UserService service;
	
	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
	public String joinForm() {
		return "/user/join";
	}

	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String joinAction(UserDto user,
			@RequestParam("userPw1") String userPw1,
			@RequestParam("userPw2") String userPw2) {
		
		int userCheck = service.userCheck(user);
		
		if(userCheck == 0) {
			PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
			PasswordEncoding passwordEncoding = new PasswordEncoding(passwordEncoder);
			if(userPw1.equals(userPw2)) {
				user.setUserPw(passwordEncoding.encode(userPw2));
			}
			service.userRegister(user);
			
		}else if(userCheck == 1){
			System.out.println("아이디 있음");
			return "/user/join";
		}else if(userCheck == 2){
			System.out.println("아이디 값 이 없음");
			return "/user/join";
		}
		return "/user/joinOk";
	}

	@RequestMapping(value = "/loginForm", method = RequestMethod.GET)
	public String loginForm() {
		return "/user/login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginAction(UserDto user,HttpSession session,Model model) {
		if(session.getAttribute("user") != null) {
			session.removeAttribute("user");
		}
		UserDto dto = service.userLogin(user);
		if(dto == null) {
			return "/user/login";
		}
		session.setAttribute("user",dto.getUserId());
		return "/index";
	}
	
	@RequestMapping(value = "/modifyForm", method = RequestMethod.GET)
	public String modifyForm() {
		return "/user/modify";
	}
	
	@RequestMapping(value = "/deleteForm", method = RequestMethod.GET)
	public String deleteForm() {
		return "/user/delete";
	}
	
	@RequestMapping(value = "/idCheck", method = RequestMethod.POST)
	public @ResponseBody int userCheckAction (UserDto user,
			@RequestParam("userId") String userId) {
		int result = service.userCheck(user);
		return result;
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session,Model model) {
		session.invalidate();
		return "/index";
	}

	
}
