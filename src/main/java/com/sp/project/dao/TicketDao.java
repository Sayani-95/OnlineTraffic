package com.sp.project.dao;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.sp.project.model.Ticket;

public class TicketDao {
	JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public int create(Ticket ticket) {
        return jdbcTemplate.update("insert into ticket_details (vehicle_id, incident_id,ticket_fine,ticket_date) VALUE (?, ?, ?, ?)", ticket.getVehicle_id(), ticket.getIncident_id(), ticket.getTicket_fine(), ticket.getTicket_date());
    }

    public Ticket read(int id) {
        try {
            return jdbcTemplate.queryForObject("select * from ticket_details where ticket_id = ?", new Object[]{id}, new BeanPropertyRowMapper<>(Ticket.class));
        } catch (Exception exception) {
            return null;
        }
    }

    public int update(Ticket ticket) {
        return jdbcTemplate.update("update ticket_details set vehicle_id = ?, incident_id = ?, ticket_fine=?,ticket_date=?  where ticket_id = ?", ticket.getVehicle_id(), ticket.getIncident_id(), ticket.getTicket_fine(), ticket.getTicket_date(), ticket.getId());
    }

    public int delete(int id) {
        return jdbcTemplate.update("delete from ticket_details where ticket_id = ?", id);
    }

    public List<Ticket> getTicket() {
        return jdbcTemplate.query("select * from ticket_details", (resultSet, ticket) -> new Ticket(resultSet.getInt(1), resultSet.getInt(2), resultSet.getInt(3), resultSet.getString(4), resultSet.getString(5)));
    }
}
