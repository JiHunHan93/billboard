package com.sevenelite.billbo.noticeboard.model.dao;

import java.util.List;

import com.sevenelite.billbo.noticeboard.model.dto.NoticeBoardDTO;

public interface NoticeBoardMapper {
	
	List<NoticeBoardDTO> selectNotice();

	boolean insertNotice();
}
