package com.app.vms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.vms.form.VisitorForm;
import com.app.vms.model.Visitor;
import com.app.vms.service.VisitorService;

@Controller
@RequestMapping("/visitors")
public class VisitorsPageController {

	@Autowired
	private VisitorService visitorService;
	
	@GetMapping("/visitors")
    public String employeeForm(ModelMap model) {
		model.addAttribute("visitorForm", new VisitorForm());
        
        List<Visitor> allVisitors = visitorService.getAllVisitors();
		model.addAttribute("allVisitors", allVisitors);
        
        return "visitorsPage";
    }
	
	@GetMapping("/delete")
    public String deleteEmployee(ModelMap model, @RequestParam(name = "visitorId") int visitorId) {
        model.addAttribute("visitorForm", new VisitorForm());
        
        visitorService.deleteEmployee(visitorId);
        
        List<Visitor> allVisitors = visitorService.getAllVisitors();
		model.addAttribute("allVisitors", allVisitors);
        
        return "visitorsPage";
    }
	
	

    @PostMapping("/addVisitor")
    public String employeeSubmit(@ModelAttribute VisitorForm visitorForm, ModelMap model) {
    	
    	 model.addAttribute("visitorForm", new VisitorForm());
    		
        	Visitor visitor = new Visitor();
        	
        	visitor.setVisitorId(visitorForm.getVisitorId());
        	visitor.setFirstName(visitorForm.getVisitorName());
        	visitor.setEmail(visitorForm.getEmail());
        	visitor.setPhoneNumber(visitorForm.getPhoneNumber());
        	visitor.setCompany(visitorForm.getCompany());
        	
        	visitorService.saveVisitor(visitor);	
    	
    	
    	
    	 List<Visitor> allVisitors = visitorService.getAllVisitors();
		model.addAttribute("allVisitors", allVisitors);
    	
        return "visitorsPage";
    }
	
	
	
}
