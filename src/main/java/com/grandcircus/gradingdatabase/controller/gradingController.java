package com.grandcircus.gradingdatabase.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grandcircus.gradingdatabase.model.Grade;
import com.grandcircus.gradingdatabase.repository.GradeRepository;




@Controller
public class gradingController {

	
	@Autowired
	private GradeRepository repo;
	
	@RequestMapping("/")
	public String home(Model model) {
		
		List<Grade> grade;
		grade = repo.findAll(Sort.by("name"));
		
		model.addAttribute("grade", grade);
		return "home";
	}
		
	@RequestMapping("/grades/add")
	public String addGrade() {		
		return "add";
	}
	
	@PostMapping("/grades/add")
	public String submitAdd(Grade grade,
			@RequestParam String name, 
			@RequestParam String type,
			@RequestParam double score,
			@RequestParam double total,
			Model model) {	
		
		repo.save(grade); 	 // "save" is used for both update and create
		
		model.addAttribute("name", name);
		model.addAttribute("type", type );
		model.addAttribute("score", score);
		model.addAttribute("total", total);
		
		return "confirm";
	}
	
	@RequestMapping("/grades/{id}")
	public String remove(@RequestParam Long id) {
	
		
		repo.deleteById(id);
		return "home";
	}
	
	
}
