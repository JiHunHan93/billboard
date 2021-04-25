package com.sevenelite.billbo.profile.model.dto;

import java.sql.Date;

public class FileAttachmentDTO {

	private String fileNo;
    private String attachmentPath;
    private String originalName;
    private String savedName;
    private String attachmentType;
    private String attchmentTypeNo;
    private java.sql.Date attachmentDate;
    private String memberNo;
		
    public FileAttachmentDTO() {}

	public FileAttachmentDTO(String fileNo, String attachmentPath, String originalName, String savedName,
			String attachmentType, String attchmentTypeNo, Date attachmentDate, String memberNo) {
		super();
		this.fileNo = fileNo;
		this.attachmentPath = attachmentPath;
		this.originalName = originalName;
		this.savedName = savedName;
		this.attachmentType = attachmentType;
		this.attchmentTypeNo = attchmentTypeNo;
		this.attachmentDate = attachmentDate;
		this.memberNo = memberNo;
	}

	@Override
	public String toString() {
		return "FileAttachmentDTO [fileNo=" + fileNo + ", attachmentPath=" + attachmentPath + ", originalName="
				+ originalName + ", savedName=" + savedName + ", attachmentType=" + attachmentType
				+ ", attchmentTypeNo=" + attchmentTypeNo + ", attachmentDate=" + attachmentDate + ", memberNo="
				+ memberNo + "]";
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

	public String getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}

}
