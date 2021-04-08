package com.sevenelite.billbo.profile.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.sevenelite.billbo.profile.model.dao.ProfileMapper;
import com.sevenelite.billbo.profile.model.dto.ArmyDTO;
@Service
public class ProfileServiceImpl implements ProfileService{

	private final ProfileMapper mapper;
	
	@Autowired
	public ProfileServiceImpl(ProfileMapper army) {
		this.mapper = army;
	}

	@Override
	public ArmyDTO armyInfo(ArmyDTO army) {
		// TODO Auto-generated method stub
		return mapper.armyInfo(army);
	}

	}

	
	
	
	

		
