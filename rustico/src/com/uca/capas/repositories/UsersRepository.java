package com.uca.capas.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.uca.capas.domain.Users;

@Repository
public interface UsersRepository extends JpaRepository<Users, Integer> {

	Users findByUserNameAndPass(String name, String pass);
	
}
