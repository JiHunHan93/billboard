package com.sevenelite.billbo.workhour.work.model.dto;

import java.util.Date;

public class WorkDTO {
	
	private int wSTNo;
	private java.util.Date sTDate;
	private int totalWork;
	private String extraWork;
	private int LateCount;
	private int workCount;
	private int MemNo;

	public WorkDTO() {}

	public WorkDTO(int wSTNo, Date sTDate, int totalWork, String extraWork, int lateCount, int workCount,
			int memNo) {
		super();
		this.wSTNo = wSTNo;
		this.sTDate = sTDate;
		this.totalWork = totalWork;
		this.extraWork = extraWork;
		LateCount = lateCount;
		this.workCount = workCount;
		MemNo = memNo;
	}

	public int getwSTNo() {
		return wSTNo;
	}

	public void setwSTNo(int wSTNo) {
		this.wSTNo = wSTNo;
	}

	public java.util.Date getsTDate() {
		return sTDate;
	}

	public void setsTDate(java.util.Date sTDate) {
		this.sTDate = sTDate;
	}

	public int getTotalWork() {
		return totalWork;
	}

	public void setTotalWork(int totalWork) {
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

	@Override
	public String toString() {
		return "WorkDTO [wSTNo=" + wSTNo + ", sTDate=" + sTDate + ", totalWork=" + totalWork + ", extraWork="
				+ extraWork + ", LateCount=" + LateCount + ", workCount=" + workCount + ", MemNo=" + MemNo + "]";
	}

}
