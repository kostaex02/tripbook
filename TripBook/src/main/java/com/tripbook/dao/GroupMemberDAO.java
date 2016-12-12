package com.tripbook.dao;

import java.util.List;
import java.util.Map;

import com.tripbook.dto.UserDTO;

public interface GroupMemberDAO {
	/**
	 * �׷쿡 ��� �߰�
	 */
	int insertGroupMember(Map<String, Object> map);
	
	/**
	 * �ش��ϴ� ���̵� ���ϴ� �׷� ���
	 */
	List<Integer> selectGroupMember(String userId);
	
	/**
	 * �ش� �׷� ��� ���
	 */
	List<UserDTO> selectGroupMemberByNo(Map<String, Object> map);
	
	/**
	 * �׷쿡 ��� ����
	 */
	int deleteGroupMember(Map<String, Object> map);
	
}
