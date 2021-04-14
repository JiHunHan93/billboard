package com.sevenelite.billbo.approval.model.dto;

import java.sql.Date;

public class ApproDraftingDTO {
	
	private int draftNo;
	private java.sql.Date draftDateStart;
	private java.sql.Date draftDateComplete;
	private String completeStatus;
	private String docuName;
	private String docuContents;
	private String emergency;
	private int memberNo;
	private int paymentNo;
	
	public ApproDraftingDTO() {}
	
	public ApproDraftingDTO(Date draftDateStart, String completeStatus, String docuName, String docuContents, String emergency, int memberNo, int paymentNo) {
		super();
		this.draftDateStart = draftDateStart;
		this.completeStatus = completeStatus;
		this.docuName = docuName;
		this.docuContents = docuContents;
		this.emergency = emergency;
		this.memberNo = memberNo;
		this.paymentNo = paymentNo;
	}

	public ApproDraftingDTO(int draftNo, Date draftDateStart, Date draftDateComplete, String completeStatus,
			String docuName, String docuContents, String emergency, int memberNo, int paymentNo) {
		super();
		this.draftNo = draftNo;
		this.draftDateStart = draftDateStart;
		this.draftDateComplete = draftDateComplete;
		this.completeStatus = completeStatus;
		this.docuName = docuName;
		this.docuContents = docuContents;
		this.emergency = emergency;
		this.memberNo = memberNo;
		this.paymentNo = paymentNo;
	}

	public int getDraftNo() {
		return draftNo;
	}

	public void setDraftNo(int draftNo) {
		this.draftNo = draftNo;
	}

	public java.sql.Date getDraftDateStart() {
		return draftDateStart;
	}

	public void setDraftDateStart(java.sql.Date draftDateStart) {
		this.draftDateStart = draftDateStart;
	}

	public java.sql.Date getDraftDateComplete() {
		return draftDateComplete;
	}

	public void setDraftDateComplete(java.sql.Date draftDateComplete) {
		this.draftDateComplete = draftDateComplete;
	}

	public String getCompleteStatus() {
		return completeStatus;
	}

	public void setCompleteStatus(String completeStatus) {
		this.completeStatus = completeStatus;
	}

	public String getDocuName() {
		return docuName;
	}

	public void setDocuName(String docuName) {
		this.docuName = docuName;
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

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getPaymentNo() {
		return paymentNo;
	}

	public void setPaymentNo(int paymentNo) {
		this.paymentNo = paymentNo;
	}

	@Override
	public String toString() {
		return "ApproDraftingDTO [draftNo=" + draftNo + ", draftDateStart=" + draftDateStart + ", draftDateComplete="
				+ draftDateComplete + ", completeStatus=" + completeStatus + ", docuName=" + docuName
				+ ", docuContents=" + docuContents + ", emergency=" + emergency + ", memberNo=" + memberNo
				+ ", paymentNo=" + paymentNo + "]";
	}
	
}
