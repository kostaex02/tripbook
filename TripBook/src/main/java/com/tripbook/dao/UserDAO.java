package com.tripbook.dao;

import java.util.List;
import java.util.Map;

import com.tripbook.dto.UserDTO;

public interface UserDAO {
	/**
	 * id, password�� �̿��ؼ� �α��� �ϱ�
	 */
	UserDTO loginUser(UserDTO user);
	
	/**
	 * �ش� id �˻� �ɋ� �˻��� row�� name�� ���
	 */
	String checkUser(String userId);
	
	/**
	 * id,state�� �̿��� �̸� �˻�
	 */
	String selectUserIdState(Map<String, String> map);

	int insertUser(UserDTO user);
	
	UserDTO selectUser(String userId);

	UserDTO selectProfile(String userId);

	List<UserDTO> searchUser(String userId);

	int updateUser(UserDTO userDTO);

	int deleteUser(String userId);

}
