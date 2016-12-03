package com.tripbook.service;

import com.tripbook.dto.UserDTO;

public interface UserService {
	/**
	 * userDAO를 이용해서 로그인 가능 유무 체크
	 */
	UserDTO login(UserDTO user);
}
