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
		return boardMapper.detailBoard(no);
	}

	@Override
	public int updateCount(int no) {
		return boardMapper.updateCount(no);
	}

	@Override
	public int deleteBoard(int no) {
		return boardMapper.deleteBoard(no);
	}

	@Override
	public boolean updateBoard(BoardDTO boardDTO) {
		return boardMapper.updateBoard(boardDTO);
	}

	@Override
	public List<BoardDTO> selectEmpBoard() {
		return boardMapper.selectEmpBoard();
	}

	@Override
	public List<BoardDTO> detailEmpBoard(int no) {
		return boardMapper.empDetailBoard(no);
	}

}
