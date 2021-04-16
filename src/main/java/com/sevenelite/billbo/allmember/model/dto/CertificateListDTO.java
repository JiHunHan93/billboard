package com.sevenelite.billbo.allmember.model.dto;

import java.sql.Date;

public class CertificateListDTO {
	
	private int memberNo;
	private String memberName;
	private String emali;
	private String phone;
	private String licenseCode;
	private String licenseName;
	private java.sql.Date licenseDate;
	private String certificateCode;
	private java.sql.Date certificateStartDate;
	private java.sql.Date certificateEndDate;
	private String certificateName;
	
	public CertificateListDTO() {}

	public CertificateListDTO(int memberNo, String memberName, String emali, String phone, String licenseCode,
			String licenseName, Date licenseDate, String certificateCode, Date certificateStartDate,
			Date certificateEndDate, String certificateName) {
		super();
		this.memberNo = memberNo;
		this.memberName = memberName;
		this.emali = emali;
		this.phone = phone;
		this.licenseCode = licenseCode;
		this.licenseName = licenseName;
		this.licenseDate = licenseDate;
		this.certificateCode = certificateCode;
		this.certificateStartDate = certificateStartDate;
		this.certificateEndDate = certificateEndDate;
		this.certificateName = certificateName;
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

	public String getEmali() {
		return emali;
	}

	public void setEmali(String emali) {
		this.emali = emali;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getLicenseCode() {
		return licenseCode;
	}

	public void setLicenseCode(String licenseCode) {
		this.licenseCode = licenseCode;
	}

	public String getLicenseName() {
		return licenseName;
	}

	public void setLicenseName(String licenseName) {
		this.licenseName = licenseName;
	}

	public java.sql.Date getLicenseDate() {
		return licenseDate;
	}

	public void setLicenseDate(java.sql.Date licenseDate) {
		this.licenseDate = licenseDate;
	}

	public String getCertificateCode() {
		return certificateCode;
	}

	public void setCertificateCode(String certificateCode) {
		this.certificateCode = certificateCode;
	}

	public java.sql.Date getCertificateStartDate() {
		return certificateStartDate;
	}

	public void setCertificateStartDate(java.sql.Date certificateStartDate) {
		this.certificateStartDate = certificateStartDate;
	}

	public java.sql.Date getCertificateEndDate() {
		return certificateEndDate;
	}

	public void setCertificateEndDate(java.sql.Date certificateEndDate) {
		this.certificateEndDate = certificateEndDate;
	}

	public String getCertificateName() {
		return certificateName;
	}

	public void setCertificateName(String certificateName) {
		this.certificateName = certificateName;
	}

	@Override
	public String toString() {
		return "CertificateListDTO [memberNo=" + memberNo + ", memberName=" + memberName + ", emali=" + emali
				+ ", phone=" + phone + ", licenseCode=" + licenseCode + ", licenseName=" + licenseName
				+ ", licenseDate=" + licenseDate + ", certificateCode=" + certificateCode + ", certificateStartDate="
				+ certificateStartDate + ", certificateEndDate=" + certificateEndDate + ", certificateName="
				+ certificateName + "]";
	}
	
	

}
