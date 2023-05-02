package com.sp.project.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sp.project.dao.IncidentDao;
import com.sp.project.dao.TicketDao;
import com.sp.project.dao.VehicleDao;
import com.sp.project.model.Incident;
import com.sp.project.model.Ticket;
import com.sp.project.model.Vehicle;


@Controller
public class TicketController {
    TicketDao ticketDao;
    VehicleDao vehicleDao;
    IncidentDao incidentDao;

    public TicketController(TicketDao ticketDao, VehicleDao vehicleDao, IncidentDao incidentDao) {
        this.ticketDao = ticketDao;
        this.vehicleDao = vehicleDao;
        this.incidentDao = incidentDao;
    }

    @RequestMapping("ticket/create")
    public String create(Model model) {
        if (vehicleDao.count() == 0) {
            return "redirect:/vehicle/create";
        }
        if (incidentDao.count() == 0) {
            return "redirect:/incident/create";
        }
        model.addAttribute("ticket", new Ticket());
        model.addAttribute("vehicle", vehicleDao.list());
        model.addAttribute("incident", incidentDao.list());
        return "add-ticket";
    }

    @PostMapping(value="ticket/create")
    public String create(@ModelAttribute("ticket") Ticket ticket) {
    	ticketDao.create(ticket);
        return "redirect:/ticket/record";
    }

    @RequestMapping("/ticket/record")
    public String list(Model model) {
        List<Ticket> ticket = ticketDao.getTicket();
        for (Ticket tickets:
             ticket) {
            addVehicleAndIncidentDetails(tickets);
        }
        model.addAttribute("ticket", ticket);
        return "ticket-list";
    }



	@RequestMapping(value="ticket/edit/{id}")
    public String update(@PathVariable int id, Model model) {
        Ticket ticket = ticketDao.read(id);
        addVehicleAndIncidentDetails(ticket);
        model.addAttribute("ticket", ticket);
        model.addAttribute("vehicle", vehicleDao.list());
        model.addAttribute("incident", incidentDao.list());
        return "edit-ticket";
    }

    @PostMapping(value="ticket/update")
    public String update(@ModelAttribute("ticket") Ticket ticket) {
        ticketDao.update(ticket);
        return "redirect:/ticket/record";
    }

   
    private void addVehicleAndIncidentDetails(Ticket ticket) {
  	  Vehicle vehicle = vehicleDao.read(ticket.getVehicle_id());
        Incident incident = incidentDao.read(ticket.getIncident_id());
        ticket.setVehicle_details(vehicle.getVehicle_owner()+ " - "+vehicle.getVehicle_number());
        ticket.setIncident_details(incident.getIncident_type());
    }
    
}
