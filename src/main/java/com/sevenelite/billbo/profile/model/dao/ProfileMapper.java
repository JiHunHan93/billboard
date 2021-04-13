package com.sevenelite.billbo.profile.model.dao;

import java.util.List;

import com.sevenelite.billbo.member.model.dto.MemBbDTO;
import com.sevenelite.billbo.member.model.dto.MemDTO;
import com.sevenelite.billbo.profile.model.dto.ArmyDTO;
import com.sevenelite.billbo.profile.model.dto.CareerDTO;
import com.sevenelite.billbo.profile.model.dto.CertificateDTO;
import com.sevenelite.billbo.profile.model.dto.DeptDTO;
import com.sevenelite.billbo.profile.model.dto.FamilyDTO;
import com.sevenelite.billbo.profile.model.dto.FinalAcademicDTO;
import com.sevenelite.billbo.profile.model.dto.LicenseDTO;
import com.sevenelite.billbo.profile.model.dto.MemberInfoDTO;
import com.sevenelite.billbo.profile.model.dto.SpotDTO;

public interface ProfileMapper {

	

	ArmyDTO armyInfo();
	
	int armyInfo(ArmyDTO army);

	int memberInfo(MemberInfoDTO member);
	
	MemberInfoDTO memberInfo();

	SpotDTO spot();
	int spot(SpotDTO spot);

	int dept(DeptDTO dept);
	CareerDTO career();
	int career(CareerDTO career);
//보류	
//	BonusDTO bonus();
//	int bonus(BonusDTO bonus);
//	
	CertificateDTO certificate();
	int certificate(CertificateDTO certificate);
	
	FinalAcademicDTO finalAcademic();
	int finalAcademic(FinalAcademicDTO finalAcademic);

	FamilyDTO family();
	int family(FamilyDTO family);
	
	LicenseDTO license();
	int license(LicenseDTO license);

	MemDTO member_info_no();
	int member_info_no(MemDTO member_info_no);

	
//	List<MemDTO> member_info_phone(int no);
	
	List<MemDTO> member_address();

	List<MemDTO> member_enrollDate();

	List<DeptDTO> member_name();

	List<MemBbDTO> member_info_phone();

	List<MemberInfoDTO> mainProfile();

	


	
}
