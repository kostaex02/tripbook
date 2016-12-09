package com.tripbook.dao;

import java.util.Map;

public interface GroupMemberDAO {
	/**
	 * 그룹에 멤버 추가
	 */
	int insertGroupMember(Map<String, Object> map);
	
}
