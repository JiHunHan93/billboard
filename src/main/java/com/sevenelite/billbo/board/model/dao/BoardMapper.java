
package com.sevenelite.billbo.board.model.dao;

import java.util.List;

import com.sevenelite.billbo.board.model.dto.BoardDTO;

public interface BoardMapper {

//  게시판 조회
	List<BoardDTO> selectBoard();

	List<BoardDTO> selectEmpBoard();
	
	List<BoardDTO> selectNotice();

//  게시판 상세 조회
	List<BoardDTO> detailBoard(int no);

	List<BoardDTO> empDetailBoard(int no);
	
	List<BoardDTO> detailNoticeBoard(int no);

//  공용 조회수, 작성, 수정, 삭제
	int updateCount(int no);

	int registBoard(BoardDTO board);

	boolean updateBoard(BoardDTO boardDTO);

	int deleteBoard(int no);

}
