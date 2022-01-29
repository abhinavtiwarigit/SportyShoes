package com.abhinav.sportyshoes.service;

import java.util.Date;
import java.util.List;

import com.abhinav.sportyshoes.model.OrderDetails;

public interface OrderDetailsService {
	public List<OrderDetails> getUserOrderDetails(int ordid);
	public List<OrderDetails> getPurchaseReport(String rbrand, Date rdate);
}
