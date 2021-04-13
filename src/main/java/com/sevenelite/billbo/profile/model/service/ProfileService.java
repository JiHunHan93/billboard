package com.sevenelite.billbo.profile.model.service;

import java.util.List;

import com.sevenelite.billbo.member.model.dto.MemBbDTO;
import com.sevenelite.billbo.member.model.dto.MemDTO;
import com.sevenelite.billbo.profile.model.dto.ArmyDTO;
import com.sevenelite.billbo.profile.model.dto.BonusDTO;
import com.sevenelite.billbo.profile.model.dto.CareerDTO;
import com.sevenelite.billbo.profile.model.dto.CertificateDTO;
import com.sevenelite.billbo.profile.model.dto.DeptDTO;
import com.sevenelite.billbo.profile.model.dto.FamilyDTO;
import com.sevenelite.billbo.profile.model.dto.FinalAcademicDTO;
import com.sevenelite.billbo.profile.model.dto.LicenseDTO;
import com.sevenelite.billbo.profile.model.dto.MemberInfoDTO;
import com.sevenelite.billbo.profile.model.dto.SpotDTO;

public interface ProfileService {

	boolean armyInfo(ArmyDTO army);

	List<MemberInfoDTO> memberInfo();
//
//	void memberInfo(MemberInfoDTO member);

	boolean spot(SpotDTO spot);

	boolean dept(DeptDTO dept);

	//void career(CareerDTO career);

	boolean career(CareerDTO career);

	//void certificate(CertificateDTO certificate);
	boolean certificate(CertificateDTO certificate);

	boolean finalAcademic(FinalAcademicDTO finalAcademic);

	boolean family(FamilyDTO family);

	boolean license(LicenseDTO license);

	boolean member_info_no(MemDTO member_info_no);

//보류	boolean bonus(BonusDTO bonus);

	List<MemBbDTO> member_info_phone();
	
//	List<MemDTO> member_info_phone(int no);
	
	List<MemDTO> member_address();

	List<MemDTO> member_enrollDate();

	

	List<DeptDTO> member_name();

	List<MemberInfoDTO> mainProfile();


}
