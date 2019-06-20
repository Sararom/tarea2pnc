package com.uca.capas.controller;

import java.util.logging.Logger;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.domain.Users;

/*import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;*/

@Controller
public class MainController {
	
	
	//Objeto Logger
	static Logger log = Logger.getLogger(MainController.class.getName());
	
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
	public ModelAndView validate(@RequestParam(value = "userName") String name,@RequestParam(value="pwd") String pwd){
		ModelAndView mav = new ModelAndView();
		Users user = new Users();		
		mav.addObject("user",user);
		mav.setViewName("login");
		return mav;
	}
}
