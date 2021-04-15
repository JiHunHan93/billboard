package com.sevenelite.billbo.profile.model.dao;

import java.util.List;

import com.sevenelite.billbo.member.model.dto.MemBbDTO;
import com.sevenelite.billbo.member.model.dto.UserDetailsVO;
import com.sevenelite.billbo.profile.model.dto.ArmyDTO;
import com.sevenelite.billbo.profile.model.dto.CareerDTO;
import com.sevenelite.billbo.profile.model.dto.CertificateDTO;
import com.sevenelite.billbo.profile.model.dto.DeptDTO;
import com.sevenelite.billbo.profile.model.dto.FamilyDTO;
import com.sevenelite.billbo.profile.model.dto.FinalAcademicDTO;
import com.sevenelite.billbo.profile.model.dto.LicenseDTO;
import com.sevenelite.billbo.profile.model.dto.MemberInfoDTO;
import com.sevenelite.billbo.profile.model.dto.ModifyDeptDTO1;
import com.sevenelite.billbo.profile.model.dto.ModifySpotDTO;
import com.sevenelite.billbo.profile.model.dto.SpotDTO;
import com.sevenelite.billbo.rnp.model.dto.ModifyDeptDTO;

public interface ProfileMapper {

	



	ArmyDTO armyInfo();
	
	int armyInfo(ArmyDTO army);

	int memberInfo(MemberInfoDTO member);
	
	List<MemberInfoDTO> memberInfo();

	SpotDTO spot();
	int spot(SpotDTO spot);

	int dept(ModifyDeptDTO dept);
	//List<CareerDTO> career();
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

	
	

	
//	List<MemDTO> member_address();
//
//	List<MemDTO> member_enrollDate();

//	List<DeptDTO> member_name();
	List<MemBbDTO> member_info_phone();

	List<MemberInfoDTO> mainProfile();
 

	int memberInfoInsert(MemberInfoDTO memberInfoInsert);

	List<MemBbDTO> member_address();

	List<MemBbDTO> member_enrollDate();

	List<MemberInfoDTO> main();

	int member_info_no(MemberInfoDTO member_info_no);

	List<MemberInfoDTO> selectMemberInfo(int memberno);

	List<DeptDTO> selectMemberDept(int memberno);



	List<UserDetailsVO> selectUserDetail(int memberno);



	List<MemBbDTO> selectMemberDetail(int memberno);

	List<ModifyDeptDTO1> selectMemberName(int memberno);

	List<DeptDTO> member_name();

	int modifydept(ModifyDeptDTO1 dept);

	int modifyspot(ModifySpotDTO modifyspot);


	


	
}
