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

import com.accenture.hkha.constants.UserRoles;
import com.accenture.hkha.model.UserRole;

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


		 if (name.equals("assessor") && pswd.equals("hkpass")) {
			 List<GrantedAuthority> grantedAuths = new ArrayList<>();
	         grantedAuths.add(new SimpleGrantedAuthority(UserRoles.ROLE_ASSESSOR.toString()));
	         auth = new UsernamePasswordAuthenticationToken(name, pswd, grantedAuths);
		 }else if (name.equals("prof") && pswd.equals("hkpass")) {
			 List<GrantedAuthority> grantedAuths = new ArrayList<>();
	         grantedAuths.add(new SimpleGrantedAuthority(UserRoles.ROLE_PROF.toString()));
	         auth = new UsernamePasswordAuthenticationToken(name, pswd, grantedAuths);
		 }else if (name.equals("chief") && pswd.equals("hkpass")) {
			 List<GrantedAuthority> grantedAuths = new ArrayList<>();
	         grantedAuths.add(new SimpleGrantedAuthority(UserRoles.ROLE_CHIEF.toString()));
	         auth = new UsernamePasswordAuthenticationToken(name, pswd, grantedAuths);
		 }else if (name.equals("dadmin") && pswd.equals("hkpass")) {
			 List<GrantedAuthority> grantedAuths = new ArrayList<>();
	         grantedAuths.add(new SimpleGrantedAuthority(UserRoles.ROLE_ADMIN.toString()));
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

