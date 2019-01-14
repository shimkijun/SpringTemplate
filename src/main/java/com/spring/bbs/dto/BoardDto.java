package com.spring.bbs.dto;

import java.util.Date;

public class BoardDto {

	private int bbsNum;
	private int userNum;
	private String userId;
	private String userName;
	private String bbsTitle;
	private String bbsContent;
	private int bbsReRef;
	private int bbsReLev;
	private int bbsReNum;
	private int bbsCount;
	private Date bbsDate;
	private int userLv;
	
	
	public int getUserNum() {
		return userNum;
	}
	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}
	public int getBbsNum() {
		return bbsNum;
	}
	public void setBbsNum(int bbsNum) {
		this.bbsNum = bbsNum;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getBbsTitle() {
		return bbsTitle;
	}
	public void setBbsTitle(String bbsTitle) {
		this.bbsTitle = bbsTitle;
	}
	public String getBbsContent() {
		return bbsContent;
	}
	public void setBbsContent(String bbsContent) {
		this.bbsContent = bbsContent;
	}
	public int getBbsReRef() {
		return bbsReRef;
	}
	public void setBbsReRef(int bbsReRef) {
		this.bbsReRef = bbsReRef;
	}
	public int getBbsReLev() {
		return bbsReLev;
	}
	public void setBbsReLev(int bbsReLev) {
		this.bbsReLev = bbsReLev;
	}
	public int getBbsReNum() {
		return bbsReNum;
	}
	public void setBbsReNum(int bbsReNum) {
		this.bbsReNum = bbsReNum;
	}
	public int getBbsCount() {
		return bbsCount;
	}
	public void setBbsCount(int bbsCount) {
		this.bbsCount = bbsCount;
	}
	
	public Date getBbsDate() {
		return bbsDate;
	}
	public void setBbsDate(Date bbsDate) {
		this.bbsDate = bbsDate;
	}
	public int getUserLv() {
		return userLv;
	}
	public void setUserLv(int userLv) {
		this.userLv = userLv;
	}
	
	
	
}
