package com.sevenelite.billbo.approval.model.dto;

import java.util.List;

import com.sevenelite.billbo.member.model.dto.MemBbDTO;

public class MemListLine {
	
	/* 모든 회원 정보 */
	
	private int memberNoLine;
	private String memberNameLine;
	private String deptCodeLine;
	private String deptNameLine;
	private String spotCodeLine;
	private String spotNameLien;
	
	public MemListLine() {}

	public MemListLine(int memberNoLine, String memberNameLine, String deptCodeLine, String deptNameLine,
			String spotCodeLine, String spotNameLien) {
		super();
		this.memberNoLine = memberNoLine;
		this.memberNameLine = memberNameLine;
		this.deptCodeLine = deptCodeLine;
		this.deptNameLine = deptNameLine;
		this.spotCodeLine = spotCodeLine;
		this.spotNameLien = spotNameLien;
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

	@Override
	public String toString() {
		return "MemListLine [memberNoLine=" + memberNoLine + ", memberNameLine=" + memberNameLine + ", deptCodeLine="
				+ deptCodeLine + ", deptNameLine=" + deptNameLine + ", spotCodeLine=" + spotCodeLine + ", spotNameLien="
				+ spotNameLien + "]";
	}
	
}
