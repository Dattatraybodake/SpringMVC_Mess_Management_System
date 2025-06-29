package org.mvcproject.repository;

import java.util.List;

import org.mvcproject.model.Employee;


public interface EmployeeRepository {
	public boolean AddNewEmployee(Employee employee);
	public List<Employee> getAllEmployee();
	public void deleteEmployee(int employeeid);
	public List<Employee> searchEmployee(String employeename);

}
