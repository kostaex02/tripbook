package com.tripbook.service;

import java.util.List;

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
	
	/**
	 * ���� ��ü ���� ���
	 */
	UserDTO selectProfile(String userId);
	
	/**
	 * �˻��� ����� ģ�� ������ ������ ��� �˻�
	 **/
	List<UserDTO> searchUser(String userId, String keyword);
	
	/**
	 * ���� ���� ����
	 */
	int updateUser(UserDTO userDTO);
}
