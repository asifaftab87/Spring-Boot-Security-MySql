package org.liferayasif.secure.service;

import java.util.Optional;
import java.util.Set;

import org.liferayasif.secure.model.MyUserDetails;
import org.liferayasif.secure.model.Role;
import org.liferayasif.secure.model.User;
import org.liferayasif.secure.repository.RoleRepository;
import org.liferayasif.secure.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class MyUserDetailsService implements UserDetailsService{

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private RoleRepository roleRepository;
	
	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
		Optional<User> user = userRepository.findByUserName(userName);
		
		user.orElseThrow(() -> new UsernameNotFoundException("Not found: "+userName));
		return user.map(MyUserDetails::new).get();
	}
	
	public User saveUser(User user, Set<Role> role) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setActive(true);
        user.setRoles(role);
        return userRepository.save(user);
    }

}
