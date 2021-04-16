//package com.sevenelite.billbo.approval.model.dto;
//
//import java.sql.Date;
//
//public class ApproLineMemDTO {
//	
//	/* 결재선사원(BB_LINE_MEM) */
//	
//	private int lineNo;						//Pk 결재선 순번
//	private int draftNo;					//Fk 기안번호 
//	private java.sql.Date processDate;		//결재 처리일자
//	private String lineBody;				//사유
//	private String pKinds;					//결재 처리종류 check(승인, 대기)
//	private String thumbnail;				//첨부파일
//	private String lineKinds;				//근무형태 chec(근무, 휴가, 출장, 외근)
//	private String deptCode;				//Fk 부서코드
//	private String spotCode;				//Fk 직위코드
//	
//	public ApproLineMemDTO() {}
//	
//	public ApproLineMemDTO(String lineBody, String pKinds, String thumbnail,
//			String lineKinds, String deptCode, String spotCode) {
//		super();
//		this.lineBody = lineBody;
//		this.pKinds = pKinds;
//		this.thumbnail = thumbnail;
//		this.lineKinds = lineKinds;
//		this.deptCode = deptCode;
//		this.spotCode = spotCode;
//	}
//	
//	public ApproLineMemDTO(int lineNo, int draftNo, Date processDate, String lineBody, String pKinds, String thumbnail,
//			String lineKinds, String deptCode, String spotCode) {
//		super();
//		this.lineNo = lineNo;
//		this.draftNo = draftNo;
//		this.processDate = processDate;
//		this.lineBody = lineBody;
//		this.pKinds = pKinds;
//		this.thumbnail = thumbnail;
//		this.lineKinds = lineKinds;
//		this.deptCode = deptCode;
//		this.spotCode = spotCode;
//	}
//	
//	public int getLineNo() {
//		return lineNo;
//	}
//	
//	public void setLineNo(int lineNo) {
//		this.lineNo = lineNo;
//	}
//	
//	public int getDraftNo() {
//		return draftNo;
//	}
//	
//	public void setDraftNo(int draftNo) {
//		this.draftNo = draftNo;
//	}
//	
//	public java.sql.Date getProcessDate() {
//		return processDate;
//	}
//	
//	public void setProcessDate(java.sql.Date processDate) {
//		this.processDate = processDate;
//	}
//	
//	public String getLineBody() {
//		return lineBody;
//	}
//	
//	public void setLineBody(String lineBody) {
//		this.lineBody = lineBody;
//	}
//	
//	public String getpKinds() {
//		return pKinds;
//	}
//	
//	public void setpKinds(String pKinds) {
//		this.pKinds = pKinds;
//	}
//	
//	public String getThumbnail() {
//		return thumbnail;
//	}
//	
//	public void setThumbnail(String thumbnail) {
//		this.thumbnail = thumbnail;
//	}
//	
//	public String getLineKinds() {
//		return lineKinds;
//	}
//	
//	public void setLineKinds(String lineKinds) {
//		this.lineKinds = lineKinds;
//	}
//	
//	public String getDeptCode() {
//		return deptCode;
//	}
//	
//	public void setDeptCode(String deptCode) {
//		this.deptCode = deptCode;
//	}
//	
//	public String getSpotCode() {
//		return spotCode;
//	}
//	
//	public void setSpotCode(String spotCode) {
//		this.spotCode = spotCode;
//	}
//	
//	@Override
//	public String toString() {
//		return "ApproLineMemDTO [lineNo=" + lineNo + ", draftNo=" + draftNo + ", processDate=" + processDate
//				+ ", lineBody=" + lineBody + ", pKinds=" + pKinds + ", thumbnail=" + thumbnail + ", lineKinds="
//				+ lineKinds + ", deptCode=" + deptCode + ", spotCode=" + spotCode + "]";
//	}
//	
//}
package com.sevenelite.billbo.approval.model.dto;

import java.sql.Date;

public class ApproLineMemDTO {
	
	/* 결재선사원(BB_LINE_MEM) */
	
	private int lineNo;						//Pk 결재선 순번
	private int draftNo;					//Fk 기안번호 
	private java.sql.Date processDate;		//결재 처리일자
	private String lineBody;				//사유
	private String pKinds;					//결재 처리종류 check(승인, 대기)
	private String thumbnail;				//첨부파일
	private String lineKinds;				//근무형태 chec(근무, 휴가, 출장, 외근)
	private String deptCode;				//Fk 부서코드
	private String spotCode;				//Fk 직위코드
	
	public ApproLineMemDTO() {}
	
	public ApproLineMemDTO(String lineBody, String pKinds, String thumbnail,
			String lineKinds, String deptCode, String spotCode) {
		super();
		this.lineBody = lineBody;
		this.pKinds = pKinds;
		this.thumbnail = thumbnail;
		this.lineKinds = lineKinds;
		this.deptCode = deptCode;
		this.spotCode = spotCode;
	}
	
	public ApproLineMemDTO(int lineNo, int draftNo, Date processDate, String lineBody, String pKinds, String thumbnail,
			String lineKinds, String deptCode, String spotCode) {
		super();
		this.lineNo = lineNo;
		this.draftNo = draftNo;
		this.processDate = processDate;
		this.lineBody = lineBody;
		this.pKinds = pKinds;
		this.thumbnail = thumbnail;
		this.lineKinds = lineKinds;
		this.deptCode = deptCode;
		this.spotCode = spotCode;
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

	public java.sql.Date getProcessDate() {
		return processDate;
	}

	public void setProcessDate(java.sql.Date processDate) {
		this.processDate = processDate;
	}

	public String getLineBody() {
		return lineBody;
	}

	public void setLineBody(String lineBody) {
		this.lineBody = lineBody;
	}

	public String getpKinds() {
		return pKinds;
	}

	public void setpKinds(String pKinds) {
		this.pKinds = pKinds;
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

	@Override
	public String toString() {
		return "ApproLineMemDTO [lineNo=" + lineNo + ", draftNo=" + draftNo + ", processDate=" + processDate
				+ ", lineBody=" + lineBody + ", pKinds=" + pKinds + ", thumbnail=" + thumbnail + ", lineKinds="
				+ lineKinds + ", deptCode=" + deptCode + ", spotCode=" + spotCode + "]";
	}
	
}
