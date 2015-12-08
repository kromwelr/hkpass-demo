package com.accenture.hkha.config;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Component;

@Component
public class CustomHKAuthenticationProvider implements AuthenticationProvider {

	@PostConstruct
	private void init() {
		// TODO Auto-generated method stub
		System.out.println("Initialize Custom Authentication Provider");

	}
	@Override
	public Authentication authenticate(Authentication auth)
			throws AuthenticationException {
		 String name = auth.getName();
		 String pswd = auth.getCredentials().toString();


		 if (name.equals("assessor@hkha.com") && pswd.equals("hkha")) {
			 List<GrantedAuthority> grantedAuths = new ArrayList<>();
	         grantedAuths.add(new SimpleGrantedAuthority("ROLE_USER"));
	         auth = new UsernamePasswordAuthenticationToken(name, pswd, grantedAuths);
		 }else if (name.equals("approver@hkha.com") && pswd.equals("hkha")) {
			 List<GrantedAuthority> grantedAuths = new ArrayList<>();
	         grantedAuths.add(new SimpleGrantedAuthority("ROLE_APPROVER"));
	         auth = new UsernamePasswordAuthenticationToken(name, pswd, grantedAuths);
		 }else if (name.equals("admin") && pswd.equals("hkha")) {
			 List<GrantedAuthority> grantedAuths = new ArrayList<>();
	         grantedAuths.add(new SimpleGrantedAuthority("ROLE_USER"));
	         auth = new UsernamePasswordAuthenticationToken(name, pswd, grantedAuths);
		 } else {
			 auth = null;
		 }
		 return auth;
	}

	@Override
	public boolean supports(Class<?> auth) {
		return auth.equals(UsernamePasswordAuthenticationToken.class);
	}

}

