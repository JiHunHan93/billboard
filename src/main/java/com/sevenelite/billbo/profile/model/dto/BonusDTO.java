package com.sevenelite.billbo.profile.model.dto;

import java.sql.Date;

public class BonusDTO {

	private int no;
	private String reason;
	private java.sql.Date date;
	private String type;
	private String body;
	private int member_no;
	private String approve_code;
	
	public BonusDTO() {}

	public BonusDTO(int no, String reason, Date date, String type, String body, int member_no, String approve_code) {
		super();
		this.no = no;
		this.reason = reason;
		this.date = date;
		this.type = type;
		this.body = body;
		this.member_no = member_no;
		this.approve_code = approve_code;
	}

	@Override
	public String toString() {
		return "BonusDTO [no=" + no + ", reason=" + reason + ", date=" + date + ", type=" + type + ", body=" + body
				+ ", member_no=" + member_no + ", approve_code=" + approve_code + "]";
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public java.sql.Date getDate() {
		return date;
	}

	public void setDate(java.sql.Date date) {
		this.date = date;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	public int getMember_no() {
		return member_no;
	}

	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}

	public String getApprove_code() {
		return approve_code;
	}

	public void setApprove_code(String approve_code) {
		this.approve_code = approve_code;
	}

		
		}
	

