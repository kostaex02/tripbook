package com.tripbook.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tripbook.dao.UserDAO;
import com.tripbook.dto.UserDTO;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDAO userDao;
	
	@Override
	public UserDTO login(UserDTO user) {
		UserDTO tempUser = userDao.selectUser(user);
		return tempUser;
	}

	@Override
	public int checkId(String userId) {
		String name = userDao.checkUser(userId);
		int result = 0;
		if(name!=null){
			result = 1;
		}
		return result;
	}

	@Override
	public int register(UserDTO user) {
		return userDao.insertUser(user);
	}

}
