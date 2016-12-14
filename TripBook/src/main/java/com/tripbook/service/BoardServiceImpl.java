package com.tripbook.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tripbook.dao.BoardDAO;
import com.tripbook.dao.FriendDAO;
import com.tripbook.dao.GroupMemberDAO;
import com.tripbook.dto.BoardDTO;
import com.tripbook.dto.FriendDTO;

@Service
public class BoardServiceImpl implements BoardService{
	@Autowired
	private BoardDAO boardDAO;
	@Autowired
	private FriendDAO friendDAO;
	@Autowired
	private GroupMemberDAO groupMemberDAO;
	
	@Override
	public List<BoardDTO> selectBoard(String userId) {
		Map<String,String> friendMap = new HashMap<>();
		friendMap.put("userId", userId);
		friendMap.put("state", "1");
		List<FriendDTO> friendList = friendDAO.selectFriend(friendMap);
		List<String> userList = null;
		if(friendList!=null){
			userList = new ArrayList<>();
			for(FriendDTO f:friendList){
				if(!f.getFriendId1().equals(userId)){
					userList.add(f.getFriendId1());
				}
				else{
					userList.add(f.getFriendId2());
				}
			}
		}
		
		List<Integer> list = groupMemberDAO.selectGroupMember(userId);
		
		Map<String,Object> map = new HashMap<>();
		map.put("userId", userId);
		map.put("friendList", userList);
		map.put("groupList", list);
		
		return boardDAO.selectBoard(map);
	}

}
