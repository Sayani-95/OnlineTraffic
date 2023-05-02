package com.sp.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="incident")
public class Incident {
	@Id
	@Column(name="incident_id")
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private int incident_id;
	public String incident_type;
	public String incident_description;
	
	public Incident() {
		
	}
	public Incident (int incident_id, String incident_type, String incident_description) {
		this.incident_id=incident_id;
		this.incident_type=incident_type;
		this.incident_description=incident_description;
	}
	public Incident (String incident_type, String incident_description) {
		this.incident_type=incident_type;
		this.incident_description=incident_description;
	}
	public int getIncident_id() {
		return incident_id;
	}
	public void setIncident_id(int incident_id) {
		this.incident_id = incident_id;
	}
	public String getIncident_type() {
		return incident_type;
	}
	public void setIncident_type(String incident_type) {
		this.incident_type = incident_type;
	}
	public String getIncident_description() {
		return incident_description;
	}
	public void setIncident_description(String incident_description) {
		this.incident_description = incident_description;
	}
}
