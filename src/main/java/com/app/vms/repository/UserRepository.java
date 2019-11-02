package com.app.vms.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.app.vms.model.User;

public interface UserRepository extends JpaRepository<User, String>{

	User findByUserName(String userName);
}
