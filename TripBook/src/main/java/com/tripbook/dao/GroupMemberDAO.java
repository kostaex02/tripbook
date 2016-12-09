package com.tripbook.dao;

import java.util.List;
import java.util.Map;

public interface GroupMemberDAO {
	/**
	 * 그룹에 멤버 추가
	 */
	int insertGroupMember(Map<String, Object> map);
	
	/**
	 * 해당하는 아이디에 속하는 그룹 출력
	 */
	List<Integer> selectGroupMember(String userId);
	
}
