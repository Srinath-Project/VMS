package com.app.vms;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@EnableJpaRepositories(basePackages = "com.app.vms.repository")
@SpringBootApplication
public class VisitorsManagementSystemApplication {

	public static void main(String[] args) {
		SpringApplication.run(VisitorsManagementSystemApplication.class, args);
	}

}
