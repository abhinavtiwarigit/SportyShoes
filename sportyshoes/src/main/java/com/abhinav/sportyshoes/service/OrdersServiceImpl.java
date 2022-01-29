package com.abhinav.sportyshoes.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abhinav.sportyshoes.dao.OrdersDao;

@Service
public class OrdersServiceImpl  implements OrdersService{

	@Autowired
	OrdersDao ordersDao;
	
	@Override
	public int placeOrder(String lid) {
		return ordersDao.placeOrder(lid);
	}

	@Override
	public int getUserOrderTotal(int ordid) {
		return ordersDao.getUserOrderTotal(ordid);
	}

}
