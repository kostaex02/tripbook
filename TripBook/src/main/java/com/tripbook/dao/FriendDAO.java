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
	
	int selectFriendOnly(Map<String, String> map);
}
