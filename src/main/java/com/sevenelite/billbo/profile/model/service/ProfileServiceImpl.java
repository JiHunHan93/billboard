package com.sevenelite.billbo.profile.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sevenelite.billbo.board.model.dto.BoardDTO;
import com.sevenelite.billbo.member.model.dto.MemBbDTO;
import com.sevenelite.billbo.member.model.dto.MemDTO;
import com.sevenelite.billbo.profile.model.dao.ProfileMapper;
import com.sevenelite.billbo.profile.model.dto.ArmyDTO;
import com.sevenelite.billbo.profile.model.dto.CareerDTO;
import com.sevenelite.billbo.profile.model.dto.CertificateDTO;
import com.sevenelite.billbo.profile.model.dto.DeptDTO;
import com.sevenelite.billbo.profile.model.dto.FamilyDTO;
import com.sevenelite.billbo.profile.model.dto.FinalAcademicDTO;
import com.sevenelite.billbo.profile.model.dto.LicenseDTO;
import com.sevenelite.billbo.profile.model.dto.MemberInfoDTO;
import com.sevenelite.billbo.profile.model.dto.SpotDTO;
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

	@Override
	public List<MemberInfoDTO> memberInfo() {
		// TODO Auto-generated method stub
		return mapper.memberInfo();
	}
	@Override
	public boolean spot(SpotDTO spot) {
		// TODO Auto-generated method stub
		return mapper.spot(spot) > 0? true : false;
	}
	@Override
	public boolean dept(DeptDTO dept) {
		// TODO Auto-generated method stub
		return mapper.dept(dept) > 0? true : false;
	}
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
	public boolean member_info_no(MemDTO member_info_no) {
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
	public List<MemberInfoDTO> mainProfile() {
		// TODO Auto-generated method stub
		return mapper.mainProfile();
	}

	/*
	 * @Override public List<CareerDTO> career() { // TODO Auto-generated method
	 * stub return mapper.career(); }
	 */
	@Override
	public boolean memberInfoInsert(MemberInfoDTO memberInfoInsert) {
		// TODO Auto-generated method stub
		return mapper.memberInfoInsert(memberInfoInsert) > 0? true : false;
	}

	@Override
	public List<CareerDTO> career() {
		// TODO Auto-generated method stub
		return null;
	}
	}

	
	
	
	

		
