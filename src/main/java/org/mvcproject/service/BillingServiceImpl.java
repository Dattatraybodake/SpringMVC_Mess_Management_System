package org.mvcproject.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.mvcproject.model.Bill;
import org.mvcproject.repository.BillingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BillingServiceImpl implements BillingService {

	@Autowired
	BillingRepository billrepo;
	@Override
	public boolean addbill(Bill bill) {
		// TODO Auto-generated method stub
		return billrepo.addbill(bill);
	}

	@Override
	public List<Bill> getAllBill() {
		// TODO Auto-generated method stub
		return billrepo.getAllBill();
	}

	@Override
	public List<Bill> searchsales(Date purchaseDate) {
	    List<Bill> result = billrepo.searchsales(purchaseDate);
	    return (result != null) ? result : new ArrayList<>(); // Prevent null from propagating
	}
	
	@Override
	public List<Bill> searchBill(int MONTH, int YEAR) {
		// TODO Auto-generated method stub
		return billrepo.searchBill(MONTH, YEAR);
	}
}
