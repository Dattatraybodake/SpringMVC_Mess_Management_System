package org.mvcproject.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.mvcproject.model.Customer;
import org.mvcproject.model.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


@Repository("/employeeRepo")
public class EmployeeRepositoryImpl implements EmployeeRepository {


	@Autowired
	JdbcTemplate template;
	
	@Override
	public boolean AddNewEmployee(final Employee employee) {
		int value = template.update("insert into employee(employeeid, employeename, education, age, employeecontact, email, address) values (?, ?, ?, ?, ?, ?, ?)", new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setInt(1, 0);
				ps.setString(2, employee.getEmployeename());
				ps.setString(3, employee.getEducation());
				ps.setInt(4, employee.getAge());
				ps.setLong(5, employee.getEmployeecontact());
				ps.setString(6, employee.getEmail());
				ps.setString(7, employee.getAddress());
//				
			}
		});
		return value>0 ?true:false;			
	}

	@Override
	public List<Employee> getAllEmployee() {
		List <Employee>list=template.query("Select * from employee", new RowMapper<Employee>()
				{
					@Override
					public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
						Employee emp=new Employee();
						emp.setEmployeeid(rs.getInt(1));
						emp.setEmployeename(rs.getString(2));
						emp.setEducation(rs.getString(3));
						emp.setAge(rs.getInt(4));
						emp.setEmployeecontact(rs.getLong(5));
						emp.setEmail(rs.getString(6));
						emp.setAddress(rs.getString(7));
						return emp;
					}
				});
		return list.size()>0?list:null;		
	}
		

	@Override
	public void deleteEmployee(int employeeid) {
		template.update("delete from employee where employeeid="+employeeid);
	}

	@Override
	public List<Employee> searchEmployee(String employeename) {
		List<Employee> list = template.query("SELECT * FROM employee WHERE employeename LIKE ?", new Object[] { "%" + employeename + "%" },new RowMapper<Employee>() { 
			@Override
			public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				Employee emp=new Employee();
				emp.setEmployeeid(rs.getInt(1));
				emp.setEmployeename(rs.getString(2));
				emp.setEducation(rs.getString(3));
				emp.setEmployeecontact(rs.getLong(4));
				emp.setEmail(rs.getString(5));
				emp.setAddress(rs.getString(6));
				return emp;
				}
		});
		return list.size()>0?list:new ArrayList<Employee>();		

	}
		

}
