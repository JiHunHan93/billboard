
  package com.sevenelite.billbo.board.model.dao;
  
  import java.util.List;
  
  import com.sevenelite.billbo.board.model.dto.BoardDTO;
  
  public interface BoardMapper {
  
  List<BoardDTO> selectBoard();

  int registBoard(BoardDTO board);

List<BoardDTO> detailBoard(int no);

int updateCount(int no);

/* BoardDTO detailBoard(int no); */
  
	/*
	 * int insertBoard(BoardDTO boardDTO);
	 */
  }
 