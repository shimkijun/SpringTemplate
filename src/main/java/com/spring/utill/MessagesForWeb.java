package com.spring.utill;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MessagesForWeb {
	public void msg(HttpServletRequest request,
			HttpServletResponse response,String msg) throws IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter printwriter = response.getWriter();
		printwriter.print("<script>"
				+ "alert('"+msg+"');"
				+ "history.back();"
				+ "</script>");
		printwriter.flush();
		printwriter.close();
	}
}
