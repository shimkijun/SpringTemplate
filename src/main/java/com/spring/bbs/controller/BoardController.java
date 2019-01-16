package com.spring.bbs.controller;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;


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
		service.bbsWrite(bbs);
		List<BoardDto> list = new ArrayList<>();
		list = service.bbsLists();
		model.addAttribute("lists",list);
		return "redirect:/bbs/list";
	}
	
	@RequestMapping(value="/view", method = {RequestMethod.GET,RequestMethod.POST})
	public String viewAction(BoardDto bbs,
			@RequestParam("no") int no,
			@RequestParam("id") String id,
			Model model){
		
		bbs.setBbsNum(no);
		bbs.setUserId(id);
		service.bbsCount(bbs);
		BoardDto listView = service.bbsView(bbs);
		model.addAttribute("view",listView);
		return "/bbs/view";
	}
	
	@RequestMapping(value="/modifyForm", method = {RequestMethod.GET,RequestMethod.POST})
	public String modifyForm(BoardDto bbs,
			@RequestParam("no") int no,
			@RequestParam("id") String id,
			Model model) {
		bbs.setBbsNum(no);
		bbs.setUserId(id);
		BoardDto modifyView = service.bbsView(bbs);
		model.addAttribute("modify",modifyView);
		return "/bbs/modifyForm";
	}
	
	@RequestMapping(value="/modify", method = RequestMethod.POST)
	public String modifyAction(BoardDto bbs,Model model){
		
		service.bbsUpdate(bbs);
		List<BoardDto> list = new ArrayList<>();
		list = service.bbsLists();
		model.addAttribute("lists",list);
		return "redirect:/bbs/list";
	}
	
	@RequestMapping(value="/delete", method = RequestMethod.POST)
	public String deleteAction(BoardDto bbs,Model model){
		
		service.bbsDelete(bbs);
		List<BoardDto> list = new ArrayList<>();
		list = service.bbsLists();
		model.addAttribute("lists",list);
		return "redirect:/bbs/list";
	}
}
