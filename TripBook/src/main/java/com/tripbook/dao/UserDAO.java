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
	
	/**
	 * �˻��� ����Ʈ�� ���� �ڽ��� ���� ģ������ ������ ��� ���� ���
	 */
	List<UserDTO> searchUser(Map<String, String> map);
	
	/**
	 * ����� �Է�
	 */
	int insertUser(UserDTO user);
	
	/**
	 * ���õ� ���̵� �ش��ϴ� ���� ���
	 */
	UserDTO selectUser(String userId);
	
	/**
	 * ���õ� ���̵� �ش��ϴ� ���� ������ ���
	 */
	UserDTO selectProfile(String userId);
	
	/**
	 * ���� ����
	 */
	int updateUser(UserDTO userDTO);
	
	/**
	 * ���� ����
	 */
	int deleteUser(String userId);
	
	/**
	 * ��ü ���� ���
	 */
	List<UserDTO> selectUserByAdmin();
	
	/**
	 * �Ϲ����� ������ ���� �ο�
	 */
	int updateUserState(String userId);

}
