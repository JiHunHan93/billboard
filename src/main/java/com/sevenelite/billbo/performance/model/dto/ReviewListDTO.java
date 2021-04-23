package com.sevenelite.billbo.performance.model.dto;

import java.sql.Date;

public class ReviewListDTO {
	
	private int reviewNo; //인사평가고유번호
	private int memberNo; //사번
	private int memberName;
	private int achOne;
	private int achTwo;
	private int achThree;
	private int abilOne;
	private int abilTwo;
	private int abilThree;
	private int abilFour;
	private int attOne;
	private int attTwo;
	private int attThree;
	private int reviewAvg; //인사평가 평균
	private java.sql.Date date; //평가일시
	private String reviewGrade; //인사평가 등급 (알파벳)
	
	public ReviewListDTO() {}

	public ReviewListDTO(int reviewNo, int memberNo, int memberName, int achOne, int achTwo, int achThree, int abilOne,
			int abilTwo, int abilThree, int abilFour, int attOne, int attTwo, int attThree, int reviewAvg, Date date,
			String reviewGrade) {
		super();
		this.reviewNo = reviewNo;
		this.memberNo = memberNo;
		this.memberName = memberName;
		this.achOne = achOne;
		this.achTwo = achTwo;
		this.achThree = achThree;
		this.abilOne = abilOne;
		this.abilTwo = abilTwo;
		this.abilThree = abilThree;
		this.abilFour = abilFour;
		this.attOne = attOne;
		this.attTwo = attTwo;
		this.attThree = attThree;
		this.reviewAvg = reviewAvg;
		this.date = date;
		this.reviewGrade = reviewGrade;
	}

	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getMemberName() {
		return memberName;
	}

	public void setMemberName(int memberName) {
		this.memberName = memberName;
	}

	public int getAchOne() {
		return achOne;
	}

	public void setAchOne(int achOne) {
		this.achOne = achOne;
	}

	public int getAchTwo() {
		return achTwo;
	}

	public void setAchTwo(int achTwo) {
		this.achTwo = achTwo;
	}

	public int getAchThree() {
		return achThree;
	}

	public void setAchThree(int achThree) {
		this.achThree = achThree;
	}

	public int getAbilOne() {
		return abilOne;
	}

	public void setAbilOne(int abilOne) {
		this.abilOne = abilOne;
	}

	public int getAbilTwo() {
		return abilTwo;
	}

	public void setAbilTwo(int abilTwo) {
		this.abilTwo = abilTwo;
	}

	public int getAbilThree() {
		return abilThree;
	}

	public void setAbilThree(int abilThree) {
		this.abilThree = abilThree;
	}

	public int getAbilFour() {
		return abilFour;
	}

	public void setAbilFour(int abilFour) {
		this.abilFour = abilFour;
	}

	public int getAttOne() {
		return attOne;
	}

	public void setAttOne(int attOne) {
		this.attOne = attOne;
	}

	public int getAttTwo() {
		return attTwo;
	}

	public void setAttTwo(int attTwo) {
		this.attTwo = attTwo;
	}

	public int getAttThree() {
		return attThree;
	}

	public void setAttThree(int attThree) {
		this.attThree = attThree;
	}

	public int getReviewAvg() {
		return reviewAvg;
	}

	public void setReviewAvg(int reviewAvg) {
		this.reviewAvg = reviewAvg;
	}

	public java.sql.Date getDate() {
		return date;
	}

	public void setDate(java.sql.Date date) {
		this.date = date;
	}

	public String getReviewGrade() {
		return reviewGrade;
	}

	public void setReviewGrade(String reviewGrade) {
		this.reviewGrade = reviewGrade;
	}

	@Override
	public String toString() {
		return "ReviewListDTO [reviewNo=" + reviewNo + ", memberNo=" + memberNo + ", memberName=" + memberName
				+ ", achOne=" + achOne + ", achTwo=" + achTwo + ", achThree=" + achThree + ", abilOne=" + abilOne
				+ ", abilTwo=" + abilTwo + ", abilThree=" + abilThree + ", abilFour=" + abilFour + ", attOne=" + attOne
				+ ", attTwo=" + attTwo + ", attThree=" + attThree + ", reviewAvg=" + reviewAvg + ", date=" + date
				+ ", reviewGrade=" + reviewGrade + "]";
	}

	
}
