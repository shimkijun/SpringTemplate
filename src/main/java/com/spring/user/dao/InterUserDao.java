package com.spring.user.dao;

import com.spring.user.dto.UserDto;

public interface InterUserDao {
	
	int userInsert(UserDto user);
	UserDto userSelect(UserDto users);
	int userUpdate(UserDto user);
	int userDelete(UserDto user);
	int userCheck(UserDto user);
	
}