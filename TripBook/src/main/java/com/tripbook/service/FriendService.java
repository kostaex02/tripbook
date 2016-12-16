package com.tripbook.service;

import java.util.List;

import com.tripbook.dto.UserDTO;

public interface FriendService {
	/**
	 * userid로 friend테이블에 있는 목록을 불러온 후 리스트로 저장
	 * */
	List<UserDTO> selectFriendList(String userId,String state);
	
	/**
	 * userId,friendId 값을 이용하여 친구 신청
	 * 2: 친구 신청 실패 1: 성공 0: 실패
	 */
	int addFriend(String userId, String friendId);

	/**
	 * 알림 테이블에 저장되어있는 아이디들을 이용하여 친구 신청 확인
	 */
	int acceptFriend(int noticeNo);
	
	/**
	 * 알림 테이블에 저장되어있는 아이디들을 이용하여 친구 신청 거절
	 */
	int rejectFriend(int noticeNo);
	
	/**
	 * 친구 관계를 지우기
	 */
	int deleteFriend(String userId, String friendId);
	
	/**
	 * 친구 관계 확인
	 */
	String selectFriend(String userId, String friendId);
}
