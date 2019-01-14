package com.spring.bbs.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.bbs.dto.BoardDto;
import com.spring.bbs.service.BoardService;
import com.spring.user.dto.UserDto;
import com.spring.user.service.UserService;

@Controller
@RequestMapping("/bbs")
public class BoardController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	BoardService service;
	
	
	@ModelAttribute("path")
	public String getContextPath(HttpServletRequest request) {
		return request.getContextPath();
	}

	@RequestMapping(value="/list", method = RequestMethod.GET)
	public String list() {
		return "/bbs/list";
	}
	
	@RequestMapping(value="/writeForm", method = RequestMethod.POST)
	public String writeForm(UserDto user,Model model) {
		user = userService.userInfo(user);
		model.addAttribute("user",user);
		return "/bbs/writeForm";
	}
	
	@RequestMapping(value="/write", method = RequestMethod.POST)
	public String writeAction(BoardDto bbs) {
		/*System.out.println("bbsNum="+bbs.getBbsNum());
		System.out.println("userNum="+bbs.getUserNum());
		System.out.println("userId="+bbs.getUserId());
		System.out.println("userName="+bbs.getUserName());
		System.out.println("bbsTitle="+bbs.getBbsTitle());
		System.out.println("bbsContent="+bbs.getBbsContent());
		System.out.println("bbsref="+bbs.getBbsReRef());
		System.out.println("bbslev="+bbs.getBbsReLev());
		System.out.println("bbsnum="+bbs.getBbsReNum());
		System.out.println("bbsCount = "+bbs.getBbsCount());
		System.out.println("bbsDate = "+bbs.getBbsDate());
		System.out.println("userLv = "+bbs.getUserLv());*/
		service.bbsWrite(bbs);
		
		return "/bbs/list";
	}
}
