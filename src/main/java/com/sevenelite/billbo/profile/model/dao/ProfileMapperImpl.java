package com.sevenelite.billbo.profile.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.sevenelite.billbo.profile.model.dto.ArmyDTO;

@Repository("profileMapper")
public class ProfileMapperImpl implements ProfileMapper {

		public List<ArmyDTO> armyInfo(SqlSessionTemplate sqlSession) {
			
			return sqlSession.selectList("profile.armyInfo");
}
}
