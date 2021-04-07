//package com.sevenelite.billbo.board.model.service;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import com.sevenelite.billbo.board.model.dao.BoardMapper;
//import com.sevenelite.billbo.board.model.dto.BoardDTO;
//
//@Service("boardService")
//public class BoardServiceImpl implements BoardService {
//	
//	private BoardMapper boardMapper;
//	
//	@Autowired
//	public BoardServiceImpl(BoardMapper boardMapper) {
//		this.boardMapper = boardMapper;
//	}
//
//	@Override
//	public List<BoardDTO> selectBoard() {
//		
//		return boardMapper.selectBoard();
//	}
//
//	@Override
//	public int insertBoard(BoardDTO boardDTO) {
//		// TODO Auto-generated method stub
//		return boardMapper.insertBoard(boardDTO);
//	}
//
//
//	
//		
//	
//
//}
