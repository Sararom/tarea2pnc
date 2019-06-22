package com.uca.capas.domain;


import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Positive;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(schema="public",name="sucursal")
public class Sucursal {
	
	//Establecemos el parametro id, tambien la secuencia a la que hace referencia
	@Id
	@GeneratedValue(generator="sucursal_codigo_suc_seq",strategy=GenerationType.AUTO)
	@SequenceGenerator(name="sucursal_codigo_suc_seq",sequenceName="public.sucursal_codigo_suc_seq",allocationSize = 1)
	@Column(name="codigo_suc")
	private Integer cSuc;
	
	@Column(name="nombre_suc")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String sucName;
	
	@Column(name="ubicacion")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String ubic;
	
	@Column(name="horarios")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String horarios;
	
	@Column(name="n_mesas")
	@NotNull(message = "Campo requerido")
	@Positive(message="El numero de mesas no puede ser negativo")
	private Integer numMesas;
	
	@Column(name="nomb_ger")
	@NotEmpty(message="Este campo no puede estar vacio")
	private String nomGer;
	
	@OneToMany(mappedBy="sucursal",cascade = { CascadeType.MERGE, CascadeType.REFRESH, CascadeType.DETACH, CascadeType.REMOVE},fetch=FetchType.EAGER)
	private List<Empleado> empleados;
	
	public Sucursal() {}
	
	//Setters y Getters

	public Integer getcSuc() {
		return cSuc;
	}

	public void setcSuc(Integer cSuc) {
		this.cSuc = cSuc;
	}

	public String getSucName() {
		return sucName;
	}

	public void setSucName(String sucName) {
		this.sucName = sucName;
	}

	public String getUbic() {
		return ubic;
	}

	public void setUbic(String ubic) {
		this.ubic = ubic;
	}

	public String getHorarios() {
		return horarios;
	}

	public void setHorarios(String horarios) {
		this.horarios = horarios;
	}

	public Integer getNumMesas() {
		return numMesas;
	}

	public void setNumMesas(Integer numMesas) {
		this.numMesas = numMesas;
	}

	public String getNomGer() {
		return nomGer;
	}

	public void setNomGer(String nomGer) {
		this.nomGer = nomGer;
	}

	public List<Empleado> getEmpleados() {
		return empleados;
	}

	public void setEmpleados(List<Empleado> empleados) {
		this.empleados = empleados;
	}
	
}
