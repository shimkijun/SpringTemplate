package com.spring.user.service;

import com.spring.user.dto.UserDto;

public interface InterUserService {
	public int userRegister(UserDto user);
	public UserDto userLogin(UserDto user);
	public int userCheck(UserDto user);
	public int userModify(UserDto user);
	public UserDto userInfo(UserDto user);
	public int userRemove(UserDto user);
	
}
