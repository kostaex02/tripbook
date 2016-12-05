package com.tripbook.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tripbook.dao.FriendDAO;
import com.tripbook.dao.UserDAO;
import com.tripbook.dto.FriendDTO;
import com.tripbook.dto.UserDTO;
@Service
public class FriendServiceImpl implements FriendService {
	@Autowired
	private FriendDAO friendDAO;
	@Autowired
	private UserDAO userDAO;
	
	@Override
	public List<UserDTO> selectFriendList(String userId,String state) {
		Map<String,String> friendMap = new HashMap<>();
		friendMap.put("userId", userId);
		friendMap.put("state", state);
		List<FriendDTO> friendList = friendDAO.selectFriend(friendMap);
		List<UserDTO> userList = null;
	
		if(friendList!=null){
			userList = new ArrayList<>();
			for(FriendDTO f:friendList){
				if(!f.getFriendId1().equals(userId)){
					userList.add(userDAO.selectUser(f.getFriendId2()));
				}
				else{
					userList.add(userDAO.selectUser(f.getFriendId1()));
				}
			}
		}
		
		return userList;
	}

}
