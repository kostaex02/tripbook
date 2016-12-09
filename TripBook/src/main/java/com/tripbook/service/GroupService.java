package com.tripbook.service;

import java.util.List;

import com.tripbook.dto.GroupDTO;

public interface GroupService {
	/**
	 * 그룹 생성 	
	 * */
	int create(String groupName,String userId,String [] friendId);

	/**
	 * 그룹 신청 확인
	 */
	int acceptGroup(int noticeNo);
	
	/**
	 * 그룹 신청 거절
	 */
	int rejectGroup(int noticeNo);
	
	/**
	 * 자신이 속한 그룹 출력
	 */
	List<GroupDTO> selectGroupList(String userId);
}
