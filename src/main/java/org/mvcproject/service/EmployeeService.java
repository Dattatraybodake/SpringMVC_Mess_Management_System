package org.mvcproject.service;

import java.util.List;

import org.mvcproject.model.Employee;
import org.springframework.stereotype.Service;

@Service
public interface EmployeeService {

	public boolean AddNewemployee(Employee employee);
	public List<Employee> getAllemployee();
	public void deleteEmployee(int employeeid);
	public List<Employee> searchemployee(String employeename);
}
