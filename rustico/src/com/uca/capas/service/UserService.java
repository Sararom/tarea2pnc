package com.uca.capas.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.uca.capas.domain.Users;

public interface UserService {

public List<Users> findAll() throws DataAccessException;
	

	public Users findOne(Integer codigo) throws DataAccessException;

	Users findUser(String name, String pass) throws DataAccessException;
	
}
