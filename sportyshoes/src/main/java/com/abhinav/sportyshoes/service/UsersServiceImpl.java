package com.abhinav.sportyshoes.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abhinav.sportyshoes.dao.UsersDao;
import com.abhinav.sportyshoes.model.Users;

@Service
public class UsersServiceImpl implements UsersService {
	@Autowired
	UsersDao userDao;

	@Override
	public List<Users> getAllUsers() {
		return userDao.getAllUsers();
	}

	@Override
	public boolean validateUser(String u, String p) {
		return userDao.validateUser(u, p);
	}

	@Override
	public Users getUser(String lid) {
		return userDao.getUser(lid);
	}

	@Override
	public boolean updateUser(String lid, String upw, String uemail, String uphone) {
		return userDao.updateUser(lid, upw, uemail, uphone);
	}

	@Override
	public boolean addUser(Users user) {
		return userDao.addUser(user);
	}
}