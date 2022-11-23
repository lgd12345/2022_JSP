package dao;

import java.util.ArrayList;

import dto.Person;

public class PersonRepository2 {
	
	private ArrayList<Person> listOfPerson = new ArrayList<Person>();
	private static PersonRepository2 instance = new PersonRepository2();

	public static PersonRepository2 getInstance(){
		return instance;
	} 

	public PersonRepository2() { //더미데이터 3개 폰테블릿노트북
		Person p1 = new Person();
		p1.setId("lee");
		p1.setName("이야옹");
		p1.setEmail("lee@naver.com");
		
		Person p2 = new Person();
		p2.setId("lee");
		p2.setName("이야옹이");
		p2.setEmail("lee@naver.com");
		
		Person p3 = new Person();
		p3.setId("lee");
		p3.setName("이야옹삼");
		p3.setEmail("lee@naver.com");
	


		listOfPerson.add(p1);
		listOfPerson.add(p2);
		listOfPerson.add(p3);
	}

	public ArrayList<Person> getAllPerson() {
		return listOfPerson;
	}
	
	public Person getPersonById(String personId) {
		Person personById = null;

		for (int i = 0; i < listOfPerson.size(); i++) {
			Person person = listOfPerson.get(i);
			if (person != null && person.getId() != null && person.getName().equals(personId)) {
				personById = person;
				break;
			}
		}
		return personById;
	}
	
	public void addProduct(Person person) {
		listOfPerson.add(person);
	}
}
