package com.sevenelite.billbo.approval.model.dto;

import java.util.List;

public class multitudeLineMem {

	/* 선택된 결재선사원 */
	
	private List<ApproLineMemDTO> lineMem;
	
	public List<ApproLineMemDTO> getLineMem() {
		return lineMem;
	}
	
	public void setLineMem(List<ApproLineMemDTO> lineMem) {
		this.lineMem = lineMem;
	}
	
	
	
	
	/* 결재선사원(BB_LINE_MEM) */
	
//	private int lineNo;						//Pk 결재선 순번
//	private int draftNo;					//Fk 기안번호 
//	private java.sql.Date processDate;		//결재 처리일자
//	private String lineBody;				//사유
//	private String pKinds;					//결재 처리종류 check(승인, 대기)
//	private String thumbnail;				//첨부파일
//	private String lineKinds;				//근무형태 chec(근무, 휴가, 출장, 외근)
//	private String deptCode;				//Fk 부서코드
//	private String spotCode;				//Fk 직위코드
	
	
}
