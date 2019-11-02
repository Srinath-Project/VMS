package com.app.vms.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.app.vms.model.Employee;

@Service
public interface EmployeeService {

	public List<Employee> getAllEmployee();
	public void saveEmployee(Employee employee);
	public void deleteEmployee(int employeeId);
	
}
