package com.grandcircus.gradingdatabase.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.grandcircus.gradingdatabase.model.Grade;

public interface GradeRepository extends JpaRepository<Grade, Long> {

	// List<Grade> grades ();
	
	
}



