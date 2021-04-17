package com.sevenelite.billbo.allmember.model.service;

import java.util.List;

import com.sevenelite.billbo.allmember.model.dto.CertificateListDTO;
import com.sevenelite.billbo.allmember.model.dto.MemberAndArmyDTO;
import com.sevenelite.billbo.allmember.model.dto.MemberAndCareerDTO;
import com.sevenelite.billbo.allmember.model.dto.MemberAndFamilyDTO;
import com.sevenelite.billbo.allmember.model.dto.MemberAndFinalDTO;
import com.sevenelite.billbo.allmember.model.dto.MemberAndMemberInfoAndDeptAndModifyDeptDTO;
import com.sevenelite.billbo.profile.model.dto.MemberInfoDTO;

public interface AllMemberService {

	List<MemberAndMemberInfoAndDeptAndModifyDeptDTO> selectAllEmployeeList();


	List<MemberAndMemberInfoAndDeptAndModifyDeptDTO> memberDetail(int no);

	List<MemberInfoDTO> selectBankInfo(int no);

	List<MemberAndArmyDTO> selectArmyInfo(int no);


	List<MemberAndFamilyDTO> selectFamilyInfo(int no); 


	List<CertificateListDTO> selectCertiInfo(int no);


	List<MemberAndFinalDTO> selectStudyInfo(int no);


	List<MemberAndCareerDTO> selectCarrerInfo(int no);



}
