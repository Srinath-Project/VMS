package com.app.vms.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Visitor")
public class Visitor {
    

	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="visitorId")
	@Id
	private Integer visitorId;
	
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
	
	@Column(name="company")
	private String company;
	
	@Column(name="tenantCode")
	private String tenantCode;
	
	
	
	public Visitor() {
		// TODO Auto-generated constructor stub
	}



	public String getTenantCode() {
		return tenantCode;
	}



	public void setTenantCode(String tenantCode) {
		this.tenantCode = tenantCode;
	}



	public Integer getVisitorId() {
		return visitorId;
	}



	public void setVisitorId(Integer visitorId) {
		this.visitorId = visitorId;
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



	public String getCompany() {
		return company;
	}



	public void setCompany(String company) {
		this.company = company;
	}

	
}
