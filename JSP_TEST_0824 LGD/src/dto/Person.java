package dto;

import java.io.Serializable;

public class Person implements Serializable {
	//해당클래스의 변경 유무를 확인하기 위한 아이디
	private static final long serialVersionUID = -4274700572038677000L;

	private String id;
	private String name;
	private String email;
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
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
	
	
}
