package com.uca.capas.service;

import java.util.List;

import com.uca.capas.domain.Sucursal;

public interface SucursalService {
	
	public List<Sucursal> findAll();
	
	public Sucursal save(Sucursal s);
	
	public Sucursal findOne(Integer id);
	
	public void delete(Integer id);
}
