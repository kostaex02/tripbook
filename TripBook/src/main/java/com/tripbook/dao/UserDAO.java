package com.tripbook.dao;

import com.tripbook.dto.UserDTO;

public interface UserDAO {
	/**
	 * user ���̺��� id ���� �̿��ؼ� user ã��
	 * */
	UserDTO selectUser(String userId);
}
