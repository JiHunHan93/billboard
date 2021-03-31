package com.sevenelite.billbo.member.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.sevenelite.billbo.member.model.dao.MemberMapper;
import com.sevenelite.billbo.member.model.dto.MemBbDTO;
import com.sevenelite.billbo.member.model.dto.UserDetailsVO;

@Service("userAuthService")
public class UserDetailsServiceCustom implements UserDetailsService {

	@Autowired
	private MemberMapper mapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		/* 최종적으로 리턴해야될 객체 */
		UserDetailsVO userDetails = new UserDetailsVO();
		
		/* 사용자 정보 select */
		MemBbDTO userInfo = mapper.loginBbMem(username);
		
		System.out.println("가져온 사용자 정보 : " + userInfo);
		/* 사용자 정보 없으면 null 처리 */
		if(userInfo == null) {
		
			return null;
			
		} else {
			
			System.out.println("if문 진입");
			System.out.println("userInfo : " + userInfo.getEmail());
			System.out.println("userInfo : " + userInfo.getPwd());
			
			/* 사용자 정보 있을 경우 로직 전개 (userDetails에 데이터 넣기) */
			userDetails.setUsername(userInfo.getEmail());
			userDetails.setPassword(userInfo.getPwd());
			
			/* 사용자 권한 select해서 받아온 List<String> 객체 주입 */
			/* 03/30(화) mapper.xml에서 해당 쿼리를 만들지 않았기 때문에 오류남. */
//			List<String> authList = mapper.selectUserAuthone(username);
//			for(int i = 0; i < authList.size(); i++) {
//				System.out.println("권한 : " + authList.get(i));
//			}
			
			userDetails.setAuthorities(mapper.selectUserAuthone(username));
			
		}
		
		return userDetails;
	}

}
