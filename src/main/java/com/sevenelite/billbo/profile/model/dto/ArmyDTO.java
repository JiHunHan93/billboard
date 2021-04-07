package com.sevenelite.billbo.profile.model.dto;

public class ArmyDTO {
	
	private int no;
	private String branch;
	private String army_class;
	private String service_num;
	private String discharge;
	private int date;
	private int reason;
	private int member_no;
	
	public ArmyDTO() {}

	public ArmyDTO(int no, String branch, String army_class, String service_num, String discharge, int date, int reason,
			int member_no) {
		super();
		this.no = no;
		this.branch = branch;
		this.army_class = army_class;
		this.service_num = service_num;
		this.discharge = discharge;
		this.date = date;
		this.reason = reason;
		this.member_no = member_no;
	}

	@Override
	public String toString() {
		return "ArmyDTO [no=" + no + ", branch=" + branch + ", army_class=" + army_class + ", service_num="
				+ service_num + ", discharge=" + discharge + ", date=" + date + ", reason=" + reason + ", member_no="
				+ member_no + "]";
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getArmy_class() {
		return army_class;
	}

	public void setArmy_class(String army_class) {
		this.army_class = army_class;
	}

	public String getService_num() {
		return service_num;
	}

	public void setService_num(String service_num) {
		this.service_num = service_num;
	}

	public String getDischarge() {
		return discharge;
	}

	public void setDischarge(String discharge) {
		this.discharge = discharge;
	}

	public int getDate() {
		return date;
	}

	public void setDate(int date) {
		this.date = date;
	}

	public int getReason() {
		return reason;
	}

	public void setReason(int reason) {
		this.reason = reason;
	}

	public int getMember_no() {
		return member_no;
	}

	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}

		
}
