package com.sevenelite.billbo.holiday.model.dto;

import java.sql.Date;

public class HolidayDTO {

	private int holidayNo;
	private java.sql.Date startDate;
	private java.sql.Date endDate;
	private String reason;
	private String type;
	private int memberNo;
	private String memberName;
	private String email;
	private String address;
	private String phone;
	private java.sql.Date enrollDate;
	private int term;
	private String fileAttachmentPath; //파일경로
	private String originalName; //원본이름
	private String savedPath; //저장경로
	private String attachmentType; //파일종류
	private String fileDate; //파일일자
	private int attachmenetTypeNo; //첨부파일번호
	
	public HolidayDTO() {}

	public HolidayDTO(int holidayNo, Date startDate, Date endDate, String reason, String type, int memberNo,
			String memberName, String email, String address, String phone, Date enrollDate, int term,
			String fileAttachmentPath, String originalName, String savedPath, String attachmentType, String fileDate,
			int attachmenetTypeNo) {
		super();
		this.holidayNo = holidayNo;
		this.startDate = startDate;
		this.endDate = endDate;
		this.reason = reason;
		this.type = type;
		this.memberNo = memberNo;
		this.memberName = memberName;
		this.email = email;
		this.address = address;
		this.phone = phone;
		this.enrollDate = enrollDate;
		this.term = term;
		this.fileAttachmentPath = fileAttachmentPath;
		this.originalName = originalName;
		this.savedPath = savedPath;
		this.attachmentType = attachmentType;
		this.fileDate = fileDate;
		this.attachmenetTypeNo = attachmenetTypeNo;
	}

	public int getHolidayNo() {
		return holidayNo;
	}

	public void setHolidayNo(int holidayNo) {
		this.holidayNo = holidayNo;
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

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public java.sql.Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(java.sql.Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public int getTerm() {
		return term;
	}

	public void setTerm(int term) {
		this.term = term;
	}

	public String getFileAttachmentPath() {
		return fileAttachmentPath;
	}

	public void setFileAttachmentPath(String fileAttachmentPath) {
		this.fileAttachmentPath = fileAttachmentPath;
	}

	public String getOriginalName() {
		return originalName;
	}

	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}

	public String getSavedPath() {
		return savedPath;
	}

	public void setSavedPath(String savedPath) {
		this.savedPath = savedPath;
	}

	public String getAttachmentType() {
		return attachmentType;
	}

	public void setAttachmentType(String attachmentType) {
		this.attachmentType = attachmentType;
	}

	public String getFileDate() {
		return fileDate;
	}

	public void setFileDate(String fileDate) {
		this.fileDate = fileDate;
	}

	public int getAttachmenetTypeNo() {
		return attachmenetTypeNo;
	}

	public void setAttachmenetTypeNo(int attachmenetTypeNo) {
		this.attachmenetTypeNo = attachmenetTypeNo;
	}

	@Override
	public String toString() {
		return "HolidayDTO [holidayNo=" + holidayNo + ", startDate=" + startDate + ", endDate=" + endDate + ", reason="
				+ reason + ", type=" + type + ", memberNo=" + memberNo + ", memberName=" + memberName + ", email="
				+ email + ", address=" + address + ", phone=" + phone + ", enrollDate=" + enrollDate + ", term=" + term
				+ ", fileAttachmentPath=" + fileAttachmentPath + ", originalName=" + originalName + ", savedPath="
				+ savedPath + ", attachmentType=" + attachmentType + ", fileDate=" + fileDate + ", attachmenetTypeNo="
				+ attachmenetTypeNo + "]";
	}

	

	
	
	
}
