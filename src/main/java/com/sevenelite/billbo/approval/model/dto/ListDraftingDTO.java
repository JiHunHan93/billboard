package com.sevenelite.billbo.approval.model.dto;

import java.sql.Date;

public class ListDraftingDTO {
	
	/* 작성한 기안문서 조회 */
	private int draftNo;
	private java.sql.Date draftDate;
	private java.sql.Date draftCompleteDate;
	private String draftCompleteStatus;
	private String docuname;
	private String docuContents;
	private String emergency;
	private int paymentNo;
	private int memberNo;
	
	public ListDraftingDTO() {}

	public ListDraftingDTO(int draftNo, Date draftDate, Date draftCompleteDate, String draftCompleteStatus,
			String docuname, String docuContents, String emergency, int paymentNo, int memberNo) {
		super();
		this.draftNo = draftNo;
		this.draftDate = draftDate;
		this.draftCompleteDate = draftCompleteDate;
		this.draftCompleteStatus = draftCompleteStatus;
		this.docuname = docuname;
		this.docuContents = docuContents;
		this.emergency = emergency;
		this.paymentNo = paymentNo;
		this.memberNo = memberNo;
	}

	public int getDraftNo() {
		return draftNo;
	}

	public void setDraftNo(int draftNo) {
		this.draftNo = draftNo;
	}

	public java.sql.Date getDraftDate() {
		return draftDate;
	}

	public void setDraftDate(java.sql.Date draftDate) {
		this.draftDate = draftDate;
	}

	public java.sql.Date getDraftCompleteDate() {
		return draftCompleteDate;
	}

	public void setDraftCompleteDate(java.sql.Date draftCompleteDate) {
		this.draftCompleteDate = draftCompleteDate;
	}

	public String getDraftCompleteStatus() {
		return draftCompleteStatus;
	}

	public void setDraftCompleteStatus(String draftCompleteStatus) {
		this.draftCompleteStatus = draftCompleteStatus;
	}

	public String getDocuname() {
		return docuname;
	}

	public void setDocuname(String docuname) {
		this.docuname = docuname;
	}

	public String getDocuContents() {
		return docuContents;
	}

	public void setDocuContents(String docuContents) {
		this.docuContents = docuContents;
	}

	public String getEmergency() {
		return emergency;
	}

	public void setEmergency(String emergency) {
		this.emergency = emergency;
	}

	public int getPaymentNo() {
		return paymentNo;
	}

	public void setPaymentNo(int paymentNo) {
		this.paymentNo = paymentNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	@Override
	public String toString() {
		return "ListDraftingDTO [draftNo=" + draftNo + ", draftDate=" + draftDate + ", draftCompleteDate="
				+ draftCompleteDate + ", draftCompleteStatus=" + draftCompleteStatus + ", docuname=" + docuname
				+ ", docuContents=" + docuContents + ", emergency=" + emergency + ", paymentNo=" + paymentNo
				+ ", memberNo=" + memberNo + "]";
	}
	
}
