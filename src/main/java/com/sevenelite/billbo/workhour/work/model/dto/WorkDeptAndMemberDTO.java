package com.sevenelite.billbo.workhour.work.model.dto;

public class WorkDeptAndMemberDTO {
	
	private int no;
	private String date;
	private String commute;
	private String leave;
	private int MemberNo;
	private String type;
	private String MemberName;
	
	public WorkDeptAndMemberDTO() {}

	@Override
	public String toString() {
		return "WorkDeptAndMemberDTO [no=" + no + ", date=" + date + ", commute=" + commute + ", leave=" + leave
				+ ", MemberNo=" + MemberNo + ", type=" + type + ", MemberName=" + MemberName + "]";
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getCommute() {
		return commute;
	}

	public void setCommute(String commute) {
		this.commute = commute;
	}

	public String getLeave() {
		return leave;
	}

	public void setLeave(String leave) {
		this.leave = leave;
	}

	public int getMemberNo() {
		return MemberNo;
	}

	public void setMemberNo(int memberNo) {
		MemberNo = memberNo;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getMemberName() {
		return MemberName;
	}

	public void setMemberName(String memberName) {
		MemberName = memberName;
	}

	public WorkDeptAndMemberDTO(int no, String date, String commute, String leave, int memberNo, String type,
			String memberName) {
		super();
		this.no = no;
		this.date = date;
		this.commute = commute;
		this.leave = leave;
		MemberNo = memberNo;
		this.type = type;
		MemberName = memberName;
	}
}
