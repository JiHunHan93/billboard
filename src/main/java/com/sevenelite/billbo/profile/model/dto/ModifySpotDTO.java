package com.sevenelite.billbo.profile.model.dto;

import java.sql.Date;

public class ModifySpotDTO {

		private int spot_no;
		private Date spot_date;
		private String spot_code;
		private int member_no;
		
		public ModifySpotDTO() {}

		public ModifySpotDTO(int spot_no, Date spot_date, String spot_code, int member_no) {
			super();
			this.spot_no = spot_no;
			this.spot_date = spot_date;
			this.spot_code = spot_code;
			this.member_no = member_no;
		}

		@Override
		public String toString() {
			return "ModifySpotDTO [spot_no=" + spot_no + ", spot_date=" + spot_date + ", spot_code=" + spot_code
					+ ", member_no=" + member_no + "]";
		}

		public int getSpot_no() {
			return spot_no;
		}

		public void setSpot_no(int spot_no) {
			this.spot_no = spot_no;
		}

		public Date getSpot_date() {
			return spot_date;
		}

		public void setSpot_date(Date spot_date) {
			this.spot_date = spot_date;
		}

		public String getSpot_code() {
			return spot_code;
		}

		public void setSpot_code(String spot_code) {
			this.spot_code = spot_code;
		}

		public int getMember_no() {
			return member_no;
		}

		public void setMember_no(int member_no) {
			this.member_no = member_no;
		}
		
		
		
}
