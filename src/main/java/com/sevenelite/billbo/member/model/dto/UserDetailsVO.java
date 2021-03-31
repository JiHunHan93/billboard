package com.sevenelite.billbo.member.model.dto;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class UserDetailsVO implements UserDetails {
	
	private static final long serialVersionUID = 1L;
	
	private String username; //ID
	private String password; //PW
	private List<GrantedAuthority> authorities;
	
	// Setter
	public void setUsername(String username) {
		
		this.username = username;
	}
	
	// Setter
	public void setPassword(String password) {
		
		this.password = password;
	}
	
	// Setter
	public void setAuthorities(List<String> authList) {
		
		System.out.println("값이 들어왔냐? : " + authList.get(0));
		System.out.println("타입은? : " + authList.getClass().getName());
		
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		
		for(int i = 0; i < authList.size(); i++) {
			authorities.add(new SimpleGrantedAuthority(authList.get(i)));
		}
		
		this.authorities = authorities;
	}
	
	@Override	//ID
	public String getUsername() {

		return username;
	}
	
	@Override	//PW
	public String getPassword() {

		return password;
	}
	
	@Override	//권한
	public Collection<? extends GrantedAuthority> getAuthorities() {
		
		return authorities;
	}

	@Override	//계정이 만료되지 않았는지?
	public boolean isAccountNonExpired() {

		return true;
	}

	@Override	//계정이 잠기지 않았는지?
	public boolean isAccountNonLocked() {
		
		return true;
	}

	@Override	//패스워드가 만료되지 않았는지?
	public boolean isCredentialsNonExpired() {
		
		return true;
	}

	@Override	//계정이 활성화 되었는지?
	public boolean isEnabled() {
		
		return true;
	}

}
