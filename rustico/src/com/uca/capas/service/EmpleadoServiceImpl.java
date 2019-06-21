package com.uca.capas.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uca.capas.domain.Empleado;
import com.uca.capas.repositories.EmpleadoRepository;

@Service
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
		return empRepo.findById(id).get();
	}
	
	@Override
	public Empleado save(Empleado e) {
		// TODO Auto-generated method stub
		return empRepo.save(e);
	}
	
	@Override
	public void delete(Integer id) {
		empRepo.deleteById(id);
	}

}
