package com.sevenelite.billbo.board.model.service;

import java.util.List;

import com.sevenelite.billbo.board.model.dto.BoardDTO;


public interface BoardService {

	List<BoardDTO> selectBoard();
	/*
	 * int insertBoard(BoardDTO boardDTO);
	 */

	boolean registBoard(BoardDTO board);

	List<BoardDTO> detailBoard(int no);

	int updateCount(int no);

	/* BoardDTO detailBoard(int no); */

}
