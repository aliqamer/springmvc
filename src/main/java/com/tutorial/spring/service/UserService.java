package com.tutorial.spring.service;

import java.util.List;

import com.tutorial.spring.model.User;

public interface UserService {

	void save(User user);
	
	List<User> list();
}
