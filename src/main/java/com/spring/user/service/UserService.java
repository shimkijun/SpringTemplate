package com.spring.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.user.dao.UserDao;
import com.spring.user.dto.UserDto;

@Service
public class UserService implements InterUserService{

	@Autowired
	UserDao dao;
	
	@Override
	public int userRegister(UserDto user) {
		return dao.userInsert(user);
	}
	@Override
	public UserDto userLogin(UserDto user) {
		return dao.userLogin(user);
	}
	@Override
	public int userCheck(UserDto user) {
		return dao.userCheck(user);
	}

	@Override
	public int userModify(UserDto user) {
		return dao.userUpdate(user);
	}

	@Override
	public int userRemove(UserDto user) {
		return dao.userDelete(user);
	}

	@Override
	public UserDto userInfo(UserDto user) {
		return dao.userInfoCheck(user);
	}



}
