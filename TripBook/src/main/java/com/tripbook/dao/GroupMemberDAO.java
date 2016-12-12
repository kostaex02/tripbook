package com.tripbook.dao;

import java.util.List;
import java.util.Map;

import com.tripbook.dto.UserDTO;

public interface GroupMemberDAO {
	/**
	 * 그룹에 멤버 추가
	 */
	int insertGroupMember(Map<String, Object> map);
	
	/**
	 * 해당하는 아이디에 속하는 그룹 출력
	 */
	List<Integer> selectGroupMember(String userId);
	
	/**
	 * 해당 그룹 멤버 출력
	 */
	List<UserDTO> selectGroupMemberByNo(Map<String, Object> map);
	
	/**
	 * 그룹에 멤버 삭제
	 */
	int deleteGroupMember(Map<String, Object> map);
	
}
