package org.mvcproject.repository;

import java.util.Date;
import java.util.List;

import org.mvcproject.model.Bill;

public interface BillingRepository {
	public boolean addbill(Bill bill);	
	public List<Bill> getAllBill();
	public List<Bill> searchsales(Date date);
	public List<Bill> searchBill(int MONTH,int YEAR);
}
