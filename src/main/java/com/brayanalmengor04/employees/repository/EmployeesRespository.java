package com.brayanalmengor04.employees.repository;

import com.brayanalmengor04.employees.entities.Employees;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


public interface EmployeesRespository extends JpaRepository<Employees, Integer> {

}
