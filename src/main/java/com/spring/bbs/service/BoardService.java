package com.spring.bbs.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.bbs.dao.BoardDao;
import com.spring.bbs.dto.BoardDto;

@Service
public class BoardService implements InterBoardService{

	@Autowired
	BoardDao dao;

	@Override
	public int bbsWrite(BoardDto bbs) {
		return dao.BoardInsert(bbs);
	}
	
}
