package com.tutorial.spring.dao;

import java.util.List;

import com.tutorial.spring.model.User;

public interface UserDao {

	void save(User user);
	List<User> list();
}
