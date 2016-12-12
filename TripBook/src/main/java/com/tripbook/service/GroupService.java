package com.tripbook.service;

import java.util.List;

import com.tripbook.dto.GroupDTO;
import com.tripbook.dto.UserDTO;

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
	
	/**
	 * 그룹 추가 후 멤버 출력
	 */
	int addGroupMember(int groupNo, String userId, String[] friendId);
	
	/**
	 * 그룹에 속한 멤버 출력
	 */
	List<UserDTO> selectGroupMember(int groupNo, String userId);
	
	/**
	 * 그룹 선택
	 */
	GroupDTO selectGroup(int groupNo);
	
	/**
	 * 그룹의 멤버 삭제
	 */
	int deleteGroupMember(int groupNo, String userId);
	
	/**
	 * 그룹에 속하지 않은 멤버 출력
	 */
	List<UserDTO> selectNotGroupMember(int groupNo, String userId, String state);
}
