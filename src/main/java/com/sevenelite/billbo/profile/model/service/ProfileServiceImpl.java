package com.sevenelite.billbo.profile.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.sevenelite.billbo.profile.model.dao.ProfileMapper;
import com.sevenelite.billbo.profile.model.dto.ArmyDTO;
import com.sevenelite.billbo.profile.model.dto.MemberInfoDTO;
@Service
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

//	@Override
//	public boolean memberInfo(MemberInfoDTO member) {
//		// TODO Auto-generated method stub
//		return mapper.memberInfo(member) > 0? true : false;
//	}
	
	}

	
	
	
	

		
