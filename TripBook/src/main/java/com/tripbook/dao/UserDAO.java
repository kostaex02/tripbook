package com.tripbook.dao;

import com.tripbook.dto.UserDTO;

public interface UserDAO {
	/**
	 * user 테이블의 id 값을 이용해서 user 찾기
	 * */
	UserDTO selectUser(String userId);
}
