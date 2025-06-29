package org.mvcproject.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.mvcproject.model.Bill;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository("billRepo")
public class BillingRepositoryImpl implements BillingRepository {

	@Autowired
	JdbcTemplate template;
	
	@Override
	public boolean addbill(Bill bill) {
		int value = template.update("INSERT INTO bill(customerid, categoryid, productid, invoiceid, price, quantity, gst, basicamount, grandtotal) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)", new PreparedStatementSetter()
				{
					public void setValues(PreparedStatement ps) throws SQLException
					{
						ps.setInt(1, bill.getCustomerid());
						ps.setInt(2, bill.getCategoryid());
						ps.setInt(3, bill.getProductid());
						ps.setString(4, bill.getInvoiceid());
						ps.setFloat(5, bill.getPrice());
						ps.setInt(6, bill.getQuantity());
						ps.setFloat(7, bill.getGst());
						ps.setFloat(8, bill.getBasicamount());
						ps.setFloat(9, bill.getGrandtotal());
					}
				});		
		return value>0? true:false;
	}
	
	@Override
	public List<Bill> getAllBill() {
	    List<Bill> list = template.query("SELECT b.invoiceid, c.customername, ca.categoryname, p.productname,  b.price, b.quantity, b.grandtotal, b.purchasedate FROM  bill b INNER JOIN customer c ON b.customerid = c.customerid INNER JOIN category ca ON b.categoryid = ca.categoryid INNER JOIN product p ON b.productid = p.productid", new RowMapper<Bill>() {
	        @Override
	        public Bill mapRow(ResultSet rs, int rowNum) throws SQLException {
	            Bill bill = new Bill();
	            bill.setInvoiceid(rs.getString(1));
	            bill.setCustomername(rs.getString(2));
	            bill.setCategoryname(rs.getString(3));
	            bill.setProductname(rs.getString(4));
	            bill.setPrice(rs.getFloat(5));
	            bill.setQuantity(rs.getInt(6));
	            bill.setGrandtotal(rs.getFloat(7));
	            bill.setPurchasedate(rs.getTimestamp(8));
	            return bill;
	        }
	    });
	    return list.isEmpty() ? null : list;
	}
	
	public List<Bill> searchBill(int MONTH, int YEAR)
	{	
		List<Bill> list = template.query("SELECT * FROM bill WHERE MONTH(purchasedate) = ? AND YEAR(purchasedate) = ? ;", new Object[] { MONTH, YEAR }, new RowMapper<Bill>()
				{
					@Override
					public Bill mapRow(ResultSet rs, int rowNum) throws SQLException {
						Bill bill = new Bill();
						bill.setCustomerid(rs.getInt(1));
						bill.setCategoryid(rs.getInt(2));
						bill.setProductid(rs.getInt(3));
						bill.setInvoiceid(rs.getString(3));
						bill.setPrice(rs.getFloat(4));
						bill.setQuantity(rs.getInt(5));
						bill.setGst(rs.getFloat(6));
						bill.setBasicamount(rs.getFloat(7));
						bill.setGrandtotal(rs.getFloat(8));
						bill.setPurchasedate(rs.getTimestamp(8));
						return bill;
					}
				});
		return list.size()>0?list:new ArrayList<Bill>();
	}
	
	
	public List<Bill> searchsales(Date purchasedate) {
	    List<Bill> list = template.query("SELECT * FROM bill WHERE DATE(purchasedate) = ?", new Object[] { purchasedate },  new RowMapper<Bill>() {
	            @Override
	            public Bill mapRow(ResultSet rs, int rowNum) throws SQLException {
	                Bill bill = new Bill();
	                bill.setCustomerid(rs.getInt("customerid"));
	                bill.setCategoryid(rs.getInt("categoryid"));
	                bill.setProductid(rs.getInt("productid"));
	                bill.setInvoiceid(rs.getString("invoiceid"));
	                bill.setPrice(rs.getFloat("price"));
	                bill.setQuantity(rs.getInt("quantity"));
	                bill.setGst(rs.getFloat("gst"));
	                bill.setBasicamount(rs.getFloat("basicamount"));
	                bill.setGrandtotal(rs.getFloat("grandtotal"));
	                bill.setPurchasedate(rs.getTimestamp("purchasedate"));
	                return bill;
	            }
	        }
	    );

	    return (list != null) ? list : new ArrayList<>();  // Ensure list is never null
	}

}