package com.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.entities.Customer;

@Controller
public class WelcomeController {
	

	
	@RequestMapping("/")
	public String home(Model m) {
		String page= "home";
		m.addAttribute("page",page);
		return "home";
	}
	
	@RequestMapping("/signUp")
	public String signUp(Model m, @ModelAttribute("customer") Customer customer){
		String page = "signUp";
		m.addAttribute("page", page);
		return "signUp";
	}
	
	@RequestMapping(value = "/register",method = RequestMethod.POST)
	public String register(Model m, @Valid @ModelAttribute("customer") Customer customer,BindingResult br) {
		if(br.hasErrors()) {
			String page = "signUp";
			m.addAttribute("page", page);
			return "signUp";
		}
		String page = "register";
		System.out.println("Customer name :" + customer.getName());
		
		m.addAttribute("page", page);
		
		return "signUp";
	}

}
