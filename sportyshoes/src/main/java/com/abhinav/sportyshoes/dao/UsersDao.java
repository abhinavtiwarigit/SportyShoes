package com.abhinav.sportyshoes.dao;

import java.util.List;

import com.abhinav.sportyshoes.model.Users;

public interface UsersDao {
	public List<Users> getAllUsers();
	public boolean validateUser(String u, String p);
	public Users getUser(String lid);
	public boolean updateUser(String lid, String upw, String uemail, String uphone);
	public boolean addUser(Users user);
}
