package com.sevenelite.billbo.allmember.model.dto;

import java.sql.Date;

public class MemberAndCareerDTO{
	
	private int careerNo;
	private java.sql.Date careerStart;
	private java.sql.Date careerEnd;
	private String carrerPosition;
	private int memberNo;
	private String memberName;

	public MemberAndCareerDTO() {}

	public MemberAndCareerDTO(int careerNo, Date careerStart, Date careerEnd, String carrerPosition, int memberNo,
			String memberName) {
		super();
		this.careerNo = careerNo;
		this.careerStart = careerStart;
		this.careerEnd = careerEnd;
		this.carrerPosition = carrerPosition;
		this.memberNo = memberNo;
		this.memberName = memberName;
	}

	public int getCareerNo() {
		return careerNo;
	}

	public void setCareerNo(int careerNo) {
		this.careerNo = careerNo;
	}

	public java.sql.Date getCareerStart() {
		return careerStart;
	}

	public void setCareerStart(java.sql.Date careerStart) {
		this.careerStart = careerStart;
	}

	public java.sql.Date getCareerEnd() {
		return careerEnd;
	}

	public void setCareerEnd(java.sql.Date careerEnd) {
		this.careerEnd = careerEnd;
	}

	public String getCarrerPosition() {
		return carrerPosition;
	}

	public void setCarrerPosition(String carrerPosition) {
		this.carrerPosition = carrerPosition;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	@Override
	public String toString() {
		return "MemberAndCareerDTO [careerNo=" + careerNo + ", careerStart=" + careerStart + ", careerEnd=" + careerEnd
				+ ", carrerPosition=" + carrerPosition + ", memberNo=" + memberNo + ", memberName=" + memberName + "]";
	}

	
}
