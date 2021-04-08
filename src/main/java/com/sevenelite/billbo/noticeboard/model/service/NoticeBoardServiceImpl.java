package com.sevenelite.billbo.noticeboard.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sevenelite.billbo.noticeboard.model.dao.NoticeBoardMapper;
import com.sevenelite.billbo.noticeboard.model.dto.NoticeBoardDTO;

@Service("noticeBoardService")
public class NoticeBoardServiceImpl implements NoticeBoardService {
	
	private NoticeBoardMapper noticeBoardMapper;
	
	@Autowired
	public NoticeBoardServiceImpl(NoticeBoardMapper noticeBoardMapper) {
		this.noticeBoardMapper = noticeBoardMapper;
	}
	
	@Override
	public List<NoticeBoardDTO> selectNoticeBoard() {
		
		return noticeBoardMapper.selectNotice();
	}

	@Override
	public boolean registNoticeBoard(NoticeBoardDTO noticeBoardDTO) {
		
		int result = noticeBoardMapper.insertNotice(noticeBoardDTO);
		
		return result >= 1 ? true : false;
	}

}
