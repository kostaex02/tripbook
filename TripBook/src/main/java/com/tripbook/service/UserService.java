package com.tripbook.service;

import com.tripbook.dto.UserDTO;

public interface UserService {
	/**
	 * userDAO�� �̿��ؼ� �α��� ���� ���� üũ
	 */
	UserDTO login(UserDTO user);
	
	/**
	 * ���̵��� ���� ���� üũ
	 * 0:���� ����, 1:���̵� ����
	 */
	int checkId(String userId);
	
	/**
	 * ����
	 */
	int register(UserDTO user);
}
