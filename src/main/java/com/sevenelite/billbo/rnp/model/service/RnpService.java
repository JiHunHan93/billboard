package com.sevenelite.billbo.rnp.model.service;

import java.util.List;

import com.sevenelite.billbo.rnp.model.dto.ModifyDeptAndMemAndRnpDTO;
import com.sevenelite.billbo.rnp.model.dto.RnpDTO;

public interface RnpService {

	List<RnpDTO> selectRnp();

	List<RnpDTO> detailRnp(int no);

	boolean registRnp(RnpDTO rnpBody);

}
