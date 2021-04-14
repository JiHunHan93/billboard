package com.sevenelite.billbo.rnp.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sevenelite.billbo.rnp.model.dao.RnpMapper;
import com.sevenelite.billbo.rnp.model.dto.RnpDTO;

@Service("rnpService")
public class RnpServiceImpl implements RnpService{
	
	private RnpMapper rnpMapper;
	
	@Autowired
	public RnpServiceImpl(RnpMapper rnpMapper) {
		this.rnpMapper = rnpMapper;
	}
	
	@Override
	public List<RnpDTO> selectRnp() {
		
		return rnpMapper.selectRnp();
	}

	@Override
	public List<RnpDTO> detailRnp(int no) {
		
		return rnpMapper.detailRnp(no);
	}

}
