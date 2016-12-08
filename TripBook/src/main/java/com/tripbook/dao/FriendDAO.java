package com.tripbook.dao;

import java.util.List;
import java.util.Map;

import com.tripbook.dto.FriendDTO;

public interface FriendDAO {
	/**
	 * userId客 模备 包拌牢 user 八祸
	 */
	List<FriendDTO> selectFriend(Map<String,String> friendMap);

	/**
	 * 模备 涝仿(模备 脚没 惑怕)
	 */
	int insertFriend(Map<String, String> map);
	
	int selectFriendOnly(Map<String, String> map);
}
