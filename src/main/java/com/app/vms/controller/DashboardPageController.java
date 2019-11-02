package com.app.vms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/dashboard")
public class DashboardPageController {

	@GetMapping("/dashboard")
    public String dashboardPage(ModelMap model) {
        
        
        return "dashboardPage";
    }
	
	
	
	
}
