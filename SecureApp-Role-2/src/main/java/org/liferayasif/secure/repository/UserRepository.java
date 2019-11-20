package org.liferayasif.secure.repository;

import java.util.Optional;

import org.liferayasif.secure.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Integer>{
	
	Optional<User> findByUserName(String userName);

	Optional<User> findByEmail(String email);
}
