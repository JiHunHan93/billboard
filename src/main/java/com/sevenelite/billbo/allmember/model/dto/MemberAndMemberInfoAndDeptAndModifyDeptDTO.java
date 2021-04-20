package com.sevenelite.billbo.allmember.model.dto;

import java.sql.Date;

public class MemberAndMemberInfoAndDeptAndModifyDeptDTO {

	private int no;
	private String memberName;
	private String memberpwd;
	private String email;
	private String phone;
    private java.sql.Date enrollDate;
    private String deptCode;
    private String deptName;
    private String address;
    
    private String fileNo;
    private String attachmentPath;
    private String originalName;
    private String savedName;
    private String attachmentType;
    private String attchmentTypeNo;
    private java.sql.Date attachmentDate;
    

    public MemberAndMemberInfoAndDeptAndModifyDeptDTO() {}

	public MemberAndMemberInfoAndDeptAndModifyDeptDTO(int no, String memberName, String memberpwd, String email,
			String phone, Date enrollDate, String deptCode, String deptName, String address, String fileNo,
			String attachmentPath, String originalName, String savedName, String attachmentType, String attchmentTypeNo,
			Date attachmentDate) {
		super();
		this.no = no;
		this.memberName = memberName;
		this.memberpwd = memberpwd;
		this.email = email;
		this.phone = phone;
		this.enrollDate = enrollDate;
		this.deptCode = deptCode;
		this.deptName = deptName;
		this.address = address;
		this.fileNo = fileNo;
		this.attachmentPath = attachmentPath;
		this.originalName = originalName;
		this.savedName = savedName;
		this.attachmentType = attachmentType;
		this.attchmentTypeNo = attchmentTypeNo;
		this.attachmentDate = attachmentDate;
	}

	@Override
	public String toString() {
		return "MemberAndMemberInfoAndDeptAndModifyDeptDTO [no=" + no + ", memberName=" + memberName + ", memberpwd="
				+ memberpwd + ", email=" + email + ", phone=" + phone + ", enrollDate=" + enrollDate + ", deptCode="
				+ deptCode + ", deptName=" + deptName + ", address=" + address + ", fileNo=" + fileNo
				+ ", attachmentPath=" + attachmentPath + ", originalName=" + originalName + ", savedName=" + savedName
				+ ", attachmentType=" + attachmentType + ", attchmentTypeNo=" + attchmentTypeNo + ", attachmentDate="
				+ attachmentDate + "]";
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberpwd() {
		return memberpwd;
	}

	public void setMemberpwd(String memberpwd) {
		this.memberpwd = memberpwd;
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

	public java.sql.Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(java.sql.Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getDeptCode() {
		return deptCode;
	}

	public void setDeptCode(String deptCode) {
		this.deptCode = deptCode;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getFileNo() {
		return fileNo;
	}

	public void setFileNo(String fileNo) {
		this.fileNo = fileNo;
	}

	public String getAttachmentPath() {
		return attachmentPath;
	}

	public void setAttachmentPath(String attachmentPath) {
		this.attachmentPath = attachmentPath;
	}

	public String getOriginalName() {
		return originalName;
	}

	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}

	public String getSavedName() {
		return savedName;
	}

	public void setSavedName(String savedName) {
		this.savedName = savedName;
	}

	public String getAttachmentType() {
		return attachmentType;
	}

	public void setAttachmentType(String attachmentType) {
		this.attachmentType = attachmentType;
	}

	public String getAttchmentTypeNo() {
		return attchmentTypeNo;
	}

	public void setAttchmentTypeNo(String attchmentTypeNo) {
		this.attchmentTypeNo = attchmentTypeNo;
	}

	public java.sql.Date getAttachmentDate() {
		return attachmentDate;
	}

	public void setAttachmentDate(java.sql.Date attachmentDate) {
		this.attachmentDate = attachmentDate;
	}

	
}
