package com.uca.capas.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.uca.capas.domain.Empleado;

public interface EmpleadoService{
	
	public List<Empleado> findAll()throws DataAccessException;
	
	public Empleado findOne(Integer id)throws DataAccessException;

	public Empleado save(Empleado e)throws DataAccessException;

	public void delete(Integer id);
}
