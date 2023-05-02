package com.sp.project.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sp.project.dao.IncidentDao;
import com.sp.project.model.Incident;

@Controller
@RequestMapping
public class IncidentController {
	IncidentDao incidentDao;

    public IncidentController(IncidentDao incidentDao) {
        this.incidentDao = incidentDao;
    }

    @RequestMapping("incident/create")
    public String create(Model model) {
        model.addAttribute("incident", new Incident());
        return "add-incident";
    }

    @PostMapping(value="incident/create")
    public String create(@ModelAttribute("create") Incident incident) {
    	incidentDao.create(incident);
        return "redirect:/incident/record";
    }

    @RequestMapping("incident/record")
    public String list(Model model) {
        List<Incident> incident = incidentDao.list();
        model.addAttribute("incident", incident);
        return "incident-list";
    }
    @RequestMapping(value="incident/edit/{id}")
    public String update(@PathVariable int id, Model model) {
    	Incident incident = incidentDao.read(id);
        model.addAttribute("incident", incident);
        return "edit-incident";
    }

    @RequestMapping(value="incident/update", method = RequestMethod.POST)
    public String update(@ModelAttribute("incident") Incident incident) {
    	incidentDao.update(incident);
        return "redirect:/incident/record";
    }
}
