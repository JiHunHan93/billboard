package com.sevenelite.billbo.profile.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sevenelite.billbo.member.model.dto.MemBbDTO;
import com.sevenelite.billbo.profile.model.dao.ProfileMapper;
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
@Service("profileService")
public class ProfileServiceImpl implements ProfileService{

	private final ProfileMapper mapper;

	@Autowired
	public ProfileServiceImpl(ProfileMapper mapper) {
		this.mapper = mapper;

	}

	@Override
	public boolean armyInfo(ArmyDTO army) {
		// TODO Auto-generated method stub
		return mapper.armyInfo(army) > 0? true : false;
	}

	/*
	 * @Override public List<MemberInfoDTO> memberInfo() { // TODO Auto-generated
	 * method stub return mapper.memberInfo(); }
	 */
	@Override
	public boolean modifyspot(ModifySpotDTO modifyspot) {
		// TODO Auto-generated method stub
		return mapper.modifyspot(modifyspot) > 0? true : false;
	}

	/*
	 * @Override public boolean modifydept(ModifyDeptDTO1 modifydept) { // TODO
	 * Auto-generated method stub return mapper.dept(modifydept) > 0? true : false;
	 * }
	 */
	@Override
	public boolean career(CareerDTO career) {
		// TODO Auto-generated method stub
		return mapper.career(career) > 0? true : false;
	}
	//	@Override
	//	보류	
	//	public boolean bonus(BonusDTO bonus) {
	//		// TODO Auto-generated method stub
	//		return mapper.bonus(bonus) > 0? true : false;
	//	}
	@Override
	public boolean certificate(CertificateDTO certificate) {
		// TODO Auto-generated method stub
		return mapper.certificate(certificate) > 0? true : false;
	}

	@Override
	public boolean finalAcademic(FinalAcademicDTO finalAcademic) {
		// TODO Auto-generated method stub
		return mapper.finalAcademic(finalAcademic) > 0? true : false;
	}
	@Override
	public boolean family(FamilyDTO family) {
		// TODO Auto-generated method stub
		return mapper.family(family) > 0? true : false;
	}

	@Override
	public boolean license(LicenseDTO license) {
		// TODO Auto-generated method stub
		return mapper.license(license) > 0? true : false;
	}

	@Override
	public boolean member_info_no(MemberInfoDTO member_info_no) {
		// TODO Auto-generated method stub
		return mapper.member_info_no(member_info_no) > 0? true : false;
	}
	//	@Override
	//	public List<MemDTO>member_info_phone(int no) {
	//		System.out.println("이게된다?");
	//		return mapper.member_info_phone(no);
	//	}
	@Override
	public List<MemBbDTO>member_address() {
		System.out.println("이게된다고?");
		return mapper.member_address();
	}
	@Override
	public List<MemBbDTO>member_enrollDate() {
		System.out.println("이게된다고?");
		return mapper.member_enrollDate();
	}
	@Override
	public List<DeptDTO>member_name() {
		System.out.println("이게된다고????????");
		return mapper.member_name();
	}

	@Override
	public List<MemBbDTO> member_info_phone() {
		// TODO Auto-generated method stub
		return mapper.member_info_phone();
	}
	@Override
	public List<MemberInfoDTO> main() {
		// TODO Auto-generated method stub
		return mapper.main();
	}

	/*
	 * @Override public List<CareerDTO> career() { // TODO Auto-generated method
	 * stub return mapper.career(); }
	 */
	@Override
	public boolean memberInfoInsert(MemberInfoDTO memberInfo) {
		// TODO Auto-generated method stub
		return mapper.memberInfoInsert(memberInfo) > 0? true : false;
	}

	@Override
	public List<CareerDTO> career() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MemberInfoDTO> memberInfo(int no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MemBbDTO> mainProfile() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MemberInfoDTO> selectMemberInfo(int memberno) {
		// TODO Auto-generated method stub
		return mapper.selectMemberInfo(memberno);
	}

	@Override
	public List<DeptDTO> selectMemberDept(int memberno) {
		// TODO Auto-generated method stub
		return mapper.selectMemberDept(memberno);
	}

	@Override
	public List<MemBbDTO> selectMemberDetail(int memberno) {
		// TODO Auto-generated method stub
		return mapper.selectMemberDetail(memberno);
	}




	@Override
	public List<ModifyDeptDTO> member_name(int memberno) {
		// TODO Auto-generated method stub
		return member_name(memberno);
	}

	@Override
	public List<ModifyDeptDTO> member_dept(int memberno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MemberInfoDTO> memberInfo() {
		// TODO Auto-generated method stub
		return null;
	}

	
	@Override
	public boolean modifydept(ModifyDeptDTO1 dept) {
		return mapper.dept(dept) > 0? true : false;
	}
	@Override
	public boolean dept(ModifyDeptDTO1 modifydept1) {
		// TODO Auto-generated method stub
		return mapper.modifydept1(modifydept1) > 0? true:false;
	}
	@Override
	public List<ModifyDeptDTO1> selectModifyDept(int memberno) {
		// TODO Auto-generated method stub
		return mapper.selectModifyDept(memberno);
	}

	@Override
	public List<ModifySpotDTO> selectspot(int memberno) {
		// TODO Auto-generated method stub
		return mapper.selectspot(memberno);
	}

	@Override
	public List<CareerDTO> career(int memberno) {
		// TODO Auto-generated method stub
		return mapper.careerSelect(memberno);
	}

	@Override
	public List<BonusDTO> bonus(int memberno) {
		return mapper.bonus(memberno);
	}

	@Override
	public boolean bonusInsert(BonusDTO bonus) {
		return mapper.bonusInsert(bonus) > 0? true : false;
	}

	@Override
	public List<LicenseDTO> licenseSelect(int memberno) {
		// TODO Auto-generated method stub
		return mapper.licenseSelect(memberno);
	}

	@Override
	public List<CertificateDTO> certificateInsert(int memberno) {
		// TODO Auto-generated method stub
		return mapper.certificateInsert(memberno);
	}

	@Override
	public List<ArmyDTO> armyInsert(int memberno) {
		// TODO Auto-generated method stub
		return mapper.armyInsert(memberno);
	}

	
}







