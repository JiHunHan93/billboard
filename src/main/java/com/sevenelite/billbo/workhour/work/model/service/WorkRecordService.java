package com.sevenelite.billbo.workhour.work.model.service;

import java.util.List;

import com.sevenelite.billbo.workhour.work.model.dto.RecordWorkDTO;

public interface WorkRecordService {

	public List<RecordWorkDTO> selectRecord();

}
