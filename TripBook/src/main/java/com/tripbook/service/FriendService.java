package com.tripbook.service;

import java.util.List;

import com.tripbook.dto.UserDTO;

public interface FriendService {
	/**
	 * userid로 friend테이블에 있는 목록을 불러온 후 리스트로 저장
	 * */
	List<UserDTO> selectFriendList(String userId,String state);
	
	/**
	 * userId,friendId 값을 이용하여 테이블 저장
	 * 2: 친구 신청 실패 1: 성공 0: 실패
	 */
	int addFriend(String userId, String friendId);
}
