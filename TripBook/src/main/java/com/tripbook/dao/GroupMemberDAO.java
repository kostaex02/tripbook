package com.tripbook.dao;

import java.util.List;
import java.util.Map;

public interface GroupMemberDAO {
	/**
	 * �׷쿡 ��� �߰�
	 */
	int insertGroupMember(Map<String, Object> map);
	
	/**
	 * �ش��ϴ� ���̵� ���ϴ� �׷� ���
	 */
	List<Integer> selectGroupMember(String userId);
	
}
