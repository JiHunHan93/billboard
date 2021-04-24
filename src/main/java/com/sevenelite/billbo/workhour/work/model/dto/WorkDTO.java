package com.sevenelite.billbo.workhour.work.model.dto;

import java.util.Date;

import com.sevenelite.billbo.member.model.dto.MemBbDTO;
import com.sevenelite.billbo.member.model.dto.UserDetailsVO;
import com.sevenelite.billbo.profile.model.dto.MemberInfoDTO;

public class WorkDTO {
	
	private int weekNo;
	private java.util.Date date;
	private String totalWork;
	private String extraWork;
	private int LateCount;
	private int workCount;
	private int MemNo;
	private StatusAndWorkDTO status;
	private MemBbDTO member;
	private String WorkTypeCode;
	private String today;
	
	public WorkDTO() {}

	public WorkDTO(int weekNo, Date date, String totalWork, String extraWork, int lateCount, int workCount, int memNo,
			StatusAndWorkDTO status, MemBbDTO member, String workTypeCode, String today) {
		super();
		this.weekNo = weekNo;
		this.date = date;
		this.totalWork = totalWork;
		this.extraWork = extraWork;
		LateCount = lateCount;
		this.workCount = workCount;
		MemNo = memNo;
		this.status = status;
		this.member = member;
		WorkTypeCode = workTypeCode;
		this.today = today;
	}

	public int getWeekNo() {
		return weekNo;
	}

	public void setWeekNo(int weekNo) {
		this.weekNo = weekNo;
	}

	public java.util.Date getDate() {
		return date;
	}

	public void setDate(java.util.Date date) {
		this.date = date;
	}

	public String getTotalWork() {
		return totalWork;
	}

	public void setTotalWork(String totalWork) {
		this.totalWork = totalWork;
	}

	public String getExtraWork() {
		return extraWork;
	}

	public void setExtraWork(String extraWork) {
		this.extraWork = extraWork;
	}

	public int getLateCount() {
		return LateCount;
	}

	public void setLateCount(int lateCount) {
		LateCount = lateCount;
	}

	public int getWorkCount() {
		return workCount;
	}

	public void setWorkCount(int workCount) {
		this.workCount = workCount;
	}

	public int getMemNo() {
		return MemNo;
	}

	public void setMemNo(int memNo) {
		MemNo = memNo;
	}

	public StatusAndWorkDTO getStatus() {
		return status;
	}

	public void setStatus(StatusAndWorkDTO status) {
		this.status = status;
	}

	public MemBbDTO getMember() {
		return member;
	}

	public void setMember(MemBbDTO member) {
		this.member = member;
	}

	public String getWorkTypeCode() {
		return WorkTypeCode;
	}

	public void setWorkTypeCode(String workTypeCode) {
		WorkTypeCode = workTypeCode;
	}

	public String getToday() {
		return today;
	}

	public void setToday(String today) {
		this.today = today;
	}

	@Override
	public String toString() {
		return "WorkDTO [weekNo=" + weekNo + ", date=" + date + ", totalWork=" + totalWork + ", extraWork=" + extraWork
				+ ", LateCount=" + LateCount + ", workCount=" + workCount + ", MemNo=" + MemNo + ", status=" + status
				+ ", member=" + member + ", WorkTypeCode=" + WorkTypeCode + ", today=" + today + "]";
	}
	
}
