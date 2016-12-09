package com.tripbook.dao;

import com.tripbook.dto.GroupDTO;

public interface GroupDAO {
	/**
	 * �׷� �߰�
	 */
	int insertGroup(String groupName);
	
	/**
	 * �ֱ� ������ �׷� �̸����� �˻�
	 */
	GroupDTO selectGroupByName(String groupName);
	
	/**
	 * groupNo�� �̿��ؼ� �ش� �׷� �˻�
	 */
	GroupDTO selectGroupByNo(int groupNo);
}
