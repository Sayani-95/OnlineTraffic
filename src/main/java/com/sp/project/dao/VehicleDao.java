package com.sp.project.dao;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.sp.project.model.Vehicle;

public class VehicleDao {
	JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public int create(Vehicle vehicle) {
        return jdbcTemplate.update("insert into vehicle_details (vehicle_type, vehicle_owner, vehicle_number) VALUE (?, ?, ?)", vehicle.getVehicle_type(), vehicle.getVehicle_owner(), vehicle.getVehicle_number());
    }

    public Vehicle read(int id) {
        try {
            return jdbcTemplate.queryForObject("select * from vehicle_details where vehicle_id = ?", new Object[]{id}, new BeanPropertyRowMapper<>(Vehicle.class));
        } catch (Exception exception) {
            return null;
        }
    }

    public int update(Vehicle vehicle) {
        int update = jdbcTemplate.update("update vehicle_details set vehicle_type = ?, vehicle_owner = ?, vehicle_number= ?  where vehicle_id = ?",  vehicle.getVehicle_type(), vehicle.getVehicle_owner(), vehicle.getVehicle_number(), vehicle.getVehicle_id());
        return update;
    }
    public int delete(int vehicle_id) {
        return jdbcTemplate.update("delete from vehicle_details where vehicle_id = ?", vehicle_id);
    }

    public List<Vehicle> list() {
        return jdbcTemplate.query("select * from vehicle_details", (resultSet, vehicle) -> new Vehicle(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3), resultSet.getString(4)));
    }

    public int count() {
        return jdbcTemplate.queryForObject("select count(*) from vehicle_details", Integer.class);
    }
}
