package com.app.vms.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.vms.model.Employee;
import com.app.vms.repository.EmployeeRepository;
import com.app.vms.service.EmployeeService;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeRepository employeeRepository;
	
	@Override
	public List<Employee> getAllEmployee() {
		return employeeRepository.findAll();
	}

	@Override
	public void saveEmployee(Employee employee) {
		employeeRepository.save(employee);
	}
	
	@Override
	public void deleteEmployee(int employeeId) {
		employeeRepository.deleteById(employeeId);
	}

}
