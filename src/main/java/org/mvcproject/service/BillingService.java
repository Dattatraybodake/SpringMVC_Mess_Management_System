package org.mvcproject.service;


import java.util.Date;
import java.util.List;
import org.mvcproject.model.Bill;

public interface BillingService {
	public boolean addbill(Bill bill);	
	public List<Bill> getAllBill();
	public List<Bill> searchsales(Date purchaseDate);
	public List<Bill> searchBill(int MONTH, int YEAR);
}
