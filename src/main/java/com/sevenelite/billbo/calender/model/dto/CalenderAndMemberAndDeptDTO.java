package com.sevenelite.billbo.calender.model.dto;

import java.sql.Date;

import com.sevenelite.billbo.member.model.dto.MemBbDTO;
import com.sevenelite.billbo.profile.model.dto.DeptDTO;

public class CalenderAndMemberAndDeptDTO {

	private int scheduleNo;
	private MemBbDTO memberNo;
	private MemBbDTO memberName;
	private String title;
	private String category;
	private java.sql.Date start;
	private java.sql.Date end;
	private String scheduleLocation;
	private String attendenceName;
	private String scheduleInfo;
	private String scheduleStatus;
	private DeptDTO deptCode;
	private DeptDTO deptName;
	

	public CalenderAndMemberAndDeptDTO() {}


	public CalenderAndMemberAndDeptDTO(int scheduleNo, MemBbDTO memberNo, MemBbDTO memberName, String title,
			String category, Date start, Date end, String scheduleLocation, String attendenceName, String scheduleInfo,
			String scheduleStatus, DeptDTO deptCode, DeptDTO deptName) {
		super();
		this.scheduleNo = scheduleNo;
		this.memberNo = memberNo;
		this.memberName = memberName;
		this.title = title;
		this.category = category;
		this.start = start;
		this.end = end;
		this.scheduleLocation = scheduleLocation;
		this.attendenceName = attendenceName;
		this.scheduleInfo = scheduleInfo;
		this.scheduleStatus = scheduleStatus;
		this.deptCode = deptCode;
		this.deptName = deptName;
	}


	public int getScheduleNo() {
		return scheduleNo;
	}


	public void setScheduleNo(int scheduleNo) {
		this.scheduleNo = scheduleNo;
	}


	public MemBbDTO getMemberNo() {
		return memberNo;
	}


	public void setMemberNo(MemBbDTO memberNo) {
		this.memberNo = memberNo;
	}


	public MemBbDTO getMemberName() {
		return memberName;
	}


	public void setMemberName(MemBbDTO memberName) {
		this.memberName = memberName;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public java.sql.Date getStart() {
		return start;
	}


	public void setStart(java.sql.Date start) {
		this.start = start;
	}


	public java.sql.Date getEnd() {
		return end;
	}


	public void setEnd(java.sql.Date end) {
		this.end = end;
	}


	public String getScheduleLocation() {
		return scheduleLocation;
	}


	public void setScheduleLocation(String scheduleLocation) {
		this.scheduleLocation = scheduleLocation;
	}


	public String getAttendenceName() {
		return attendenceName;
	}


	public void setAttendenceName(String attendenceName) {
		this.attendenceName = attendenceName;
	}


	public String getScheduleInfo() {
		return scheduleInfo;
	}


	public void setScheduleInfo(String scheduleInfo) {
		this.scheduleInfo = scheduleInfo;
	}


	public String getScheduleStatus() {
		return scheduleStatus;
	}


	public void setScheduleStatus(String scheduleStatus) {
		this.scheduleStatus = scheduleStatus;
	}


	public DeptDTO getDeptCode() {
		return deptCode;
	}


	public void setDeptCode(DeptDTO deptCode) {
		this.deptCode = deptCode;
	}


	public DeptDTO getDeptName() {
		return deptName;
	}


	public void setDeptName(DeptDTO deptName) {
		this.deptName = deptName;
	}


	@Override
	public String toString() {
		return "CalenderAndMemberAndDeptDTO [scheduleNo=" + scheduleNo + ", memberNo=" + memberNo + ", memberName="
				+ memberName + ", title=" + title + ", category=" + category + ", start=" + start + ", end=" + end
				+ ", scheduleLocation=" + scheduleLocation + ", attendenceName=" + attendenceName + ", scheduleInfo="
				+ scheduleInfo + ", scheduleStatus=" + scheduleStatus + ", deptCode=" + deptCode + ", deptName="
				+ deptName + "]";
	}




	
	

	
}
