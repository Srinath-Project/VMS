package com.app.vms.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.vms.model.Visitor;
import com.app.vms.repository.VisitorRepository;
import com.app.vms.service.VisitorService;

@Service
public class VisitorServiceImpl implements VisitorService{

	@Autowired
	private VisitorRepository visitorRepository;
	
	@Override
	public List<Visitor> getAllVisitors() {
		
		return visitorRepository.findAll();
	}

	@Override
	public void saveVisitor(Visitor visitor) {
		visitorRepository.save(visitor);
	}

	@Override
	public void deleteEmployee(int visitorId) {
		
		visitorRepository.deleteById(visitorId);
	}

}
