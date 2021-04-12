package com.sevenelite.billbo.noticeboard.model.service;

import java.util.List;

import com.sevenelite.billbo.noticeboard.model.dto.NoticeBoardDTO;

public interface NoticeBoardService {
	
	List<NoticeBoardDTO> selectNoticeBoard();

	boolean registNoticeBoard(NoticeBoardDTO noticeBoardDTO);
	
	int updateCount(int no);

	List<NoticeBoardDTO> detailNoticeBoard(int no);

	int deleteBoard(int no);

	boolean updateNoticeBoard(NoticeBoardDTO noticeBoardDTO);
}
