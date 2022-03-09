package com.agro.main.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

@Entity
@Table(name = "masterdata")
public class Admin {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public int id;

    @Column(name = "loginvalue")
	public String loginvalue;
	
	
	public String getLoginvalue() {
		return loginvalue;
	}

	public void setLoginvalue(String loginvalue) {
		this.loginvalue = loginvalue;
	}

	@Column(name = "username")
//	@NotNull
	public String username;
	@Column(name = "password")
	//@NotNull
	public String password;

	@Column(name = "email")
	//@Email
	//@NotNull
	public String email;

//	@Pattern(regexp = "^(0|[1-9][0-9]*)$")
	@Column(name = "contactno")
//	@NotNull
	public String contactno;
	@Column(name = "dateofbirth")
	//@NotNull
	public String dateofbirth;

	@Column(name = "type")
//	@NotNull
	public String type;

	@Column(name = "address")
//	@NotNull
	public String address;

//	@CreatedDate
//	@Column(name = "createddate")
//	@NotNull
//	public LocalDate createddate;

	@Column(name = "isactive")
	public String isActive="1";

	
	@Column(name = "approved")
	public String approved;
	
	
	
	public String getApproved() {
		return approved;
	}

	public void setApproved(String approved) {
		this.approved = approved;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getIsActive() {
		return isActive;
	}

	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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
		return "Admin [id=" + id + ", username=" + username + ", password=" + password + ", email=" + email
				+ ", contactno=" + contactno + ", dateofbirth=" + dateofbirth + ", type=" + type + ", address="
				+ address + ", isActive=" + isActive + ", approved=" + approved + "]";
	}


}
