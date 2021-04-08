package com.sevenelite.billbo.profile.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.sevenelite.billbo.profile.model.dto.ArmyDTO;

public interface ProfileMapper {

	ArmyDTO armyInfo(ArmyDTO army);

	ArmyDTO armyInfo();
}
