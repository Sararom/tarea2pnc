package com.uca.capas.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table (schema="public",name="empleado")

public class Empleado {
	@Id
	@GeneratedValue(generator="empleado_codigo_emp_seq",strategy=GenerationType.AUTO)
	@SequenceGenerator(name="empleado_codigo_emp_seq",sequenceName="public.empleado_codigo_emp_seq",allocationSize = 1)
	@Column(name="codigo_emp")
	private Integer idEmp;
	
	@Column(name="nomb_emp")
	private String nomEmp;
	
	@Column(name="edad")
	private Integer edad;
	
	@Column(name="genero")
	private String genero;
	
	@Column(name="estado")
	private Boolean estado;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="sucursal_fk")
	private Sucursal sucursal;
	
	public Empleado() {}

	public Integer getIdEmp() {
		return idEmp;
	}

	public void setIdEmp(Integer idEmp) {
		this.idEmp = idEmp;
	}

	public String getNomEmp() {
		return nomEmp;
	}

	public void setNomEmp(String nomEmp) {
		this.nomEmp = nomEmp;
	}

	public Integer getEdad() {
		return edad;
	}

	public void setEdad(Integer edad) {
		this.edad = edad;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	public Boolean getEstado() {
		return estado;
	}

	public void setEstado(Boolean estado) {
		this.estado = estado;
	}

	public Sucursal getSucursal() {
		return sucursal;
	}

	public void setSucursal(Sucursal sucursal) {
		this.sucursal = sucursal;
	}
	
	//Funciones delegate
		public String getActivoDelegate() {
			if(this.estado == null) return "";
			else {
				return estado == true ?"Activo":"Inactivo";
			}
		}
	
}
