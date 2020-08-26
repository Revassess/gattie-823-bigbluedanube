package com.revature.tier1;

public class User {
	private int id;
	private String firstName;
	private String lastName;
	private String userName;
	private String password;
	private String role;
	
	
	public User(int id, String firstName, String lastName, String userName, String password, String role) {
		this.setId(id);
		this.setFirstName(firstName);
		this.setLastName(lastName);
		this.setUserName(userName);
		this.setPassword(password);
		this.setRole(role);
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
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


	public String getRole() {
		return role;
	}


	public void setRole(String role) {
		this.role = role;
	}
	
	
}
