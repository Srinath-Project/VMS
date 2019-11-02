package com.app.vms.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="User")
public class User {
    

	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="userId")
	@Id
	private String userId;
	
	@Column(name="userName")
	private String userName;
	
	@Column(name="password")
	private String password;
	
	@Column(name="tenantCode")
	private String tenantCode;
	
	@Column(name="userRole")
	private String userRole;
	
	
	
	
	
		
	public String getUserRole() {
		return userRole;
	}






	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}






	public String getUserId() {
		return userId;
	}






	public void setUserId(String userId) {
		this.userId = userId;
	}






	public String getUserName() {
		return userName;
	}






	public void setUserName(String userName) {
		this.userName = userName;
	}






	public String getPassword() {
		return password;
	}






	public void setPassword(String password) {
		this.password = password;
	}






	public String getTenantCode() {
		return tenantCode;
	}






	public void setTenantCode(String tenantCode) {
		this.tenantCode = tenantCode;
	}






	public User() {
		// TODO Auto-generated constructor stub
	}


}
