package com.spring.ex01;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.FileSystemResource;

public class PersonTest {

	public static void main(String[] args) {
		BeanFactory factory = new XmlBeanFactory(new FileSystemResource("person.xml"));
		PersonService person = (PersonService) factory.getBean("personService");
		PersonService person2 = (PersonService) factory.getBean("personService2");
		// PersonService person = new PersonServiceImpl();
		person.sayHello();
		person2.sayHello();
	}

}
