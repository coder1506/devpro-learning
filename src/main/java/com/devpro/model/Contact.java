package com.devpro.model;

public class Contact {

	private String firstname;
	private String lastname;
	private String subject;

	public String getFirstname() {
//		return "gọi hàm get: " + firstname;
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

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

}
