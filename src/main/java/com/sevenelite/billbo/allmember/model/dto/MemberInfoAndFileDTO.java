package com.sevenelite.billbo.allmember.model.dto;

public class MemberInfoAndFileDTO {
	
	private int memberNo; //멤버번호
	private String FileAttachment; //첨부파일
	private int infoNo; //인포 번호
	private int fileNo; //파일 번호
	private String fileAttachmentPath; //파일경로
	private String originalName; //원본이름
	private String savedPath; //저장경로
	private String attachmentType; //파일종류
	private String fileDate; //파일일자
	private int attachmenetTypeNo; //첨부파일번호
	
	
	public MemberInfoAndFileDTO() {}


	public MemberInfoAndFileDTO(int memberNo, String fileAttachment, int infoNo, int fileNo, String fileAttachmentPath,
			String originalName, String savedPath, String attachmentType, String fileDate, int attachmenetTypeNo) {
		super();
		this.memberNo = memberNo;
		FileAttachment = fileAttachment;
		this.infoNo = infoNo;
		this.fileNo = fileNo;
		this.fileAttachmentPath = fileAttachmentPath;
		this.originalName = originalName;
		this.savedPath = savedPath;
		this.attachmentType = attachmentType;
		this.fileDate = fileDate;
		this.attachmenetTypeNo = attachmenetTypeNo;
	}


	@Override
	public String toString() {
		return "MemberInfoAndFileDTO [memberNo=" + memberNo + ", FileAttachment=" + FileAttachment + ", infoNo="
				+ infoNo + ", fileNo=" + fileNo + ", fileAttachmentPath=" + fileAttachmentPath + ", originalName="
				+ originalName + ", savedPath=" + savedPath + ", attachmentType=" + attachmentType + ", fileDate="
				+ fileDate + ", attachmenetTypeNo=" + attachmenetTypeNo + "]";
	}


	public int getMemberNo() {
		return memberNo;
	}


	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}


	public String getFileAttachment() {
		return FileAttachment;
	}


	public void setFileAttachment(String fileAttachment) {
		FileAttachment = fileAttachment;
	}


	public int getInfoNo() {
		return infoNo;
	}


	public void setInfoNo(int infoNo) {
		this.infoNo = infoNo;
	}


	public int getFileNo() {
		return fileNo;
	}


	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}


	public String getFileAttachmentPath() {
		return fileAttachmentPath;
	}


	public void setFileAttachmentPath(String fileAttachmentPath) {
		this.fileAttachmentPath = fileAttachmentPath;
	}


	public String getOriginalName() {
		return originalName;
	}


	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}


	public String getSavedPath() {
		return savedPath;
	}


	public void setSavedPath(String savedPath) {
		this.savedPath = savedPath;
	}


	public String getAttachmentType() {
		return attachmentType;
	}


	public void setAttachmentType(String attachmentType) {
		this.attachmentType = attachmentType;
	}


	public String getFileDate() {
		return fileDate;
	}


	public void setFileDate(String fileDate) {
		this.fileDate = fileDate;
	}


	public int getAttachmenetTypeNo() {
		return attachmenetTypeNo;
	}


	public void setAttachmenetTypeNo(int attachmenetTypeNo) {
		this.attachmenetTypeNo = attachmenetTypeNo;
	}
	
	
	 

}
