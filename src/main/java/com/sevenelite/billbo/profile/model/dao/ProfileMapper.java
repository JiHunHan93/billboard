package com.sevenelite.billbo.profile.model.dao;

import java.util.List;

import com.sevenelite.billbo.member.model.dto.MemBbDTO;
import com.sevenelite.billbo.member.model.dto.UserDetailsVO;
import com.sevenelite.billbo.profile.model.dto.ArmyDTO;
import com.sevenelite.billbo.profile.model.dto.BonusDTO;
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
	/*spotDTO*/
	SpotDTO spot();
	int spot(SpotDTO spot);
	/*modifyDTO*/
	int dept(ModifyDeptDTO dept);
	
	/*finalAcademicDTO*/
	FinalAcademicDTO finalAcademic();
	List<FinalAcademicDTO> academic(int memberno);
	int finalAcademic(FinalAcademicDTO finalAcademic);

	
	

	
	/*MemBbDTO*/
	List<MemBbDTO> member_info_phone();

	List<MemBbDTO> member_address();

	List<MemBbDTO> member_enrollDate();

	List<MemBbDTO> selectMemberDetail(int memberno);

	
	/*dept*/
	List<DeptDTO> selectMemberDept(int memberno);
	List<ModifyDeptDTO1> viewMemberDept(int memberno);

	List<DeptDTO> member_name();

	/*UserDetailsVO*/
	List<UserDetailsVO> selectUserDetail(int memberno);





	
	
	/*ModifyspotDTO*/
	int modifyspot(ModifySpotDTO modifyspot);
	List<ModifySpotDTO> selectspot(int memberno);
	
	/*career*/
	int career(CareerDTO career);
	List<CareerDTO> careerSelect(int memberno);
	
	/*bonus*/
	List<BonusDTO> bonus(int memberno);
	List<BonusDTO> selectBonus(int memberno);

	int bonusInsert(BonusDTO bonus);

	/*certificate*/
	int certificate(CertificateDTO certificate);
	List<CertificateDTO> selectCertificate(int memberno);
	List<CertificateDTO> certificateInsert(int memberno);
	/*army*/
    ArmyDTO armyInfo();
	int armyInfo(ArmyDTO army);
	int armySelect(ArmyDTO armySelect);
	List<ArmyDTO> armyInsert(int memberno);	
	List<ArmyDTO> armySelect(int memberno);
	
		/*modifyDTO1*/
	int modifydept(ModifyDeptDTO1 modifydept);
	int modifydept1(ModifyDeptDTO1 modifydept1);

	int dept(ModifyDeptDTO1 dept);

	List<ModifyDeptDTO1> selectModifyDept(int memberno);
	
	/*memberInfoDTO*/
	int selectMemberInfo(MemberInfoDTO selectMemberInfo);
	int memberInfo(MemberInfoDTO member);
	List<MemberInfoDTO> memberInfo(int memberno);
	List<MemberInfoDTO> selectMemberInfo(int memberno);
	List<MemberInfoDTO> viewAllInfo(int memberno);
	int mainProfile(MemberInfoDTO memberInfo);

	/*familyDTO*/
	FamilyDTO family();
	//List<FamilyDTO> familyDto(int memberno);
	int family(FamilyDTO family);
	List<FamilyDTO> family(int memberno);
	List<FamilyDTO> familySelect(int memberno);
	
	/*LicenseDTO*/
	LicenseDTO license();
	int license(LicenseDTO license);
	//List<LicenseDTO> licenseSelect(int memberno);
	List<LicenseDTO> license(int memberno);
	
	List<LicenseDTO> selectLicense(int memberno);
	/*직위등록이력조회*/
	List<ModifySpotDTO> viewModispotDto(int memberno);
	/*경력 등록 이력 조회*/
	List<CareerDTO> viewCareerDto(int memberno);
	/*상벌 이력*/
	List<BonusDTO> viewBonusDto(int memberno);
	
	List<CertificateDTO> viewCertificateInsert(int memberno);
	
	List<ArmyDTO> viewArmySelect(int memberno);
	
	List<FinalAcademicDTO> viewAcademic(int memberno);
	List<FamilyDTO> viewFamilySelect(int memberno);
	List<LicenseDTO> viewLicenseDto(int memberno);
	List<MemberInfoDTO> deleteInfo(int memberno);
}

//List<MemberInfoDTO> modifyMember();


//List<MemberInfoDTO> memberInfoInsert(int memberno);

//List<MemberInfoDTO> selectMemberInfo(int memberno);

//List<CareerDTO> career();
//보류	
//	BonusDTO bonus();
//	int bonus(BonusDTO bonus);
//	

//	List<MemDTO> member_address();
//
//	List<MemDTO> member_enrollDate();

//	List<DeptDTO> member_name();

//List<MemberInfoDTO> mainProfile();


//	int memberInfoInsert(MemberInfoDTO memberInfoInsert);
//List<MemberInfoDTO> main();

//	int member_info_no(MemberInfoDTO member_info_no);
