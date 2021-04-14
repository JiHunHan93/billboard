package com.sevenelite.billbo.board.model.service;

import java.util.List;

import com.sevenelite.billbo.board.model.dto.BoardDTO;


public interface BoardService {

//  자유 게시판
	List<BoardDTO> selectBoard();

	List<BoardDTO> detailBoard(int no);

//  인사 게시판
	List<BoardDTO> selectEmpBoard();

	List<BoardDTO> detailEmpBoard(int no);

//  공지 게시판	
	List<BoardDTO> selectNoticeBoard();

	List<BoardDTO> detailNoticeBoard(int no);
	
//  공용
	int updateCount(int no);
	
	int deleteBoard(int no);
	
	boolean registBoard(BoardDTO board);
	
	boolean updateBoard(BoardDTO boardDTO);
}
