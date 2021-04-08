package com.sevenelite.billbo.profile.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.sevenelite.billbo.profile.model.dto.ArmyDTO;
import com.sevenelite.billbo.profile.model.dto.MemberInfoDTO;

public interface ProfileMapper {

	

	ArmyDTO armyInfo();
	
	int armyInfo(ArmyDTO army);
	
//	MemberInfoDTO memberInfo();
//	
//	int memberInfo(MemberInfoDTO member);
}
