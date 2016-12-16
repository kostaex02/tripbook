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
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDAO userDao;
	@Autowired
	private FriendDAO friendDao;

	@Override
	public UserDTO login(UserDTO user) {
		UserDTO tempUser = userDao.loginUser(user);
		return tempUser;
	}

	@Override
	public int checkId(String userId) {
		String name = userDao.checkUser(userId);
		int result = 0;
		if (name != null) {
			result = 1;
		}
		return result;
	}
	
	@Override
	public int selectIdState(String userId, String state) {
		Map<String,String> map = new HashMap<>();
		map.put("userId", userId);
		map.put("state", state);
		int result = 0;
		if(userDao.selectUserIdState(map)!=null) result = 1;
		return result;
	}
	
	@Override
	public int register(UserDTO user) {
		return userDao.insertUser(user);
	}

	@Override
	public UserDTO selectProfile(String userId) {
		return userDao.selectProfile(userId);
	}

	@Override
	public List<UserDTO> searchUser(String userId, String keyword) {
		Map<String, String> map = new HashMap<>();
		map.put("userId", userId);
		map.put("state", "1");
		map.put("keyword", keyword);
		List<UserDTO> userList = userDao.searchUser(map);
		
		List<FriendDTO> friendList = friendDao.selectFriend(map);
		List<UserDTO> resultList = null;
		if (userList == null||userList.size()==0) {
			return resultList;
		} else if (friendList == null||friendList.size()==0) {
			return userList;
		} else {
			resultList = new ArrayList<>();
			for (UserDTO userDTO : userList) {
				int count = 0;
				for (FriendDTO friendDTO : friendList) {
					if (friendDTO.getFriendId1().equals(userDTO.getId())
							|| friendDTO.getFriendId2().equals(userDTO.getId())) {
						count++;
					}
				}

				if(count==0){
					resultList.add(userDTO);
				}
			}
		}
		return resultList;
	}

	@Override
	public int updateUser(UserDTO userDTO) {
		return userDao.updateUser(userDTO);
	}

	@Override
	public int deleteUser(String userId) {
		return userDao.deleteUser(userId);
	}

	@Override
	public UserDTO selectUser(String friendId) {
		return userDao.selectUser(friendId);
	}


}
