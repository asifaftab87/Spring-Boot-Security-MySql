package org.liferayasif.secure.repository;

import org.liferayasif.secure.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role, Integer>{
	
	Role findByRole(String role);

}
