package com.koitt.board.vo;

import java.io.Serializable;

public class Users implements Serializable {
	
	private static final long serialVersionUID = 8182883476282750550L;
	
	private Integer no;
	private String email;
	private String password;
	private String name;
	
	// 1. 기본생성자
	public Users() {}

	// 2. 생성자
	public Users(Integer no, String email, String password, String name) {
		super();
		this.no = no;
		this.email = email;
		this.password = password;
		this.name = name;
	}

	// 3. getter, setter
	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	// 4. HashCode
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((no == null) ? 0 : no.hashCode());
		result = prime * result + ((password == null) ? 0 : password.hashCode());
		return result;
	}

	// 5. equals
	@Override
	public boolean equals(Object obj) {
		if(this == obj) {
			return true;
		}
		if(!(obj instanceof Users)) {
			return false;
		}
		Users other = (Users) obj;
		if(this.no.equals(other.no)) {
			return true;
		}
		return false;
	}

	// 6. toString
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Users [no=");
		builder.append(no);
		builder.append(", email=");
		builder.append(email);
		builder.append(", password=");
		builder.append(password);
		builder.append(", name=");
		builder.append(name);
		builder.append("]");
		return builder.toString();
	}
	
	
	
	
	
	
	
	

}
