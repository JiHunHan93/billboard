package com.sevenelite.billbo.profile.model.dto;

import java.sql.Date;

public class MemberInfoDTO {

	private int info_no;
	private String address;
	private String account_no;
	private String account_bank;
	private String account_host;
	private String fileattachment;
	private java.sql.Date enroll_date;
	private String work_contract;
	private int member_no;
	
	public MemberInfoDTO() {}

	public MemberInfoDTO(int info_no, String address, String account_no, String account_bank, String account_host,
			String fileattachment, Date enroll_date, String work_contract, int member_no) {
		super();
		this.info_no = info_no;
		this.address = address;
		this.account_no = account_no;
		this.account_bank = account_bank;
		this.account_host = account_host;
		this.fileattachment = fileattachment;
		this.enroll_date = enroll_date;
		this.work_contract = work_contract;
		this.member_no = member_no;
	}

	@Override
	public String toString() {
		return "MemberInfoDTO [info_no=" + info_no + ", address=" + address + ", account_no=" + account_no
				+ ", account_bank=" + account_bank + ", account_host=" + account_host + ", fileattachment="
				+ fileattachment + ", enroll_date=" + enroll_date + ", work_contract=" + work_contract + ", member_no="
				+ member_no + "]";
	}

	public int getInfo_no() {
		return info_no;
	}

	public void setInfo_no(int info_no) {
		this.info_no = info_no;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAccount_no() {
		return account_no;
	}

	public void setAccount_no(String account_no) {
		this.account_no = account_no;
	}

	public String getAccount_bank() {
		return account_bank;
	}

	public void setAccount_bank(String account_bank) {
		this.account_bank = account_bank;
	}

	public String getAccount_host() {
		return account_host;
	}

	public void setAccount_host(String account_host) {
		this.account_host = account_host;
	}

	public String getFileattachment() {
		return fileattachment;
	}

	public void setFileattachment(String fileattachment) {
		this.fileattachment = fileattachment;
	}

	public java.sql.Date getEnroll_date() {
		return enroll_date;
	}

	public void setEnroll_date(java.sql.Date enroll_date) {
		this.enroll_date = enroll_date;
	}

	public String getWork_contract() {
		return work_contract;
	}

	public void setWork_contract(String work_contract) {
		this.work_contract = work_contract;
	}

	public int getMember_no() {
		return member_no;
	}

	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}

	

	
}
