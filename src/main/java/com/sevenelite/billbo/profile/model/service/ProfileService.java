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
	List<CareerDTO> career();
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


	boolean memberInfoInsert(MemberInfoDTO memberInfoInsert);
//보류	boolean bonus(BonusDTO bonus);

	List<MemBbDTO> member_info_phone();
	
//	List<MemDTO> member_info_phone(int no);
	
	List<MemBbDTO> member_address();

	List<MemBbDTO> member_enrollDate();

	

	List<DeptDTO> member_name();

	List<MemBbDTO> mainProfile();

	List<MemberInfoDTO> memberInfo(int no);

	List<MemberInfoDTO> main();

	boolean member_info_no(MemberInfoDTO member_info_no);

	List<MemberInfoDTO> selectMemberInfo(int memberno);

	List<DeptDTO> selectMemberDept(int memberno);


}
