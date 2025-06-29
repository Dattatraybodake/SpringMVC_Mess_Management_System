package org.mvcproject.model;

public class Employee {
		private int employeeid;
		private String employeename;
		private String education;
		private int age;
		private long employeecontact;
		private String email;
		private String address;
		
		public int getEmployeeid() {
			return employeeid;
		}
		public void setEmployeeid(int employeeid) {
			this.employeeid = employeeid;
		}
		public String getEmployeename() {
			return employeename;
		}
		public void setEmployeename(String employeename) {
			this.employeename = employeename;
		}
		public String getEducation() {
			return education;
		}
		public void setEducation(String education) {
			this.education = education;
		}
		public int getAge() {
			return age;
		}
		public void setAge(int age) {
			this.age = age;
		}
		public long getEmployeecontact() {
			return employeecontact;
		}
		public void setEmployeecontact(long employeecontact) {
			this.employeecontact = employeecontact;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
}
