package com.sevenelite.billbo.workhour.work.model.dao;

import java.util.List;

import com.sevenelite.billbo.workhour.work.model.dto.RecordWorkDTO;

public interface WorkRecordDAO {

	List<RecordWorkDTO> selectRecord(); 
}