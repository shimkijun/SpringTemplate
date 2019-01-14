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
	@RequestMapping(value = "errors", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView renderGetErrorPage(HttpServletRequest request) {
		 ModelAndView errorPage = new ModelAndView("errors/error");
		 String title = "";
		 String msg = "";
		 String ex = "";
		 int httpErrorCode = getErrorCode(request);
		 System.out.println(httpErrorCode);
		 switch (httpErrorCode) {
		 case 400: {
        	 title ="400error";
        	 msg = "400error";
        	 ex = "400error";
             break;
         }
         case 404: {
        	 title ="404error 페이지를 찾을 수 없습니다.";
        	 msg = "404 요청하신 페이지를 찾을 수 없습니다.";
        	 ex = "주소가 바뀌었거나 잘못 입력된 주소입니다.";
             break;
         }case 405: {
        	 title ="405error 메서드가 허용되지 않습니다.";
        	 msg = "405 요청하신 메서드가 허용되지 않습니다.";
        	 ex = "요청에 의해 식별 되는 리소스에 대 한 요청 라인에 지정 된 메서드가 허용 되지 않습니다. 적절 한 MIME 형식을 요청 하는 리소스에 대 한 설정 있는지 확인 하십시오.";
             break;
         }
         case 500: {
        	 title ="500error ";
        	 msg = "500error";
        	 ex = "500error";
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
