package com.sevenelite.billbo.profile.model.service;

import java.util.List;

import com.sevenelite.billbo.member.model.dto.MemBbDTO;
import com.sevenelite.billbo.profile.model.dto.ArmyDTO;
import com.sevenelite.billbo.profile.model.dto.BonusDTO;
import com.sevenelite.billbo.profile.model.dto.CareerDTO;
import com.sevenelite.billbo.profile.model.dto.CertificateDTO;
import com.sevenelite.billbo.profile.model.dto.DeptDTO;
import com.sevenelite.billbo.profile.model.dto.FamilyDTO;
import com.sevenelite.billbo.profile.model.dto.FileAttachmentDTO;
import com.sevenelite.billbo.profile.model.dto.FinalAcademicDTO;
import com.sevenelite.billbo.profile.model.dto.LicenseDTO;
import com.sevenelite.billbo.profile.model.dto.MemberInfoDTO;
import com.sevenelite.billbo.profile.model.dto.ModifyDeptDTO1;
import com.sevenelite.billbo.profile.model.dto.ModifySpotDTO;
import com.sevenelite.billbo.profile.model.dto.SpotDTO;
import com.sevenelite.billbo.rnp.model.dto.ModifyDeptDTO;

public interface ProfileService {



	
	List<CareerDTO> career();


	boolean career(CareerDTO career);

	
	boolean certificate(CertificateDTO certificate);

	boolean finalAcademic(FinalAcademicDTO finalAcademic);

	boolean family(FamilyDTO family);
	List<FamilyDTO> family(int memberno);
	List<FamilyDTO> familySelect(int memberno);
	
	boolean license(LicenseDTO license);
	List<LicenseDTO> license(int memberno);
	List<LicenseDTO> selectLicense(int memberno);

	boolean memberInfo(MemberInfoDTO memberInfo);


	List<MemBbDTO> member_info_phone();
	

	
	List<MemBbDTO> member_address();

	List<MemBbDTO> member_enrollDate();

	

	

	List<MemBbDTO> mainProfile();

	List<MemberInfoDTO> memberInfo(int memberno);
	
	

	boolean selectMemberInfo(MemberInfoDTO member_info_no);

	
	List<DeptDTO> selectMemberDept(int memberno);



	List<MemBbDTO> selectMemberDetail(int memberno);

	boolean modifydept(ModifyDeptDTO1 dept);

	List<DeptDTO> member_name();

	List<ModifyDeptDTO> member_name(int memberno);

	List<ModifyDeptDTO> member_dept(int memberno);


	boolean modifyspot(ModifySpotDTO modifyspot);

	
	List<ModifyDeptDTO1> selectModifyDept(int memberno);

	List<ModifySpotDTO> selectspot(int memberno);

	List<CareerDTO> career(int memberno);

	List<BonusDTO> bonus(int memberno);

	boolean bonusInsert(BonusDTO bonus);

	
	List<CertificateDTO> certificateInsert(int memberno);
	
	/*armyDTO*/
	boolean armyInfo(ArmyDTO army);
	List<ArmyDTO> armyInsert(int memberno);
	List<ArmyDTO> armySelect(int memberno);

	List<FinalAcademicDTO> academic(int memberno);

	
	/* ***********************************main2 select 조회 위한************************* */
	List<CertificateDTO> selectCertificate(int memberno);
	
	List<BonusDTO>selectBonus(int memberno);

	List<MemberInfoDTO>selectMemberInfo(int memberno);
	List<MemberInfoDTO>viewAllInfo(int memberno);
	List<MemberInfoDTO>deleteInfo(int memberno);
	
	boolean mainProfile(MemberInfoDTO memberInfo);

	List<ModifyDeptDTO1> viewMemberDept(int memberno);

	List<ModifySpotDTO> viewModispotDto(int memberno);

	List<CareerDTO> viewCareerDto(int memberno);

	List<BonusDTO> viewBonusDto(int memberno);

	List<CertificateDTO> viewCertificateInsert(int memberno);

	List<ArmyDTO> viewArmySelect(int memberno);

	List<FinalAcademicDTO> viewAcademic(int memberno);

	List<FamilyDTO> viewFamilySelect(int memberno);

	List<LicenseDTO> viewLicenseDto(int memberno);

	
    List<FileAttachmentDTO> selectFileAttach(int memberno);
	 
	
	
	

}
