package org.liferayasif.secure;

import org.liferayasif.secure.repository.UserRepository;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EnableJpaRepositories(basePackageClasses = UserRepository.class)
public class SecureAppRole2Application {

	public static void main(String[] args) {
		SpringApplication.run(SecureAppRole2Application.class, args);
	}

}
