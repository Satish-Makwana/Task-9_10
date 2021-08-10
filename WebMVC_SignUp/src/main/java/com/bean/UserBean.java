package com.bean;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;

public class UserBean {
	private int id;
	@NotBlank
	@Pattern(regexp = "^[a-zA-Z]*$",message = "Name only Contain Alphabets.")
	private String name;
	@Email(regexp = ".+@.+\\..+",message = "Please enter a valid email.")
	private String email;
	private String gender;
	private String[] hobby;
	
	@Length(min = 8,max = 16,message = "Length must be between 8 to 16 digit.")
	private String password;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String[] getHobby() {
		return hobby;
	}
	public void setHobby(String[] hobby) {
		this.hobby = hobby;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
