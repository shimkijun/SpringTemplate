package com.spring.bbs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.bbs.dao.BoardDao;
import com.spring.bbs.dto.BoardDto;

public interface InterBoardService {
	public int bbsCount(BoardDto bbs);
	public int bbsWrite(BoardDto bbs);
	public List<BoardDto> bbsLists();
	public BoardDto bbsView(BoardDto bbs);
	public int bbsUpdate(BoardDto bbs);
	public int bbsDelete(BoardDto bbs);
}
