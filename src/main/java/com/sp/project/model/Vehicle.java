package com.sp.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="vehicle_details")
public class Vehicle {
	@Id
	@Column(name="vehicle_id")
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private int vehicle_id;
	private String vehicle_type;
	private String vehicle_owner;
	private String vehicle_number;
	
	public Vehicle() {
		
	}
	public Vehicle (String vehicle_type, String vehicle_owner, String vehicle_number) {
		this.vehicle_type=vehicle_type;
		this.vehicle_owner=vehicle_owner;
		this.vehicle_number=vehicle_number;
	}
	public Vehicle (int vehicle_id,String vehicle_type, String vehicle_owner, String vehicle_number) {
		this.vehicle_id=vehicle_id;
		this.vehicle_type=vehicle_type;
		this.vehicle_owner=vehicle_owner;
		this.vehicle_number=vehicle_number;
	}
	public int getVehicle_id() {
		return vehicle_id;
	}
	public void setVehicle_id(int vehicle_id) {
		this.vehicle_id = vehicle_id;
	}
	public String getVehicle_type() {
		return vehicle_type;
	}
	public void setVehicle_type(String vehicle_type) {
		this.vehicle_type = vehicle_type;
	}
	public String getVehicle_owner() {
		return vehicle_owner;
	}
	public void setVehicle_owner(String vehicle_owner) {
		this.vehicle_owner = vehicle_owner;
	}
	public String getVehicle_number() {
		return vehicle_number;
	}
	public void setVehicle_number(String vehicle_number) {
		this.vehicle_number = vehicle_number;
	}
	
}
