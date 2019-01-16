package com.spring.bbs.service;

import java.util.ArrayList;
import java.util.List;

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

	@Override
	public ArrayList<BoardDto> bbsLists() {
		return dao.BoardList();
	}

	@Override
	public int bbsCount(BoardDto bbs) {
		return dao.BoardCount(bbs);
	}

	@Override
	public BoardDto bbsView(BoardDto bbs) {
		return dao.BoardView(bbs);
	}

	@Override
	public int bbsUpdate(BoardDto bbs) {
		return dao.BoardUpdate(bbs);
	}
	@Override
	public int bbsDelete(BoardDto bbs) {
		return dao.BoardDelete(bbs);
	}
	
}
