package com.brayanalmengor04.employees.controller;

import com.brayanalmengor04.employees.entities.Employees;
import com.brayanalmengor04.employees.service.EmployeesService;
import jakarta.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;


@Controller
public class IndexController {
    private static final Logger logger = LoggerFactory.getLogger(IndexController.class);

    @Autowired
    EmployeesService employeesService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String initialize(ModelMap model) {
        List<Employees> employees = employeesService.getAllEmployees();

        //employees.forEach((employee) -> logger.info(employee.toString()));
        employees.forEach(employee -> logger.info(employee.toString()));

        // Compartir el modelo con la vista
        model.put("employees", employees);
        return "index";
    }
    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String showCreateEmployeeForm() {
        return "create";
    }

    @RequestMapping(value = "/create",method = RequestMethod.POST)
    public String addEmployee(@ModelAttribute("employeesForm") Employees employeesForm) {
        employeesService.addEmployee(employeesForm);
        return "redirect:/";
    }
    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String showEditEmployeeForm(@RequestParam("idEmployees") int id, ModelMap model) {
        Employees employee = employeesService.getEmployeeById(id);
        model.put("employee", employee);
        return "edit";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String updateEmployee(@ModelAttribute("employeeForm") Employees employeesForm) {
        employeesService.addEmployee(employeesForm);
        return "redirect:/";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public String deleteEmployee(@RequestParam("idEmployees") int idEmployee) {
        Employees employee = new Employees();
        employee.setIdEmployees(idEmployee);
        employeesService.deleteEmployee(employee);
        return "redirect:/";
    }
}