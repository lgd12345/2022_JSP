package dao;

import java.util.ArrayList;

import dto.Animal;

public class AnimalRepository {
	
	private ArrayList<Animal> listOfAniaml = new ArrayList<Animal>();
	private static AnimalRepository instance = new AnimalRepository();

	public static AnimalRepository getInstance(){
		return instance;
	} 

	public AnimalRepository() { 
		Animal r = new Animal();
		r.setId("A1");
		r.setName("토끼");
		r.setUnitPrice(100000);
		r.setFilename("A123.jpg");
		
		Animal d = new Animal();
		d.setId("A2");
		d.setName("개");
		d.setUnitPrice(100000);
		d.setFilename("A456.jpg");
		
		Animal b = new Animal();
		b.setId("A3");
		b.setName("새");
		b.setUnitPrice(100000);
		b.setFilename("A789.jpg");
		
		Animal c = new Animal();
		c.setId("A4");
		c.setName("병아리");
		c.setUnitPrice(100000);
		c.setFilename("A987.jpg");
	

		listOfAniaml.add(r);
		listOfAniaml.add(d);
		listOfAniaml.add(b);
		listOfAniaml.add(c);
	}

	public ArrayList<Animal> getAllAnimal() {
		return listOfAniaml;
	}
	
	public Animal getAnimalById(String id) {
		Animal animalById = null;

		for (int i = 0; i < listOfAniaml.size(); i++) {
			Animal animal = listOfAniaml.get(i);
			if (animal != null && animal.getId() != null && animal.getId().equals(id)) {
				animalById = animal;
				break;
			}
		}
		return animalById;
	}
	
	public void addAnimal(Animal animal) {
		listOfAniaml.add(animal);
	}
}
