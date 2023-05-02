package com.sp.project.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sp.project.dao.VehicleDao;
import com.sp.project.model.Vehicle;

@Controller
@RequestMapping
public class VehicleController {
	VehicleDao vehicleDao;

    public VehicleController(VehicleDao vehicleDao) {
        this.vehicleDao = vehicleDao;
    }

    @RequestMapping("vehicle/create")
    public String create(Model model) {
        model.addAttribute("vehicle", new Vehicle());
        return "add-vehicle";
    }

    @PostMapping(value="vehicle/create")
    public String create(@ModelAttribute("create") Vehicle vehicle) {
    	vehicleDao.create(vehicle);
        return "redirect:/vehicle/record";
    }

    @RequestMapping("vehicle/record")
    public String list(Model model) {
        List<Vehicle> vehicle = vehicleDao.list();
        model.addAttribute("vehicle", vehicle);
        return "vehicle-record";
    }
    @RequestMapping(value="vehicle/edit/{id}")
    public String update(@PathVariable int id, Model model) {
        Vehicle vehicle = vehicleDao.read(id);
        model.addAttribute("vehicle", vehicle);
        return "edit-vehicle";
    }

    @RequestMapping(value="vehicle/update", method = RequestMethod.POST)
    public String update(@ModelAttribute("vehicle") Vehicle vehicle) {
    	vehicleDao.update(vehicle);
        return "redirect:/vehicle/record";
    }
}
