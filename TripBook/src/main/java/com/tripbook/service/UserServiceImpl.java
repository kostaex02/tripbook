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
	public int login(UserDTO user) {
		int result = 0;
		UserDTO tempUser = userDao.selectUser(user.getId());
		if(tempUser!=null&&!tempUser.getPassword().equals(user.getPassword())){
			result = 1;
		}
		return result;
	}

}
