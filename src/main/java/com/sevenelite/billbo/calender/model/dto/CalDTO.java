package com.sevenelite.billbo.calender.model.dto;

import java.sql.Date;

public class CalDTO {

	private String title;
	private java.sql.Date start;
	private java.sql.Date end;
	private boolean status;

	public CalDTO() {}

	public CalDTO(String title, Date start, Date end, boolean status) {
		super();
		this.title = title;
		this.start = start;
		this.end = end;
		this.status = status;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "CalDTO [title=" + title + ", start=" + start + ", end=" + end + ", status=" + status + "]";
	}
	
}
