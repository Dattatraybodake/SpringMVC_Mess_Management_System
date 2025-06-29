package org.mvcproject.model;
public class Customer {
		private int customerid;
		private String customername;
		private String address;
		private long customercontact;
		private String email;
		private String paymentstatus;
		public int getCustomerid() {
			return customerid;
		}
		public void setCustomerid(int customerid) {
			this.customerid = customerid;
		}
		public String getCustomername() {
			return customername;
		}
		public void setCustomername(String customername) {
			this.customername = customername;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		public long getCustomercontact() {
			return customercontact;
		}
		public void setCustomercontact(long customercontact) {
			this.customercontact = customercontact;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPaymentstatus() {
			return paymentstatus;
		}
		public void setPaymentstatus(String paymentstatus) {
			this.paymentstatus = paymentstatus;
		}
}
