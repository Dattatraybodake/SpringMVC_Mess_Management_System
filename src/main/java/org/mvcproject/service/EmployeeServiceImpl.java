package org.mvcproject.service;

import java.util.List;

import org.mvcproject.model.Employee;
import org.mvcproject.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	EmployeeRepository employeeRepo;
	
	@Override
	public boolean AddNewemployee(Employee employee) {
		// TODO Auto-generated method stub
		return employeeRepo.AddNewEmployee(employee);
	}

	@Override
	public List<Employee> getAllemployee() {
		// TODO Auto-generated method stub
		return employeeRepo.getAllEmployee();
	}

	@Override
	public List<Employee> searchemployee(String employeename) {
		return employeeRepo.searchEmployee(employeename);
	}

	@Override
	public void deleteEmployee(int employeeid) {
		// TODO Auto-generated method stub
		employeeRepo.deleteEmployee(employeeid);

		
	}

}
