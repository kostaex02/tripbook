package com.tripbook.service;

import java.util.List;

import com.tripbook.dto.GroupDTO;

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
	
	/**
	 * �ڽ��� ���� �׷� ���
	 */
	List<GroupDTO> selectGroupList(String userId);
}
