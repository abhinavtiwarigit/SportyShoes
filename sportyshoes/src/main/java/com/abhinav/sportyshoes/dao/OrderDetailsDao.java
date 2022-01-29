package com.abhinav.sportyshoes.dao;

import java.util.Date;
import java.util.List;

import com.abhinav.sportyshoes.model.OrderDetails;

public interface OrderDetailsDao {
	public List<OrderDetails> getAllOrderDetails();
	public List<OrderDetails> getUserOrderDetails(int ordid);
	public List<OrderDetails> getPurchaseReport(String rbrand, Date rdate);

}
