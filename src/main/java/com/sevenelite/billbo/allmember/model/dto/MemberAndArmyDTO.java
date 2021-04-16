package com.sevenelite.billbo.allmember.model.dto;

import java.util.Date;

public class MemberAndArmyDTO {

	private int memberNo;
	private String name;
	private String armyBranch;
	private String armyClass;
	private String armyDischarge;
	private java.sql.Date stratDate;
	private java.sql.Date endDate;
	private String armyReason;
	
	public MemberAndArmyDTO() {}

	public MemberAndArmyDTO(int memberNo, String name, String armyBranch, String armyClass, String armyDischarge,
			java.sql.Date stratDate, java.sql.Date endDate, String armyReason) {
		super();
		this.memberNo = memberNo;
		this.name = name;
		this.armyBranch = armyBranch;
		this.armyClass = armyClass;
		this.armyDischarge = armyDischarge;
		this.stratDate = stratDate;
		this.endDate = endDate;
		this.armyReason = armyReason;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getArmyBranch() {
		return armyBranch;
	}

	public void setArmyBranch(String armyBranch) {
		this.armyBranch = armyBranch;
	}

	public String getArmyClass() {
		return armyClass;
	}

	public void setArmyClass(String armyClass) {
		this.armyClass = armyClass;
	}

	public String getArmyDischarge() {
		return armyDischarge;
	}

	public void setArmyDischarge(String armyDischarge) {
		this.armyDischarge = armyDischarge;
	}

	public java.sql.Date getStratDate() {
		return stratDate;
	}

	public void setStratDate(java.sql.Date stratDate) {
		this.stratDate = stratDate;
	}

	public java.sql.Date getEndDate() {
		return endDate;
	}

	public void setEndDate(java.sql.Date endDate) {
		this.endDate = endDate;
	}

	public String getArmyReason() {
		return armyReason;
	}

	public void setArmyReason(String armyReason) {
		this.armyReason = armyReason;
	}

	@Override
	public String toString() {
		return "MemberAndArmyDTO [memberNo=" + memberNo + ", name=" + name + ", armyBranch=" + armyBranch
				+ ", armyClass=" + armyClass + ", armyDischarge=" + armyDischarge + ", stratDate=" + stratDate
				+ ", endDate=" + endDate + ", armyReason=" + armyReason + "]";
	}


	
	
}
