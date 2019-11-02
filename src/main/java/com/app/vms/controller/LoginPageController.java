package com.app.vms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.app.vms.form.LoginForm;

@Controller
public class LoginPageController {

	@GetMapping(value = "/")
    public String welcomePage(ModelMap model){
        
		return "welcomePage";
    }
	
	
	@GetMapping(value = "/login")
    public String showLoginPage(ModelMap model){
        
		return "loginPage";
    }
	
	@PostMapping(value = "/login")
    public String showLoginPage(ModelMap model, @ModelAttribute LoginForm loginForm){
        
		System.out.println(loginForm.getUserName()+"@@@@"+loginForm.getPassword()+"@@@@"+loginForm.getTenantCode());
		return "welcomePage";
    }
	
	
	@GetMapping(value = "/logout")
    public String showLogoutPage(ModelMap model){
        
		return "welcomePage";
    }
	
	
	
}
