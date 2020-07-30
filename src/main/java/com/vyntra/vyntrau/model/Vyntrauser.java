package com.vyntra.vyntrau.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import com.sun.istack.NotNull;
import com.vyntra.vyntrau.security.AuthGroup;

@Entity
@Table(name="VyntraUserDetails")
public class Vyntrauser implements Serializable {

	
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long uid;
	@Column(name="firstName")
	@NotNull
	@NotEmpty
	//@Size(min=2,max=15)
	private String firstname;
	@Column(name="lastName")
	@NotNull
	@NotEmpty
	//@Size(min=2,max=15)
	private String lastname;
	@Column(name="username",unique=true)
	@NotNull
	@NotEmpty
	//@Size(min=2,max=15)
	private String username;
	@Column(name="Password")
	@NotNull
	@NotEmpty
	//@Size(min=2,max=16)
	private String password;
	@Column(name="Gender")
	@NotNull
	@NotEmpty
	@Size(min=1,max=1)
	private String gender;
	@Column(name="dateOfBirth")
	@NotNull
	@NotEmpty
	private String dob;
	@Column(name="phoneNumber",unique=true)
	@NotNull
	@NotEmpty
	private String phone;
	@Column(name="Address")
	@NotNull
	@NotEmpty
	private String address;
	@Column(name="Email",unique=true)
	@NotNull
	@NotEmpty(message="{email.notempty}")
	@Email
	private String email;
	
	
	public Vyntrauser() {

	}
	
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAdress(String address) {
		this.address = address;
	}
	
	
	
	public Long getUid() {
		return uid;
	}
	public void setUid(Long uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
