package ch18.com.model;

public class Person {
	private String name;
	private String email;

	public String getId() {
		return name;
	}

	public void setId(String id) {
		this.name = id;
	}

	public String getPassword() {
		return email;
	}

	public void setPassword(String password) {
		this.email = password;
	}

	public boolean validate() {
		if (name.equals("관리자")) 
			return true;
		else
			return false;
		
	}

	@Override
	public String toString() {
		return "Person [id=" + name + ", password=" + email + "]";
	}
	
}
