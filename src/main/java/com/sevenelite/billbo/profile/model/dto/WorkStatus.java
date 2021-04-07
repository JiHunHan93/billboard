package com.sevenelite.billbo.profile.model.dto;

import java.util.Date;

public class WorkStatus {

		private Date workdate;
		private Date commute;
		private Date leave_work;
		private int no;
		private String code;
		
		public WorkStatus() {}

		public WorkStatus(Date workdate, Date commute, Date leave_work, int no, String code) {
			super();
			this.workdate = workdate;
			this.commute = commute;
			this.leave_work = leave_work;
			this.no = no;
			this.code = code;
		}

		@Override
		public String toString() {
			return "WorkStatus [workdate=" + workdate + ", commute=" + commute + ", leave_work=" + leave_work + ", no="
					+ no + ", code=" + code + "]";
		}

		public Date getWorkdate() {
			return workdate;
		}

		public void setWorkdate(Date workdate) {
			this.workdate = workdate;
		}

		public Date getCommute() {
			return commute;
		}

		public void setCommute(Date commute) {
			this.commute = commute;
		}

		public Date getLeave_work() {
			return leave_work;
		}

		public void setLeave_work(Date leave_work) {
			this.leave_work = leave_work;
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
