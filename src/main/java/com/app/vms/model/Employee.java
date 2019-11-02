package com.app.vms.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Employee")
public class Employee {
    

	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="employeeId")
	@Id
	private Integer employeeId;
	
	@Column(name="firstName")
	private String firstName;
	
	@Column(name="middleName")
	private String middleName;
	
	@Column(name="lastName")
	private String lastName;
	
	@Column(name="email")
	private String email;
	
	@Column(name="phoneNumber")
	private String phoneNumber;
	
	
	@Column(name="tenantCode")
	private String tenantCode;
	
	@Column(name="departmentId")
	private String departmentId;
	
	@Column(name="designation")
	private String designation;
	
	@Column(name="accountStatus")
	private String AccountStatus;
	
	public Employee() {
		// TODO Auto-generated constructor stub
	}



	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}





	public String getPhoneNumber() {
		return phoneNumber;
	}





	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}





	public String getTenantCode() {
		return tenantCode;
	}





	public void setTenantCode(String tenantCode) {
		this.tenantCode = tenantCode;
	}





	public String getDepartmentId() {
		return departmentId;
	}





	public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}





	public String getDesignation() {
		return designation;
	}





	public void setDesignation(String designation) {
		this.designation = designation;
	}





	public String getAccountStatus() {
		return AccountStatus;
	}





	public void setAccountStatus(String accountStatus) {
		AccountStatus = accountStatus;
	}





	public Integer getEmployeeId() {
		return employeeId;
	}



	public void setEmployeeId(Integer employeeId) {
		this.employeeId = employeeId;
	}



	public String getFirstName() {
		return firstName;
	}



	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}



	public String getMiddleName() {
		return middleName;
	}



	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}



	public String getLastName() {
		return lastName;
	}



	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


}
