package com.sevenelite.billbo.board.model.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sevenelite.billbo.board.model.dao.BoardMapper;
import com.sevenelite.billbo.board.model.dto.BoardDTO;

@Service("boardService")
public class BoardServiceImpl implements BoardService {

	private BoardMapper boardMapper;

	@Autowired
	public BoardServiceImpl(BoardMapper boardMapper) {
		this.boardMapper = boardMapper;
	}

	@Override
	public List<BoardDTO> selectBoard() {

		return boardMapper.selectBoard();
	}

	@Override
	public boolean registBoard(BoardDTO board) {

		int result = boardMapper.registBoard(board);

		return result >= 1 ? true : false;
	}

	@Override
	public List<BoardDTO> detailBoard(int no) {
		// TODO Auto-generated method stub
		return boardMapper.detailBoard(no);
	}

	@Override
	public int updateCount(int no) {
		// TODO Auto-generated method stub
		return boardMapper.updateCount(no);
	}

	@Override
	public int deleteBoard(int no) {
		// TODO Auto-generated method stub
		return boardMapper.deleteBoard(no);
	}

	


	
	
	


}
