package com.agro.main.vo;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;

public class AdminVo {

	
	public String loginvalue;
	public String getLoginvalue() {
		return loginvalue;
	}

	public void setLoginvalue(String loginvalue) {
		this.loginvalue = loginvalue;
	}

	// @Column(name = "username")
//	@NotNull
	public String username;


	// @Column(name = "password")
	@NotNull
	public String password;

//@Column(name = "email")
//	@Email
	//@NotNull
	public String email;

//	@Pattern(regexp = "^(0|[1-9][0-9]*)$")
//	@Column(name = "contactno")
//	@NotNull
	public String contactno;
	// @Column(name = "dateofbirth")
//	@NotNull
	public String dateofbirth;

//	@Column(name = "type")
//	@NotNull
	public String type;

//@NotNull
	public String address;

	
	public String isActive;

	
	public String approved;
	public int id;
	
	
	public int getId() {
		return id;
	}

	public void setId(int i) {
		this.id = i;
	}

	public String getApproved() {
		return approved;
	}

	public void setApproved(String approved) {
		this.approved = approved;
	}

	public String getIsActive() {
		return isActive;
	}

	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContactno() {
		return contactno;
	}

	public void setContactno(String contactno) {
		this.contactno = contactno;
	}

	public String getDateofbirth() {
		return dateofbirth;
	}

	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "AdminVo [loginvalue=" + loginvalue + ", username=" + username + ", password=" + password + ", email="
				+ email + ", contactno=" + contactno + ", dateofbirth=" + dateofbirth + ", type=" + type + ", address="
				+ address + ", isActive=" + isActive + ", approved=" + approved + ", id=" + id + "]";
	}







}
