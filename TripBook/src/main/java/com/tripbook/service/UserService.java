package com.tripbook.service;

import com.tripbook.dto.UserDTO;

public interface UserService {
	/**
	 * userDAO를 이용해서 로그인 가능 유무 체크
	 */
	UserDTO login(UserDTO user);
	
	/**
	 * 아이디의 가입 유무 체크
	 * 0:가입 가능, 1:아이디 존재
	 */
	int checkId(String userId);
	
	/**
	 * 가입
	 */
	int register(UserDTO user);
}
