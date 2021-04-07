package com.sevenelite.billbo.profile.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.sevenelite.billbo.profile.model.dao.ProfileMapper;
import com.sevenelite.billbo.profile.model.dto.ArmyDTO;
@Service("ProfileService")
public class ProfileServiceImpl implements ProfileMapper{

	private ProfileMapper mapper;
	
	@Autowired
	public ProfileServiceImpl(ProfileMapper army) {
		this.mapper = army;
	}

	@Override
	public List<ArmyDTO> armyInfo() {
		// TODO Auto-generated method stub
		return mapper.armyInfo();
	}

	@Override
	public List<ArmyDTO> armyInfo(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	

		
}
