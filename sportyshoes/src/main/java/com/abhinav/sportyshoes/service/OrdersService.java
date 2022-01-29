package com.abhinav.sportyshoes.service;
public interface OrdersService {
	public int placeOrder(String lid);
	public int getUserOrderTotal(int ordid);
}
