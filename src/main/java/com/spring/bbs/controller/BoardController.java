package com.spring.bbs.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import com.spring.utill.MessagesForWeb;

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
	public String list(Model model) {
		List<BoardDto> list = new ArrayList<>();
		list = service.bbsLists();
		model.addAttribute("lists",list);
		return "/bbs/list";
	}
	
	@RequestMapping(value="/writeForm", method = RequestMethod.POST)
	public String writeForm(UserDto user,Model model) {
		user = userService.userInfo(user);
		model.addAttribute("user",user);
		return "/bbs/writeForm";
	}
	
	@RequestMapping(value="/write", method = RequestMethod.POST)
	public String writeAction(BoardDto bbs,Model model){
		List<BoardDto> list = new ArrayList<>();
		list = service.bbsLists();
		model.addAttribute("lists",list);
		int result = service.bbsWrite(bbs);
		if(result == 1) {
			
		}
		
		return "/bbs/list";
	}
}
