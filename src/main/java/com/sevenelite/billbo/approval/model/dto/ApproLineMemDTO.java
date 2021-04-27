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
	
	/* View에서 선택한 결재라인 */
	
	private int memberNoLine;
	private String memberNameLine;
	private String deptCodeLine;
	private String deptNameLine;
	private String spotCodeLine;
	private String spotNameLien;
	
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
	
	public ApproLineMemDTO(int lineNo, Date processDate, String pKinds) {
		super();
		this.lineNo = lineNo;
		this.processDate = processDate;
		this.pKinds = pKinds;
	}
	
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

	public ApproLineMemDTO(int memberNoLine, String memberNameLine, String deptCodeLine, String deptNameLine,
			String spotCodeLine, String spotNameLien, int lineNo, int draftNo, Date processDate, String lineBody,
			String pKinds, String thumbnail, String lineKinds, String deptCode, String spotCode) {
		super();
		this.memberNoLine = memberNoLine;
		this.memberNameLine = memberNameLine;
		this.deptCodeLine = deptCodeLine;
		this.deptNameLine = deptNameLine;
		this.spotCodeLine = spotCodeLine;
		this.spotNameLien = spotNameLien;
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

	public int getMemberNoLine() {
		return memberNoLine;
	}

	public void setMemberNoLine(int memberNoLine) {
		this.memberNoLine = memberNoLine;
	}

	public String getMemberNameLine() {
		return memberNameLine;
	}

	public void setMemberNameLine(String memberNameLine) {
		this.memberNameLine = memberNameLine;
	}

	public String getDeptCodeLine() {
		return deptCodeLine;
	}

	public void setDeptCodeLine(String deptCodeLine) {
		this.deptCodeLine = deptCodeLine;
	}

	public String getDeptNameLine() {
		return deptNameLine;
	}

	public void setDeptNameLine(String deptNameLine) {
		this.deptNameLine = deptNameLine;
	}

	public String getSpotCodeLine() {
		return spotCodeLine;
	}

	public void setSpotCodeLine(String spotCodeLine) {
		this.spotCodeLine = spotCodeLine;
	}

	public String getSpotNameLien() {
		return spotNameLien;
	}

	public void setSpotNameLien(String spotNameLien) {
		this.spotNameLien = spotNameLien;
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
		return "ApproLineMemDTO [memberNoLine=" + memberNoLine + ", memberNameLine=" + memberNameLine
				+ ", deptCodeLine=" + deptCodeLine + ", deptNameLine=" + deptNameLine + ", spotCodeLine=" + spotCodeLine
				+ ", spotNameLien=" + spotNameLien + ", lineNo=" + lineNo + ", draftNo=" + draftNo + ", processDate="
				+ processDate + ", lineBody=" + lineBody + ", pKinds=" + pKinds + ", thumbnail=" + thumbnail
				+ ", lineKinds=" + lineKinds + ", deptCode=" + deptCode + ", spotCode=" + spotCode + "]";
	}
	
}
