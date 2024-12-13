package com.brayanalmengor04.employees.service;

import com.brayanalmengor04.employees.entities.Employees;

import java.util.List;

public interface IEmployeesService {
    public List<Employees> getAllEmployees();
    public Employees getEmployeeById(Integer idEmployees);
    public void addEmployee(Employees employee);
    public void deleteEmployee(Employees idEmployees);

}
