package com.uca.capas.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uca.capas.domain.Sucursal;
import com.uca.capas.repositories.SucursalRepository;

@Service
public class SucursalServiceImpl implements SucursalService{

	@Autowired
	SucursalRepository sucRepo;
	
	@Override
	public List<Sucursal> findAll() {
		// TODO Auto-generated method stub
		return sucRepo.findAll();
	}

	@Override
	public Sucursal save(Sucursal s) {
		// TODO Auto-generated method stub
		return sucRepo.save(s);
	}

	@Override
	public Sucursal findOne(Integer id) {
		// TODO Auto-generated method stub
		return sucRepo.findById(id).get();
	}

	@Override
	public void delete(Integer id) {
		sucRepo.deleteById(id);
		
	}

}
