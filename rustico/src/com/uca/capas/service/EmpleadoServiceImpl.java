package com.uca.capas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.uca.capas.domain.Empleado;
import com.uca.capas.repositories.EmpleadoRepository;

public class EmpleadoServiceImpl implements EmpleadoService{
	
	@Autowired
	EmpleadoRepository empRepo;
	
	@Override
	public List<Empleado> findAll() {
		// TODO Auto-generated method stub
		return empRepo.findAll();
	}

	@Override
	public Empleado findOne(Integer id) {
		// TODO Auto-generated method stub
		return empRepo.getOne(id);
	}

}
