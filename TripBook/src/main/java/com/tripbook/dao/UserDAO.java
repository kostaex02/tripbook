package com.tripbook.dao;

import com.tripbook.dto.UserDTO;

public interface UserDAO {
	/**
	 * user ���� �̿��ؼ� user ã��
	 * */
	UserDTO selectUser(UserDTO userId);

	String checkUser(String userId);

	int insertUser(UserDTO user);
}
