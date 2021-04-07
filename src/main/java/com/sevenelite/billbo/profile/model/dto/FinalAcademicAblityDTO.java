package com.sevenelite.billbo.profile.model.dto;

import java.util.Date;

public class FinalAcademicAblityDTO {

		private int ablity_no;
		private String name;
		private String subject;
		private Date date;
		private String status;
		private int no;
		private String code;
		
		public FinalAcademicAblityDTO() {}
		
		public FinalAcademicAblityDTO(int ablity_no, String name, String subject, Date date, String status, int no,
				String code) {
			super();
			this.ablity_no = ablity_no;
			this.name = name;
			this.subject = subject;
			this.date = date;
			this.status = status;
			this.no = no;
			this.code = code;
		}
		@Override
		public String toString() {
			return "FinalAcademicAblityDTO [ablity_no=" + ablity_no + ", name=" + name + ", subject=" + subject
					+ ", date=" + date + ", status=" + status + ", no=" + no + ", code=" + code + "]";
		}

		public int getAblity_no() {
			return ablity_no;
		}

		public void setAblity_no(int ablity_no) {
			this.ablity_no = ablity_no;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getSubject() {
			return subject;
		}

		public void setSubject(String subject) {
			this.subject = subject;
		}

		public Date getDate() {
			return date;
		}

		public void setDate(Date date) {
			this.date = date;
		}

		public String getStatus() {
			return status;
		}

		public void setStatus(String status) {
			this.status = status;
		}

		public int getNo() {
			return no;
		}

		public void setNo(int no) {
			this.no = no;
		}

		public String getCode() {
			return code;
		}

		public void setCode(String code) {
			this.code = code;
		}

}
