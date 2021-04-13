package com.sevenelite.billbo.noticeboard.model.dao;

import java.util.List;

import com.sevenelite.billbo.board.model.dto.BoardDTO;
import com.sevenelite.billbo.noticeboard.model.dto.NoticeBoardDTO;

public interface NoticeBoardMapper {
	
	List<NoticeBoardDTO> selectNotice();

	int insertNotice(NoticeBoardDTO noticeBoardDTO);

	int updateCount(int no);

	List<NoticeBoardDTO> detailNoticeBoard(int no);

	int deleteNoticeBoard(int no);

	boolean updateNoticeBoard(BoardDTO boardDTO);
	
}
