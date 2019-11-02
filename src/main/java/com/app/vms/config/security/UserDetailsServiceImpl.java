package com.app.vms.config.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.app.vms.model.User;
import com.app.vms.repository.UserRepository;

@Service
public class UserDetailsServiceImpl implements UserDetailsService{

	@Autowired
	private UserRepository userRepository;
	
	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
		
		User findByUserName = userRepository.findByUserName("Naveen2");
		
		if(findByUserName == null) {
			throw new UsernameNotFoundException("User Not Found");
		}
		
		return new UserDetailsImpl(findByUserName);
	}

}
