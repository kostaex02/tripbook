package com.tripbook.service;

public interface GroupService {
	/**
	 * �׷� ���� 	
	 * */
	int create(String groupName,String userId,String [] friendId);

	/**
	 * �׷� ��û Ȯ��
	 */
	int acceptGroup(int noticeNo);
	
	/**
	 * �׷� ��û ����
	 */
	int rejectGroup(int noticeNo);
}
