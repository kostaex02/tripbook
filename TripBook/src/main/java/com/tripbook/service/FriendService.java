package com.tripbook.service;

import java.util.List;

import com.tripbook.dto.UserDTO;

public interface FriendService {
	/**
	 * userid�� friend���̺� �ִ� ����� �ҷ��� �� ����Ʈ�� ����
	 * */
	List<UserDTO> selectFriendList(String userId,String state);
	
	/**
	 * userId,friendId ���� �̿��Ͽ� ģ�� ��û
	 * 2: ģ�� ��û ���� 1: ���� 0: ����
	 */
	int addFriend(String userId, String friendId);

	/**
	 * �˸� ���̺� ����Ǿ��ִ� ���̵���� �̿��Ͽ� ģ�� ��û Ȯ��
	 */
	int acceptFriend(int noticeNo);
	
	/**
	 * �˸� ���̺� ����Ǿ��ִ� ���̵���� �̿��Ͽ� ģ�� ��û ����
	 */
	int rejectFriend(int noticeNo);
	
	/**
	 * ģ�� ���踦 �����
	 */
	int deleteFriend(String userId, String friendId);
	
	/**
	 * ģ�� ���� Ȯ��
	 */
	String selectFriend(String userId, String friendId);
}
