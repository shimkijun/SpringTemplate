package com.spring.error.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.project.HomeController;

@Controller
public class ErrorController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@RequestMapping(value = "errors", method = RequestMethod.GET)
	public ModelAndView renderErrorPage(HttpServletRequest request) {
		 ModelAndView errorPage = new ModelAndView("errors/error");
		 String title = "";
		 String msg = "";
		 String ex = "";
		 int httpErrorCode = getErrorCode(request);
		 switch (httpErrorCode) {
         
         case 404: {
        	 title ="404error 페이지를 찾을 수 없습니다.";
        	 msg = "요청하신 페이지를 찾을 수 없습니다.";
        	 ex = "주소가 바뀌었거나 잘못 입력된 주소입니다.";
             break;
         }
         case 500: {
        	 msg = "Http Error Code: 500. Internal Server Error";
             break;
         }
     }
		errorPage.addObject("title", title);
		errorPage.addObject("msg", msg);
		errorPage.addObject("ex", ex);
		return errorPage;
	}
	
	//에러코드 가져오는 메서드
	private int getErrorCode(HttpServletRequest request) {
        return (Integer) request
          .getAttribute("javax.servlet.error.status_code");
    }
}
