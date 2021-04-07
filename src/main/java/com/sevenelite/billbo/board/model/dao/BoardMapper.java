package com.sevenelite.billbo.board.model.dao;

import java.util.List;

import com.sevenelite.billbo.board.model.dto.BoardDTO;

public interface BoardMapper {

	List<BoardDTO> selectBoard();

	int insertBoard(BoardDTO boardDTO);

}
