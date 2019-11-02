package com.app.vms.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.app.vms.model.Visitor;

@Service
public interface VisitorService {

	public List<Visitor> getAllVisitors();
	public void saveVisitor(Visitor visitor);
	public void deleteEmployee(int visitorId);
}
