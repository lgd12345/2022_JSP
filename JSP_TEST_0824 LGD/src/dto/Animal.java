package dto;

import java.io.Serializable;

public class Animal implements Serializable {
	//해당클래스의 변경 유무를 확인하기 위한 아이디
	private static final long serialVersionUID = -4274700572038677000L;

	private String id;
	private String name;
	private Integer unitPrice;
	private String filename;
	private int quantity;
	
	public Animal() {
		super();
	}

	public Animal(String id, String name, Integer unitPrice) {
		this.id = id;
		this.name = name;
		this.unitPrice = unitPrice;
	}
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
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
	public Integer getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}

	
}
