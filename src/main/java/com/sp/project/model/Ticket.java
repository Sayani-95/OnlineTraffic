package com.sp.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ticket_details")
public class Ticket {
	@Id
	@Column(name="ticket_id")
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	 int id;
	int vehicle_id;
	String vehicle_details;
	int incident_id;
	String incident_details;
	String ticket_fine;
	String ticket_date;
	
	public Ticket() {}
	public Ticket (int vehicle_id, int incident_id, String ticket_fine, String ticket_date) {
		this.vehicle_id= vehicle_id;
		this.incident_id=incident_id;
		this.ticket_fine=ticket_fine;
		this.ticket_date=ticket_date;
	}
	public Ticket (int id, int vehicle_id, int incident_id, String ticket_fine, String ticket_date) {
		this.id=id;
		this.vehicle_id= vehicle_id;
		this.incident_id=incident_id;
		this.ticket_fine=ticket_fine;
		this.ticket_date=ticket_date;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getVehicle_id() {
		return vehicle_id;
	}
	public void setVehicle_id(int vehicle_id) {
		this.vehicle_id = vehicle_id;
	}
	public String getVehicle_details() {
		return vehicle_details;
	}
	public void setVehicle_details(String vehicle_details) {
		this.vehicle_details = vehicle_details;
	}
	public int getIncident_id() {
		return incident_id;
	}
	public void setIncident_id(int incident_id) {
		this.incident_id = incident_id;
	}
	public String getIncident_details() {
		return incident_details;
	}
	public void setIncident_details(String incident_details) {
		this.incident_details = incident_details;
	}
	public String getTicket_fine() {
		return ticket_fine;
	}
	public void setTicket_fine(String ticket_fine) {
		this.ticket_fine = ticket_fine;
	}
	public String getTicket_date() {
		return ticket_date;
	}
	public void setTicket_date(String ticket_date) {
		this.ticket_date = ticket_date;
	}
}
	

