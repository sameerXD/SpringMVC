package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.entities.Blog;
import com.entities.Login;

@Controller
public class WelcomeController {

	@RequestMapping("/home")
	public String home(Model m) {
		String str = "HOME";
		m.addAttribute("page", str);
		return "home";
	}
	
	@RequestMapping("/login")
	public String login(Model m) {
		Login l = new Login();
		String page = "login";
		m.addAttribute("page", page);
		m.addAttribute("login", l);
		return "login";
	}
	
	@RequestMapping(value = "/logined" ,method = RequestMethod.POST)
	public String logined(@ModelAttribute("login") Login l, Model m) {
	    String page = "login";
		String email = l.getEmail();
		String password = l.getPassword();
		if(email.equalsIgnoreCase("sameer") && password.equalsIgnoreCase("sameer")) {
			System.out.println("match");
			page = "logined";
			m.addAttribute("email", l.getEmail());
		}
		m.addAttribute("page", page);
		System.out.println(l);
		
		return "login";
	}
	
	@RequestMapping(value = "/blog" ,method = RequestMethod.GET)
	public String blog(@RequestParam(required = false, name = "title") String title,@RequestParam(required = false, name = "blog") String content, Model m) {
		Blog b = new Blog();
		b.setTitle(title);
		b.setBlog(content);
		System.out.println(b);
		m.addAttribute("blog", b);
		return "blog";
	}

}