package com.tripbook.service;

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
	 * 그룸 신청 거절
	 */
	int rejectGroup(int noticeNo);
}
