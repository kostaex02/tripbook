package com.tripbook.service;

import java.util.List;

import com.tripbook.dto.UserDTO;

public interface FriendService {
	/**
	 * userid�� friend���̺� �ִ� ����� �ҷ��� �� ����Ʈ�� ����
	 * */
	List<UserDTO> selectFriendList(String userId,String state);
	
	/**
	 * userId,friendId ���� �̿��Ͽ� ���̺� ����
	 * 2: ģ�� ��û ���� 1: ���� 0: ����
	 */
	int addFriend(String userId, String friendId);
}
