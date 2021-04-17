package com.sevenelite.billbo.calendar.model.dto;

import java.sql.Date;

public class CalDTO {
	
	private int no;
	private String title;
	private String start;
	private String end;
	private boolean status;
	private int memberNo;
	private String calType;
	private String location;
	private String attendance;
	private String body;
	private String deleteStatus;
	private int code;
	
	public CalDTO() {}

	public CalDTO(int no, String title, String start, String end, boolean status, int memberNo, String calType,
			String location, String attendance, String body, String deleteStatus, int code) {
		super();
		this.no = no;
		this.title = title;
		this.start = start;
		this.end = end;
		this.status = status;
		this.memberNo = memberNo;
		this.calType = calType;
		this.location = location;
		this.attendance = attendance;
		this.body = body;
		this.deleteStatus = deleteStatus;
		this.code = code;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}

	public String getEnd() {
		return end;
	}

	public void setEnd(String end) {
		this.end = end;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getCalType() {
		return calType;
	}

	public void setCalType(String calType) {
		this.calType = calType;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getAttendance() {
		return attendance;
	}

	public void setAttendance(String attendance) {
		this.attendance = attendance;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	public String getDeleteStatus() {
		return deleteStatus;
	}

	public void setDeleteStatus(String deleteStatus) {
		this.deleteStatus = deleteStatus;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	@Override
	public String toString() {
		return "CalDTO [no=" + no + ", title=" + title + ", start=" + start + ", end=" + end + ", status=" + status
				+ ", memberNo=" + memberNo + ", calType=" + calType + ", location=" + location + ", attendance="
				+ attendance + ", body=" + body + ", deleteStatus=" + deleteStatus + ", code=" + code + "]";
	}

}
