package com.sevenelite.billbo.rnp.model.dao;

import java.util.List;

import com.sevenelite.billbo.rnp.model.dto.ModifyDeptAndMemAndRnpDTO;
import com.sevenelite.billbo.rnp.model.dto.RnpDTO;

public interface RnpMapper {

	List<RnpDTO> selectRnp();

	List<RnpDTO> detailRnp(int no);

	int registRnp(RnpDTO rnpBody);

	int deleteRnp(int no);

}
