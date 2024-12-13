package com.brayanalmengor04.employees.service;

import com.brayanalmengor04.employees.entities.Employees;
import com.brayanalmengor04.employees.repository.EmployeesRespository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeesService implements IEmployeesService {

    @Autowired
    private EmployeesRespository employeesRespository;

    @Override
    public List<Employees> getAllEmployees() {
        return employeesRespository.findAll();
    }
    @Override
    public Employees getEmployeeById(Integer idEmployees) {
        Employees employees = employeesRespository.findById(idEmployees).orElse(null);
        return employees;
    }
    @Override
    public void addEmployee(Employees employee) {
        employeesRespository.save(employee);
    }
    @Override
    public void deleteEmployee(Employees employee) {
        employeesRespository.delete(employee);
    }
}
