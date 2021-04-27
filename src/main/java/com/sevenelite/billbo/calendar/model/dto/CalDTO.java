package com.sevenelite.billbo.calendar.model.dto;

public class CalDTO {
	
	private int no;							// 일정 번호
	private String title;					// 일정 제목
	private String start;					// 일정 시작일
	private String end;						// 일정 종료일
	private boolean status;					// 일정 종일여부
	private int memberNo;					// 사번
	private String calType;					// 일정 분류
	private String location;				// 일정 이행 장소
	private String attendance;				// 일정 참여자
	private String body;					// 일정 내용
	private String deleteStatus;			// 일정 표시 여부
	private String code;					// 부서 코드
	
	public CalDTO() {}

	public CalDTO(int no, String title, String start, String end, boolean status, int memberNo, String calType,
			String location, String attendance, String body, String deleteStatus, String code) {
		super();
		this.no = no;
		this.title = title;
		this.start = start;
		this.end = end;
		this.status = status;
		this.memberNo = memberNo;
		this.calType = calType;
		this.location = location;
		this.attendance = attendance;
		this.body = body;
		this.deleteStatus = deleteStatus;
		this.code = code;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}

	public String getEnd() {
		return end;
	}

	public void setEnd(String end) {
		this.end = end;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getCalType() {
		return calType;
	}

	public void setCalType(String calType) {
		this.calType = calType;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getAttendance() {
		return attendance;
	}

	public void setAttendance(String attendance) {
		this.attendance = attendance;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	public String getDeleteStatus() {
		return deleteStatus;
	}

	public void setDeleteStatus(String deleteStatus) {
		this.deleteStatus = deleteStatus;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String deptCode) {
		this.code = deptCode;
	}

	@Override
	public String toString() {
		return "CalDTO [no=" + no + ", title=" + title + ", start=" + start + ", end=" + end + ", status=" + status
				+ ", memberNo=" + memberNo + ", calType=" + calType + ", location=" + location + ", attendance="
				+ attendance + ", body=" + body + ", deleteStatus=" + deleteStatus + ", code=" + code + "]";
	}

}
