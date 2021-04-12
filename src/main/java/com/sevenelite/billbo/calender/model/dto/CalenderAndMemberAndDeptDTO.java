package com.sevenelite.billbo.calender.model.dto;

import java.sql.Date;

import com.sevenelite.billbo.member.model.dto.MemBbDTO;
import com.sevenelite.billbo.profile.model.dto.DeptDTO;

public class CalenderAndMemberAndDeptDTO {

	private int scheduleNo;
	private MemBbDTO memberNo;
	private MemBbDTO memberName;
	private String scheduleName;
	private String scheduleType;
	private java.sql.Date startDate;
	private java.sql.Date endDate;
	private String scheduleLocation;
	private String attendenceName;
	private String scheduleInfo;
	private String scheduleStatus;
	private DeptDTO deptCode;
	private DeptDTO deptName;
	

	public CalenderAndMemberAndDeptDTO() {}


	public CalenderAndMemberAndDeptDTO(int scheduleNo, MemBbDTO memberNo, MemBbDTO memberName, String scheduleName,
			String scheduleType, Date startDate, Date endDate, String scheduleLocation, String attendenceName,
			String scheduleInfo, String scheduleStatus, DeptDTO deptCode, DeptDTO deptName) {
		super();
		this.scheduleNo = scheduleNo;
		this.memberNo = memberNo;
		this.memberName = memberName;
		this.scheduleName = scheduleName;
		this.scheduleType = scheduleType;
		this.startDate = startDate;
		this.endDate = endDate;
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


	public String getScheduleName() {
		return scheduleName;
	}


	public void setScheduleName(String scheduleName) {
		this.scheduleName = scheduleName;
	}


	public String getScheduleType() {
		return scheduleType;
	}


	public void setScheduleType(String scheduleType) {
		this.scheduleType = scheduleType;
	}


	public java.sql.Date getStartDate() {
		return startDate;
	}


	public void setStartDate(java.sql.Date startDate) {
		this.startDate = startDate;
	}


	public java.sql.Date getEndDate() {
		return endDate;
	}


	public void setEndDate(java.sql.Date endDate) {
		this.endDate = endDate;
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
				+ memberName + ", scheduleName=" + scheduleName + ", scheduleType=" + scheduleType + ", startDate="
				+ startDate + ", endDate=" + endDate + ", scheduleLocation=" + scheduleLocation + ", attendenceName="
				+ attendenceName + ", scheduleInfo=" + scheduleInfo + ", scheduleStatus=" + scheduleStatus
				+ ", deptCode=" + deptCode + ", deptName=" + deptName + "]";
	}
	
	


	
	

	
}
