package com.sevenelite.billbo.profile.model.dto;

import java.util.Date;

public class WorkScheduleDTO {

		private int no;
		private int member_no;
		private String name;
		private String type;
		private Date start_date;
		private Date end_date;
		private String location;
		private String attendence_name;
		private String info;
		private String status;
		private String code;
		
		public WorkScheduleDTO() {}

		public WorkScheduleDTO(int no, int member_no, String name, String type, Date start_date, Date end_date,
				String location, String attendence_name, String info, String status, String code) {
			super();
			this.no = no;
			this.member_no = member_no;
			this.name = name;
			this.type = type;
			this.start_date = start_date;
			this.end_date = end_date;
			this.location = location;
			this.attendence_name = attendence_name;
			this.info = info;
			this.status = status;
			this.code = code;
		}

		@Override
		public String toString() {
			return "WorkScheduleDTO [no=" + no + ", member_no=" + member_no + ", name=" + name + ", type=" + type
					+ ", start_date=" + start_date + ", end_date=" + end_date + ", location=" + location
					+ ", attendence_name=" + attendence_name + ", info=" + info + ", status=" + status + ", code="
					+ code + "]";
		}

		public int getNo() {
			return no;
		}

		public void setNo(int no) {
			this.no = no;
		}

		public int getMember_no() {
			return member_no;
		}

		public void setMember_no(int member_no) {
			this.member_no = member_no;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getType() {
			return type;
		}

		public void setType(String type) {
			this.type = type;
		}

		public Date getStart_date() {
			return start_date;
		}

		public void setStart_date(Date start_date) {
			this.start_date = start_date;
		}

		public Date getEnd_date() {
			return end_date;
		}

		public void setEnd_date(Date end_date) {
			this.end_date = end_date;
		}

		public String getLocation() {
			return location;
		}

		public void setLocation(String location) {
			this.location = location;
		}

		public String getAttendence_name() {
			return attendence_name;
		}

		public void setAttendence_name(String attendence_name) {
			this.attendence_name = attendence_name;
		}

		public String getInfo() {
			return info;
		}

		public void setInfo(String info) {
			this.info = info;
		}

		public String getStatus() {
			return status;
		}

		public void setStatus(String status) {
			this.status = status;
		}

		public String getCode() {
			return code;
		}

		public void setCode(String code) {
			this.code = code;
		}
		
}
