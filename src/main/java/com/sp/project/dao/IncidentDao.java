package com.sp.project.dao;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.sp.project.model.Incident;


public class IncidentDao {
	JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public int create(Incident incident) {
        return jdbcTemplate.update("insert into incident (incident_type, incident_description) VALUE (?, ?)", incident.getIncident_type(), incident.getIncident_description());
    }

    public Incident read(int id) {
        try {
            return jdbcTemplate.queryForObject("select * from incident where incident_id = ?", new Object[]{id}, new BeanPropertyRowMapper<>(Incident.class));
        } catch (Exception exception) {
            return null;
        }
    }

    public int update(Incident incident) {
        return jdbcTemplate.update("update incident set incident_type = ?, incident_description = ? where incident_id = ?", incident.getIncident_type(), incident.getIncident_description(), incident.getIncident_id());
    }
    public int delete(int id) {
        return jdbcTemplate.update("delete from incident where incident_id = ?", id);
    }

    public List<Incident> list() {
        return jdbcTemplate.query("select * from incident", (resultSet, incident) -> new Incident(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3)));
    }
    
    public int count() {
        return jdbcTemplate.queryForObject("select count(*) from incident", Integer.class);
    }
}
