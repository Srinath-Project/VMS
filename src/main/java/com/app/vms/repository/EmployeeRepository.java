package com.app.vms.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.app.vms.model.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

}
