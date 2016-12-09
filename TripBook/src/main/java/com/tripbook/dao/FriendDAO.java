package com.tripbook.dao;

import java.util.List;
import java.util.Map;

import com.tripbook.dto.FriendDTO;

public interface FriendDAO {
	/**
	 * userId와 친구 관계인 user 검색
	 */
	List<FriendDTO> selectFriend(Map<String,String> friendMap);

	/**
	 * 친구 입력(친구 신청 상태)
	 */
	int insertFriend(Map<String, String> map);
	
	/**
	 * 유저 둘의 관계를 확인하는 테이블
	 */
	String selectFriendOnly(Map<String, String> map);
	
	/**
	 * 친구 신청 확인
	 */
	int updateFriend(Map<String, String> map);

	/**
	 * 친구 신청 거절
	 */
	int deleteFriend(Map<String, String> map);
}
