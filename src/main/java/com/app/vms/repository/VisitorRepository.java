package com.app.vms.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.app.vms.model.Visitor;

@Repository
public interface VisitorRepository extends JpaRepository<Visitor, Integer> {

}
