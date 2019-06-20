package com.uca.capas.controller;

import java.util.logging.Logger;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.domain.Users;
import com.uca.capas.service.UserService;

@Controller
public class MainController {
	
	
	//Objeto Logger
	static Logger log = Logger.getLogger(MainController.class.getName());
	
	@Autowired
	UserService userServ;
	
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
			} else {
				mav.setViewName("main");
			}
			return mav;
	}
}
