package com.sevenelite.billbo.profile.model.dto;

import java.util.Date;

public class MemberInfoDTO {

	private int no;
	private Date date;
	private String address;
	private String account;
	private String name;
	private String account_no;
	private String fileattachment;
	private Date enroll_date;
	private int info_no;
	
	public MemberInfoDTO() {}

	public MemberInfoDTO(int no, Date date, String address, String account, String name, String account_no,
			String fileattachment, Date enroll_date, int info_no) {
		super();
		this.no = no;
		this.date = date;
		this.address = address;
		this.account = account;
		this.name = name;
		this.account_no = account_no;
		this.fileattachment = fileattachment;
		this.enroll_date = enroll_date;
		this.info_no = info_no;
	}

	@Override
	public String toString() {
		return "MemberInfoDTO [no=" + no + ", date=" + date + ", address=" + address + ", account=" + account
				+ ", name=" + name + ", account_no=" + account_no + ", fileattachment=" + fileattachment
				+ ", enroll_date=" + enroll_date + ", info_no=" + info_no + "]";
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAccount_no() {
		return account_no;
	}

	public void setAccount_no(String account_no) {
		this.account_no = account_no;
	}

	public String getFileattachment() {
		return fileattachment;
	}

	public void setFileattachment(String fileattachment) {
		this.fileattachment = fileattachment;
	}

	public Date getEnroll_date() {
		return enroll_date;
	}

	public void setEnroll_date(Date enroll_date) {
		this.enroll_date = enroll_date;
	}

	public int getInfo_no() {
		return info_no;
	}

	public void setInfo_no(int info_no) {
		this.info_no = info_no;
	}
	
}
