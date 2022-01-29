package com.abhinav.sportyshoes.dao;

import java.util.List;

import com.abhinav.sportyshoes.model.Orders;

public interface OrdersDao {
	public List<Orders> getAllOrders();
	public int placeOrder(String lid);
	public int getUserOrderTotal(int ordid);

}
