package com.tripbook.dao;

import com.tripbook.dto.UserDTO;

public interface UserDAO {
	/**
	 * user 값을 이용해서 user 찾기
	 * */
	UserDTO selectUser(UserDTO userId);
}
