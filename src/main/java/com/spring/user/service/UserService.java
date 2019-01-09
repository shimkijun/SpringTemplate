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
		UserDto dto = dao.userSelect(user);
		
		if(dto == null) {
			System.out.println("login no");
		}else {
			System.out.println("login ok");
		}
		
		return dto;
		
	}

	@Override
	public int userCheck(UserDto user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public UserDto userModify(UserDto user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int userRemove(UserDto user) {
		// TODO Auto-generated method stub
		return 0;
	}


}
