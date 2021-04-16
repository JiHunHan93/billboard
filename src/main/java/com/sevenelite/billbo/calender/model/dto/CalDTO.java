package com.sevenelite.billbo.calender.model.dto;

import java.sql.Date;

public class CalDTO {

	private String title;
	private String start;
	private String end;
	private boolean status;

	public CalDTO() {}

	public CalDTO(String title, String start, String end, boolean status) {
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

	@Override
	public String toString() {
		return "CalDTO [title=" + title + ", start=" + start + ", end=" + end + ", status=" + status + "]";
	}

}
