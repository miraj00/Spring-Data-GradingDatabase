package com.grandcircus.gradingdatabase.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.grandcircus.gradingdatabase.model.Grade;

public interface GradeRepository extends JpaRepository<Grade, Long> {

	// List<Grade> gradesToDelete (int id);
	 
	// List<Grade> gradesToAdd ();
	
	
}



