package com.uca.capas.service;

import java.util.List;

import com.uca.capas.domain.Empleado;

public interface EmpleadoService{
	
	public List<Empleado> findAll();
	
	public Empleado findOne(Integer id);
}
