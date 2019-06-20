package com.uca.capas.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.uca.capas.domain.Users;

public interface UsersRepository extends JpaRepository<Users, Integer> {

	Users findByUserNameAndPass(String name, String pass);
	
}
