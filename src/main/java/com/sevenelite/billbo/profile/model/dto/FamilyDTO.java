package com.sevenelite.billbo.profile.model.dto;

import java.util.Date;

public class FamilyDTO {

		private int info_no;
		private String name;
		private String relation;
		private String gender;
		private java.util.Date birthday;
		private String study;
		private String job;
		private int no;
		
		public FamilyDTO() {}

		public FamilyDTO(int info_no, String name, String relation, String gender, Date birthday, String study,
				String job, int no) {
			super();
			this.info_no = info_no;
			this.name = name;
			this.relation = relation;
			this.gender = gender;
			this.birthday = birthday;
			this.study = study;
			this.job = job;
			this.no = no;
		}

		@Override
		public String toString() {
			return "FamilyDTO [info_no=" + info_no + ", name=" + name + ", relation=" + relation + ", gender=" + gender
					+ ", birthday=" + birthday + ", study=" + study + ", job=" + job + ", no=" + no + "]";
		}

		public int getInfo_no() {
			return info_no;
		}

		public void setInfo_no(int info_no) {
			this.info_no = info_no;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getRelation() {
			return relation;
		}

		public void setRelation(String relation) {
			this.relation = relation;
		}

		public String getGender() {
			return gender;
		}

		public void setGender(String gender) {
			this.gender = gender;
		}

		public java.util.Date getBirthday() {
			return birthday;
		}

		public void setBirthday(java.sql.Date birthday) {
			this.birthday = birthday;
		}

		public String getStudy() {
			return study;
		}

		public void setStudy(String study) {
			this.study = study;
		}

		public String getJob() {
			return job;
		}

		public void setJob(String job) {
			this.job = job;
		}

		public int getNo() {
			return no;
		}

		public void setNo(int no) {
			this.no = no;
		}

	
		
}
