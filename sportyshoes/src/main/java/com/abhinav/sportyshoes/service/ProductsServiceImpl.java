package com.abhinav.sportyshoes.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abhinav.sportyshoes.dao.ProductsDao;
import com.abhinav.sportyshoes.model.Products;

@Service
public class ProductsServiceImpl implements ProductsService{
	
	@Autowired
	ProductsDao productsDao;

	@Override
	public List<Products> getAllProducts() {
		return productsDao.getAllProducts();
	}

	@Override
	public Products getProduct(int pid) {
		return productsDao.getProduct(pid);
	}

	@Override
	public boolean updateProduct(int pid, String bn, String gd, int sz, int pr) {
		return productsDao.updateProduct(pid, bn, gd, sz, pr);
	}

	@Override
	public boolean addProduct(Products product) {
		return productsDao.addProduct(product);
	}

	
}
