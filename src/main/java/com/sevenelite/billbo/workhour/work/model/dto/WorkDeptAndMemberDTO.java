package com.sevenelite.billbo.workhour.work.model.dto;

public class WorkDeptAndMemberDTO {
	
	private int no;
	private String date;
	private String commute;
	private String leave;
	private int memNo;
	private String type;
	private String name;
	private WorkTypeDTO workType;
	
	public WorkDeptAndMemberDTO() {}

	public WorkDeptAndMemberDTO(int no, String date, String commute, String leave, int memNo, String type, String name,
			WorkTypeDTO workType) {
		super();
		this.no = no;
		this.date = date;
		this.commute = commute;
		this.leave = leave;
		this.memNo = memNo;
		this.type = type;
		this.name = name;
		this.workType = workType;
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

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public WorkTypeDTO getWorkType() {
		return workType;
	}

	public void setWorkType(WorkTypeDTO workType) {
		this.workType = workType;
	}

	@Override
	public String toString() {
		return "WorkDeptAndMemberDTO [no=" + no + ", date=" + date + ", commute=" + commute + ", leave=" + leave
				+ ", memNo=" + memNo + ", type=" + type + ", name=" + name + ", workType=" + workType + "]";
	}
	
	
	

		}
