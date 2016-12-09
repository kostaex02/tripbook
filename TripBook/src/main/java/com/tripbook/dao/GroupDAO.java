package com.tripbook.dao;

import com.tripbook.dto.GroupDTO;

public interface GroupDAO {
	/**
	 * 그룹 추가
	 */
	int insertGroup(String groupName);
	
	/**
	 * 최근 생성한 그룹 이름으로 검색
	 */
	GroupDTO selectGroupByName(String groupName);
	
	/**
	 * groupNo을 이용해서 해당 그룹 검색
	 */
	GroupDTO selectGroupByNo(int groupNo);
}
