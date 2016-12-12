package com.tripbook.service;

import java.util.List;

import com.tripbook.dto.GroupDTO;
import com.tripbook.dto.UserDTO;

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
	
	/**
	 * �׷� �߰� �� ��� ���
	 */
	int addGroupMember(int groupNo, String userId, String[] friendId);
	
	/**
	 * �׷쿡 ���� ��� ���
	 */
	List<UserDTO> selectGroupMember(int groupNo, String userId);
	
	/**
	 * �׷� ����
	 */
	GroupDTO selectGroup(int groupNo);
	
	/**
	 * �׷��� ��� ����
	 */
	int deleteGroupMember(int groupNo, String userId);
	
	/**
	 * �׷쿡 ������ ���� ��� ���
	 */
	List<UserDTO> selectNotGroupMember(int groupNo, String userId, String state);
}
