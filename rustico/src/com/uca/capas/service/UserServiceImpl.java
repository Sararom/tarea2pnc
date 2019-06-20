package com.uca.capas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.uca.capas.domain.Users;
import com.uca.capas.repositories.UsersRepository;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UsersRepository userRepository;

	@Override
	public List<Users> findAll() throws DataAccessException {
		// TODO Auto-generated method stub
		return userRepository.findAll();
	}

	@Override
	public Users findUser(String name, String pass) throws DataAccessException {
		// TODO Auto-generated method stub
		return userRepository.findByUserNameAndPass(name,pass);
	}

	@Override
	public Users findOne(Integer codigo) throws DataAccessException {
		// TODO Auto-generated method stub
		return userRepository.getOne(codigo);
	}
	
}
