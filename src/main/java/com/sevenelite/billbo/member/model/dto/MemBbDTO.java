package com.sevenelite.billbo.member.model.dto;

public class MemBbDTO {
	
	/* 회원 테이블 */
	
	private int no;
	private String name;
	private String pwd;
	private String email;
	private String phone;
	
	public MemBbDTO() {}
	
	public MemBbDTO(int no, String name, String pwd, String email, String phone) {
		super();
		this.no = no;
		this.name = name;
		this.pwd = pwd;
		this.email = email;
		this.phone = phone;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "MemBbDTO [no=" + no + ", name=" + name + ", pwd=" + pwd + ", email=" + email + ", phone=" + phone + "]";
	}
	
}
