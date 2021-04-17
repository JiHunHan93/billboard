package com.sevenelite.billbo.allmember.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sevenelite.billbo.allmember.model.dao.AllMemberMapper;
import com.sevenelite.billbo.allmember.model.dto.CertificateListDTO;
import com.sevenelite.billbo.allmember.model.dto.MemberAndArmyDTO;
import com.sevenelite.billbo.allmember.model.dto.MemberAndCareerDTO;
import com.sevenelite.billbo.allmember.model.dto.MemberAndFamilyDTO;
import com.sevenelite.billbo.allmember.model.dto.MemberAndFinalDTO;
import com.sevenelite.billbo.allmember.model.dto.MemberAndMemberInfoAndDeptAndModifyDeptDTO;
import com.sevenelite.billbo.profile.model.dto.MemberInfoDTO;

@Service("allMemberService")
public class AllMemberServiceImpl implements AllMemberService {

	private AllMemberMapper allMemberMapper;

	@Autowired
	public AllMemberServiceImpl(AllMemberMapper allMemberMapper) {
		this.allMemberMapper = allMemberMapper;
	}

	@Override
	public List<MemberAndMemberInfoAndDeptAndModifyDeptDTO> selectAllEmployeeList() {
		// 전사조회
		return allMemberMapper.selectAllEmployeeList();
	}

	@Override
	public List<MemberAndMemberInfoAndDeptAndModifyDeptDTO> memberDetail(int no) {
		// 해당 사번 디테일 뷰 이동
		return allMemberMapper.detailEmployeeList(no);
	}

	@Override
	public List<MemberInfoDTO> selectBankInfo(int no) {
		// 해당 사번 은행 정보 조회
		return allMemberMapper.selectBankInfo(no);
	}

	@Override
	public List<MemberAndArmyDTO> selectArmyInfo(int no) {
		// 해당 사번 병역 정보 조회
		return allMemberMapper.selectArmyInfo(no);
	}


	@Override public List<MemberAndFamilyDTO> selectFamilyInfo(int no) 
	{ // 해당 사번가족정보 조회
		return allMemberMapper.selectFamilyInfo(no); 

	}

	@Override public List<CertificateListDTO> selectCertiInfo(int no) {
		// 해당사번 자격증 조회 
		return allMemberMapper.selectCertiInfo(no); 
	}

	@Override
	public List<MemberAndFinalDTO> selectStudyInfo(int no) {
		// 해당사번 최종학력정보 조회
		return allMemberMapper.selectStudyInfo(no);
	}

	@Override
	public List<MemberAndCareerDTO> selectCarrerInfo(int no) {
		// 해당 사번 경력 조회
		return allMemberMapper.selectCarrerInfo(no);
	}


}
