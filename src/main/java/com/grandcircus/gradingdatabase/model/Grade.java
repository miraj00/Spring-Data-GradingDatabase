package com.grandcircus.gradingdatabase.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "grade")
public class Grade {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String name;
	private String type;
	private Double score;
	private Double total;

	
	public Grade() {
		
	}
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Double getScore() {
		return score;
	}
	public void setScore(Double score) {
		this.score = score;
	}
	public Double getTotal() {
		return total;
	}
	public void setTotal(Double total) {
		this.total = total;
	}
	
	public Grade(long id, String name, String type, Double score, Double total) {
		super();
		this.id = id;
		this.name = name;
		this.type = type;
		this.score = score;
		this.total = total;
	}
	
	@Override
	public String toString() {
		return "Grade [id=" + id + ", name=" + name + ", type=" + type + ", score=" + score + ", total=" + total + "]";
	}
	
	
}
