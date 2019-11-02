package com.app.vms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.vms.form.EmployeeForm;
import com.app.vms.model.Employee;
import com.app.vms.service.EmployeeService;

@Controller
@RequestMapping("/employee")
public class EmployeePageController {

	@Autowired
	private EmployeeService employeeService;
	
	@GetMapping("/employee")
    public String employeeForm(ModelMap model) {
        model.addAttribute("employeeForm", new EmployeeForm());
        
        List<Employee> allEmployee = employeeService.getAllEmployee();
		model.addAttribute("allEmployee", allEmployee);
        
        return "employeePage";
    }
	
	@GetMapping("/delete")
    public String deleteEmployee(ModelMap model, @RequestParam(name = "employeeId") int employeeId) {
        model.addAttribute("employeeForm", new EmployeeForm());
        
        employeeService.deleteEmployee(employeeId);
        
        List<Employee> allEmployee = employeeService.getAllEmployee();
		model.addAttribute("allEmployee", allEmployee);
        
        return "employeePage";
    }
	
	

    @PostMapping("/addEmployee")
    public String employeeSubmit(@ModelAttribute EmployeeForm employeeForm, ModelMap model) {
    	
    	 model.addAttribute("employeeForm", new EmployeeForm());
    	
    		
        	Employee employee = new Employee();
       
        	employee.setEmployeeId(employeeForm.getEmployeeId());
        	employee.setFirstName(employeeForm.getEmployeeName());
        	employee.setEmail(employeeForm.getEmail());
        	employee.setPhoneNumber(employeeForm.getPhone());
        	employee.setDepartmentId(employeeForm.getDepartment());
        	employee.setDesignation(employeeForm.getDesignation());
        	
        	employeeService.saveEmployee(employee);	
    	
    	
    	List<Employee> allEmployee = employeeService.getAllEmployee();
		model.addAttribute("allEmployee", allEmployee);
    	
        return "employeePage";
    }
	
	
	
	
}
