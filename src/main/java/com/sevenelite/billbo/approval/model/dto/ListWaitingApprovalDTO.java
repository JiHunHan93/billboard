package com.sevenelite.billbo.approval.model.dto;

import java.sql.Date;

public class ListWaitingApprovalDTO {
	
	/* 결재 대기중인 문서(로그인한 사원에 대한) */
	
	/* BB_LINE_MEM */
	private int lineNo;
	private int draftNo;
	private java.sql.Date lineProcess;
	private String lineBody;
	private String pkinds;
	private String thumbnail;
	private String lineKinds;
	private String deptCode;
	private String spotCode;
	
	/* BB_DRAFTING */
	private java.sql.Date draftDate;
	private java.sql.Date draftCompleteDate;
	private String draftCompleteStatus;
	private String docuname;
	private String docuContents;
	private String emergency;
	private int paymentNo;
	private int memberNo;
	
	/* BB_APPROVE */
	private int approveCode;
	private String approveStatus;
	
	/* 커스터마이징 */
	private String memberName;
	
	public ListWaitingApprovalDTO() {}
	
	public ListWaitingApprovalDTO(String deptCode, String spotCode, String draftCompleteStatus) {
		super();
		this.deptCode = deptCode;
		this.spotCode = spotCode;
		this.draftCompleteStatus = draftCompleteStatus;
	}

	public ListWaitingApprovalDTO(int lineNo, int draftNo, Date lineProcess, String lineBody, String pkinds,
			String thumbnail, String lineKinds, String deptCode, String spotCode, Date draftDate,
			Date draftCompleteDate, String draftCompleteStatus, String docuname, String docuContents, String emergency,
			int paymentNo, int memberNo, int approveCode, String approveStatus, String memberName) {
		super();
		this.lineNo = lineNo;
		this.draftNo = draftNo;
		this.lineProcess = lineProcess;
		this.lineBody = lineBody;
		this.pkinds = pkinds;
		this.thumbnail = thumbnail;
		this.lineKinds = lineKinds;
		this.deptCode = deptCode;
		this.spotCode = spotCode;
		this.draftDate = draftDate;
		this.draftCompleteDate = draftCompleteDate;
		this.draftCompleteStatus = draftCompleteStatus;
		this.docuname = docuname;
		this.docuContents = docuContents;
		this.emergency = emergency;
		this.paymentNo = paymentNo;
		this.memberNo = memberNo;
		this.approveCode = approveCode;
		this.approveStatus = approveStatus;
		this.memberName = memberName;
	}

	public int getLineNo() {
		return lineNo;
	}

	public void setLineNo(int lineNo) {
		this.lineNo = lineNo;
	}

	public int getDraftNo() {
		return draftNo;
	}

	public void setDraftNo(int draftNo) {
		this.draftNo = draftNo;
	}

	public java.sql.Date getLineProcess() {
		return lineProcess;
	}

	public void setLineProcess(java.sql.Date lineProcess) {
		this.lineProcess = lineProcess;
	}

	public String getLineBody() {
		return lineBody;
	}

	public void setLineBody(String lineBody) {
		this.lineBody = lineBody;
	}

	public String getPkinds() {
		return pkinds;
	}

	public void setPkinds(String pkinds) {
		this.pkinds = pkinds;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public String getLineKinds() {
		return lineKinds;
	}

	public void setLineKinds(String lineKinds) {
		this.lineKinds = lineKinds;
	}

	public String getDeptCode() {
		return deptCode;
	}

	public void setDeptCode(String deptCode) {
		this.deptCode = deptCode;
	}

	public String getSpotCode() {
		return spotCode;
	}

	public void setSpotCode(String spotCode) {
		this.spotCode = spotCode;
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

	public int getApproveCode() {
		return approveCode;
	}

	public void setApproveCode(int approveCode) {
		this.approveCode = approveCode;
	}

	public String getApproveStatus() {
		return approveStatus;
	}

	public void setApproveStatus(String approveStatus) {
		this.approveStatus = approveStatus;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	@Override
	public String toString() {
		return "ListWaitingApprovalDTO [lineNo=" + lineNo + ", draftNo=" + draftNo + ", lineProcess=" + lineProcess
				+ ", lineBody=" + lineBody + ", pkinds=" + pkinds + ", thumbnail=" + thumbnail + ", lineKinds="
				+ lineKinds + ", deptCode=" + deptCode + ", spotCode=" + spotCode + ", draftDate=" + draftDate
				+ ", draftCompleteDate=" + draftCompleteDate + ", draftCompleteStatus=" + draftCompleteStatus
				+ ", docuname=" + docuname + ", docuContents=" + docuContents + ", emergency=" + emergency
				+ ", paymentNo=" + paymentNo + ", memberNo=" + memberNo + ", approveCode=" + approveCode
				+ ", approveStatus=" + approveStatus + ", memberName=" + memberName + "]";
	}
	
}
