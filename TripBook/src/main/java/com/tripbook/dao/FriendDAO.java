package com.tripbook.dao;

import java.util.List;
import java.util.Map;

import com.tripbook.dto.FriendDTO;

public interface FriendDAO {
	List<FriendDTO> selectFriend(Map<String,String> friendMap);
}
