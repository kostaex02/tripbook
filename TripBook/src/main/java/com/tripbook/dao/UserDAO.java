package com.tripbook.dao;

import com.tripbook.dto.UserDTO;

public interface UserDAO {
	/**
	 * user ���� �̿��ؼ� user ã��
	 * */
	UserDTO selectUser(UserDTO user);

	String checkUser(String userId);

	int insertUser(UserDTO user);
	
	UserDTO selectUser(String userId);
}
