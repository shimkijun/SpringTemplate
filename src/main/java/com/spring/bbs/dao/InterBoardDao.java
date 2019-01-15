package com.spring.bbs.dao;

import java.util.List;

import com.spring.bbs.dto.BoardDto;

public interface InterBoardDao {

	public int BoardInsert(BoardDto bbs);
	public List<BoardDto> BoardList();
	
}
