package com.sevenelite.billbo.profile.model.dto;

import java.sql.Date;

public class CertificateDTO {

		private int no;
		private Date start_date;
		private Date end_date;
		private int member_no;
		private String certificate_code;
		
		public CertificateDTO() {}

		public CertificateDTO(int no, Date start_date, Date end_date, int member_no, String certificate_code) {
			super();
			this.no = no;
			this.start_date = start_date;
			this.end_date = end_date;
			this.member_no = member_no;
			this.certificate_code = certificate_code;
		}

		@Override
		public String toString() {
			return "CertificateDTO [no=" + no + ", start_date=" + start_date + ", end_date=" + end_date + ", member_no="
					+ member_no + ", certificate_code=" + certificate_code + "]";
		}

		public int getNo() {
			return no;
		}

		public void setNo(int no) {
			this.no = no;
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

		public int getMember_no() {
			return member_no;
		}

		public void setMember_no(int member_no) {
			this.member_no = member_no;
		}

		public String getCertificate_code() {
			return certificate_code;
		}

		public void setCertificate_code(String certificate_code) {
			this.certificate_code = certificate_code;
		}

			
}
