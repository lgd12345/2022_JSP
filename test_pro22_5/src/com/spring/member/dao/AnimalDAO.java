package com.spring.member.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.spring.member.vo.AnimalVO;



public interface AnimalDAO {
	public List selectAllAnimals() throws DataAccessException ;
	public int addAnimal(AnimalVO animalVO) throws DataAccessException;

}
