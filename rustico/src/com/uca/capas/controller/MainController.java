package com.uca.capas.controller;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.domain.Empleado;
import com.uca.capas.domain.Sucursal;
import com.uca.capas.domain.Users;
import com.uca.capas.service.EmpleadoService;
import com.uca.capas.service.SucursalService;
import com.uca.capas.service.UserService;

@Controller
public class MainController {
	
	
	//Objeto Logger
	static Logger log = Logger.getLogger(MainController.class.getName());
	
	@Autowired
	UserService userServ;
	
	@Autowired
	SucursalService sucServ;
	
	@Autowired
	EmpleadoService empServ;
	
	//Controlador principal
	@RequestMapping("/")
	public ModelAndView initMain(){
		log.info("Entrando a funcion init-main " + log.getName());
		ModelAndView mav = new ModelAndView();
		Users user = new Users();		
		mav.addObject("user",user);
		mav.setViewName("login");
		return mav;
	}
	
	@RequestMapping(value="/verify",method=RequestMethod.POST)
	public ModelAndView validate(@RequestParam(value = "userName") String name,
			@RequestParam(value="pwd") String pwd,
		HttpServletResponse response){
		ModelAndView mav = new ModelAndView();
			if(userServ.findUser(name, pwd)==null) {
				mav.setViewName("login");
				mav.addObject("message", "Username or Password is wrong!!");
				return mav;
			} else {
				return new ModelAndView("redirect:/principal");
			}
	}
	
	@RequestMapping("/principal")
	public ModelAndView main(){
		log.info("Entrando a funcion init-main " + log.getName());
		ModelAndView mav = new ModelAndView();
		List<Sucursal> sucursal = null;
		try {
		 sucursal = sucServ.findAll();
		}
		catch(Exception e){
			log.log(Level.SEVERE,"Exception Occur",e);
		}
		mav.addObject("sucursales",sucursal);
		mav.setViewName("main");
		return mav;
	}
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public ModelAndView insert() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("sucursales",new Sucursal());
		mav.setViewName("form");
		return mav; 
	}
	
	@RequestMapping(value="/addEmp",method=RequestMethod.POST)
	public ModelAndView insertEmp(@RequestParam(value="code") Integer code) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("empleado",new Empleado());
		mav.addObject("codigoSuc",code);
		mav.setViewName("formEmp");
		return mav; 
	}
	
	@RequestMapping(value="/formData")
	public ModelAndView save(@ModelAttribute Sucursal s) {
		ModelAndView mav = new ModelAndView();
		List<Sucursal> sucursales = null;
		sucServ.save(s);
		sucursales = sucServ.findAll();
		mav.addObject("sucursales",sucursales);
		mav.setViewName("main");
		return mav;
		
	}
	
	@RequestMapping(value="/formDataEmp")
	public ModelAndView save(@ModelAttribute Empleado s, @RequestParam(value="codeSuc") Integer codeSuc) {
		ModelAndView mav = new ModelAndView();
		Sucursal suc = new Sucursal();
		suc = sucServ.findOne(codeSuc);
		s.setSucursal(suc);
		if(s.getActivoDelegate().isBlank()) {
			s.setEstado(false);
		}else{s.setEstado(true);}
		empServ.save(s);
		mav.addObject("code", codeSuc);
		mav.setViewName("redirect:/profile/");
		return mav;
		
	}
	
	@RequestMapping(value="/update",method=RequestMethod.POST)
	public ModelAndView update(@RequestParam(value="code") Integer code) {
		ModelAndView mav = new ModelAndView();
		Sucursal sucursal = new Sucursal();
		sucursal =sucServ.findOne(code);
		mav.addObject("sucursales",sucursal);
		mav.setViewName("form");
		return mav; 
	}
	
	@RequestMapping(value="/updateEmp",method=RequestMethod.POST)
	public ModelAndView updateEmp(@RequestParam(value="code") Integer codeSuc,
			@RequestParam(value="codeEmp") Integer codeEmp) {
		ModelAndView mav = new ModelAndView();
		Empleado empleado = new Empleado();
		empleado = empServ.findOne(codeEmp);
		mav.addObject("empleado",empleado);
		mav.addObject("codigoSuc",codeSuc);
		mav.setViewName("formEmp");
		return mav; 
	}
	
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	public ModelAndView delete(@RequestParam(value="code") Integer code) {
		ModelAndView mav = new ModelAndView();
		List<Sucursal> sucursales = null;
		sucServ.delete(code);
		sucursales = sucServ.findAll();
		mav.addObject("code", code);
		mav.addObject("sucursales",sucursales);
		mav.setViewName("redirect:/principal");
		return mav; 
	}
	
	@RequestMapping(value="/deleteEmp",method=RequestMethod.POST)
	public ModelAndView deleteEmp(@RequestParam(value="code") Integer code,
			@RequestParam(value="codeEmp") Integer codeEmp) {
		ModelAndView mav = new ModelAndView();
		empServ.delete(codeEmp);
		mav.addObject("code", code);
		mav.setViewName("redirect:/profile/");
		return mav;
	}
	
	@RequestMapping(value="/profile",method=RequestMethod.GET)
	public ModelAndView perfil(@RequestParam(value="code") Integer code) {
		ModelAndView mav = new ModelAndView();
		Sucursal sucursales = new Sucursal();
		List<Empleado> empleados = null;
		sucursales=sucServ.findOne(code);
		mav.addObject("sucursales",sucursales);
		empleados= sucServ.findOne(code).getEmpleados();
		mav.addObject("empleados",empleados);
		mav.setViewName("profile");
		return mav;
	}
}
