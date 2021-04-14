package com.sevenelite.billbo.approval.model.dto;

import java.sql.Date;

public class FormVacationDTO {
	
	private int no;						//연차신청서번호
	private String annualType;			//연차종류
	private java.sql.Date startDate;	//시작일
	private java.sql.Date endDate;		//종료일
	private String halfDayPoint;		//반차시점
	private int annualCount;			//사용연차
	private String annualReason;		//연차사유
	private int paymentNo;				//결재양식번호
	private int memberno;				//사번
	
	public FormVacationDTO() {}

	public FormVacationDTO(int no, String annualType, Date startDate, Date endDate, String halfDayPoint,
			int annualCount, String annualReason, int paymentNo, int memberno) {
		super();
		this.no = no;
		this.annualType = annualType;
		this.startDate = startDate;
		this.endDate = endDate;
		this.halfDayPoint = halfDayPoint;
		this.annualCount = annualCount;
		this.annualReason = annualReason;
		this.paymentNo = paymentNo;
		this.memberno = memberno;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getAnnualType() {
		return annualType;
	}

	public void setAnnualType(String annualType) {
		this.annualType = annualType;
	}

	public java.sql.Date getStartDate() {
		return startDate;
	}

	public void setStartDate(java.sql.Date startDate) {
		this.startDate = startDate;
	}

	public java.sql.Date getEndDate() {
		return endDate;
	}

	public void setEndDate(java.sql.Date endDate) {
		this.endDate = endDate;
	}

	public String getHalfDayPoint() {
		return halfDayPoint;
	}

	public void setHalfDayPoint(String halfDayPoint) {
		this.halfDayPoint = halfDayPoint;
	}

	public int getAnnualCount() {
		return annualCount;
	}

	public void setAnnualCount(int annualCount) {
		this.annualCount = annualCount;
	}

	public String getAnnualReason() {
		return annualReason;
	}

	public void setAnnualReason(String annualReason) {
		this.annualReason = annualReason;
	}

	public int getPaymentNo() {
		return paymentNo;
	}

	public void setPaymentNo(int paymentNo) {
		this.paymentNo = paymentNo;
	}

	public int getMemberno() {
		return memberno;
	}

	public void setMemberno(int memberno) {
		this.memberno = memberno;
	}

	@Override
	public String toString() {
		return "FormVacationDTO [no=" + no + ", annualType=" + annualType + ", startDate=" + startDate + ", endDate="
				+ endDate + ", halfDayPoint=" + halfDayPoint + ", annualCount=" + annualCount + ", annualReason="
				+ annualReason + ", paymentNo=" + paymentNo + ", memberno=" + memberno + "]";
	}
	
}
