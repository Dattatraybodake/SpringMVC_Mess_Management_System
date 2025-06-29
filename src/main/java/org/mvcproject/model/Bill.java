package org.mvcproject.model;

import java.sql.Timestamp;

public class Bill {
	private String invoiceid;
	private int customerid;
	private int categoryid;
	private int productid;
	private String productname;
	private String categoryname;
	public String customername;
	private float price;
	private int quantity;
	private float gst;
	private float basicamount;
	private float grandtotal;
	private Timestamp purchasedate;
	
	public String getInvoiceid() {
		return invoiceid;
	}
	public void setInvoiceid(String invoiceid) {
		this.invoiceid = invoiceid;
	}
	public int getCustomerid() {
		return customerid;
	}
	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}
	public int getCategoryid() {
		return categoryid;
	}
	public void setCategoryid(int categoryid) {
		this.categoryid = categoryid;
	}
	public int getProductid() {
		return productid;
	}
	public void setProductid(int productid) {
		this.productid = productid;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getCategoryname() {
		return categoryname;
	}
	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public float getGst() {
		return gst;
	}
	public void setGst(float gst) {
		this.gst = gst;
	}
	public float getBasicamount() {
		return basicamount;
	}
	public void setBasicamount(float basicamount) {
		this.basicamount = basicamount;
	}
	public float getGrandtotal() {
		return grandtotal;
	}
	public void setGrandtotal(float grandtotal) {
		this.grandtotal = grandtotal;
	}
	public Timestamp getPurchasedate() {
		return purchasedate;
	}
	public void setPurchasedate(Timestamp purchasedate) {
		this.purchasedate = purchasedate;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getCustomername() {
		return customername;
	}
	public void setCustomername(String customername) {
		this.customername = customername;
	}
	
	
	
	
	
	
}
