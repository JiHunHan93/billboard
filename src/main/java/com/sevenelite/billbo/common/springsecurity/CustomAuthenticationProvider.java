package com.sevenelite.billbo.common.springsecurity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.CredentialsExpiredException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.sevenelite.billbo.member.model.dto.UserDetailsVO;
import com.sevenelite.billbo.member.model.service.UserDetailsServiceCustom;

@Service
public class CustomAuthenticationProvider implements AuthenticationProvider {

	@Autowired	//DB의 값을 가져다주는 커스터마이징 클래스
	UserDetailsServiceCustom userDetailsService;
	
	@Autowired	//패스워드 암호화 객체
	BCryptPasswordEncoder pwEncoding;
	
    public CustomAuthenticationProvider() {
        super();
    }

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
    	
    	/* 사용자가 입력한 정보 */
    	String userId = authentication.getName();
    	String userPw = (String) authentication.getCredentials();
    	
    	System.out.println("여기 ID : " + userId);
    	System.out.println("여기 PW : " + userPw);
    	
    	/* DB에서 가져온 정보 (커스터마이징 기능) */
    	UserDetailsVO userDetails = (UserDetailsVO) userDetailsService.loadUserByUsername(userId);
    	
    	System.out.println("가져온 UserDetails :" + userDetails.getUsername());
    	System.out.println("가져온 UserDetails :" + userDetails.getPassword());
    	System.out.println("가져온 UserDetails :" + userDetails.getAuthorities());
    	
    	/* 인증 진행 */
    	/* DB에 정보가 없는 경우 예외 발생 (아이디/패스워드 잘못됐을 때와 동일한 것이 좋음) 
    	 * Id 및 PW 체크해서 안맞을 경우 (matches를 이용한 암호화 체크를 해야함) */
    	if(userDetails == null || !userId.equals(userDetails.getUsername()) || !pwEncoding.matches(userPw, userDetails.getPassword())) {
    		
    		System.out.println("오류1");
    		throw new BadCredentialsException(userId);
    		
    	} else if(!userDetails.isAccountNonLocked()) {
    		
    		System.out.println("오류2");
    		throw new LockedException(userId);
    		
    		/* 비활성화된 계정 */
    	} else if(!userDetails.isEnabled()) {
    		
    		System.out.println("오류3");
    		throw new DisabledException(userId);
    			
    		/* 만료된 계정일 경우 */
    	} else if (!userDetails.isAccountNonExpired()) {
    		
    		System.out.println("오류4");
    		/* 03/31 오류남 */
//			throw new AccountExpiredException(userId);
    		
			/* 비밀번호가 만료된 경우 */
		} else if (!userDetails.isCredentialsNonExpired()) {
			
			System.out.println("오류5");
			throw new CredentialsExpiredException(userId);
			
		}
    	
    	/* 다 썼으면 패스워드 정보는 지워줌 (객체를 계속 사용해야 하므로) */
    	userDetails.setPassword(null);
    	
    	System.out.println("비밀번호는 null : " + userDetails.getPassword()); 
    	/* 최종 리턴 시킬 새로만든 Authentication 객체 */
    	Authentication newAuth = new UsernamePasswordAuthenticationToken(userDetails, null, userDetails.getAuthorities());
    	
    	System.out.println("이건 뭐지? : " + newAuth);
    	return newAuth;
    }

    @Override
    /* 위의 authenticate 메소드에서 반환한 객체가 유효한 타입이 맞는지 검사
     * null 값이거나 잘못된 타입을 반환했을 경우 인증 실패로 간주 */
    public boolean supports(final Class<?> authentication) {
    	
    	/* 스프링 Security가 요구하는 UsernamePasswordAuthenticationToken 타입이 맞는지 확인 */
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }



}


//@Override	Github에서 가져온 방법
//public Authentication authenticate(final Authentication authentication) throws AuthenticationException {
// 
//	final String name = authentication.getName();
//  
//	final String password = authentication.getCredentials().toString();
//  
//	if (name.equals("admin") && password.equals("system")) {
//      
//		final List<GrantedAuthority> grantedAuths = new ArrayList<>();
//      
//		grantedAuths.add(new SimpleGrantedAuthority("ROLE_USER"));
//      
//		final UserDetails principal = new User(name, password, grantedAuths);
//      
//		final Authentication auth = new UsernamePasswordAuthenticationToken(principal, password, grantedAuths);
//      
//      return auth;
//  
//	} else {
//  
//		return null;
//		
//  }
//}
