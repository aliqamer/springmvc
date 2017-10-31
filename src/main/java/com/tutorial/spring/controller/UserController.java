package com.tutorial.spring.controller;

import java.util.Locale;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.tutorial.spring.model.User;
import com.tutorial.spring.service.UserService;

/**
 * https://howtodoinjava.com/spring5/webmvc/spring5-mvc-hibernate5-example/
 * 
 * run the application using maven tomcat7 plugin. Execute maven goal : tomcat7:run.
	URL: http://localhost:8080
 * @author Ali
 *
 */
@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@GetMapping("/")
	public String userForm(Locale locale, Model model) {
		
		model.addAttribute("users", userService.list());
		return "editUsers";
	}
	
	@ModelAttribute("user")
	public User formBackingObject() {
		
		return new User();
	}
	
	@PostMapping("/addUser")
	public String saveUser(@ModelAttribute("user") @Valid User user, 
			BindingResult bindingResult, Model model) {
		
		if(bindingResult.hasErrors()) {
			model.addAttribute("users", userService.list());
			return "editUsers";
		}
		userService.save(user);
		return "redirect:/";
	}
	
}
