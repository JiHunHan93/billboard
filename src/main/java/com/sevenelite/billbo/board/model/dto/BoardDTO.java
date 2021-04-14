package com.sevenelite.billbo.board.model.dto;

import java.sql.Date;

public class BoardDTO {

	private int no;
	private String boardType;
	private String title;
	private String body;
	private String writer;
	private String status;
	private String fileAttachment;
	private int count;
	private java.sql.Date enrollDate;
	private java.sql.Date endDate;
	private int memberNo;
	
	public BoardDTO() {}

	public BoardDTO(int no, String boardType, String title, String body, String writer, String status,
			String fileAttachment, int count, Date enrollDate, Date endDate, int memberNo) {
		super();
		this.no = no;
		this.boardType = boardType;
		this.title = title;
		this.body = body;
		this.writer = writer;
		this.status = status;
		this.fileAttachment = fileAttachment;
		this.count = count;
		this.enrollDate = enrollDate;
		this.endDate = endDate;
		this.memberNo = memberNo;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getBoardType() {
		return boardType;
	}

	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getFileAttachment() {
		return fileAttachment;
	}

	public void setFileAttachment(String fileAttachment) {
		this.fileAttachment = fileAttachment;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public java.sql.Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(java.sql.Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public java.sql.Date getEndDate() {
		return endDate;
	}

	public void setEndDate(java.sql.Date endDate) {
		this.endDate = endDate;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	@Override
	public String toString() {
		return "BoardDTO [no=" + no + ", boardType=" + boardType + ", title=" + title + ", body=" + body + ", writer="
				+ writer + ", status=" + status + ", fileAttachment=" + fileAttachment + ", count=" + count
				+ ", enrollDate=" + enrollDate + ", endDate=" + endDate + ", memberNo=" + memberNo + "]";
	}

}
