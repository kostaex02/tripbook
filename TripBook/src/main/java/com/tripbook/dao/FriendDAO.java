package com.tripbook.dao;

import java.util.List;
import java.util.Map;

import com.tripbook.dto.FriendDTO;

public interface FriendDAO {
	/**
	 * userId�� ģ�� ������ user �˻�
	 */
	List<FriendDTO> selectFriend(Map<String,String> friendMap);

	/**
	 * ģ�� �Է�(ģ�� ��û ����)
	 */
	int insertFriend(Map<String, String> map);
	
	/**
	 * ���� ���� ���踦 Ȯ���ϴ� ���̺�
	 */
	String selectFriendOnly(Map<String, String> map);
	
	/**
	 * ģ�� ��û Ȯ��
	 */
	int updateFriend(Map<String, String> map);

	/**
	 * ģ�� ��û ����
	 */
	int deleteFriend(Map<String, String> map);
}
