package com.spring.bbs.dao;

import java.util.ArrayList;
import java.util.List;

import com.spring.bbs.dto.BoardDto;

public interface InterBoardDao {

	public int BoardCount(BoardDto bbs);
	public int BoardInsert(BoardDto bbs);
	public List<BoardDto> BoardList();
	public BoardDto BoardView(BoardDto bbs);
	public int BoardUpdate(BoardDto bbs);
	public int BoardDelete(BoardDto bbs);
}
