package com.tripbook.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tripbook.dao.FriendDAO;
import com.tripbook.dao.GroupDAO;
import com.tripbook.dao.GroupMemberDAO;
import com.tripbook.dao.NoticeDAO;
import com.tripbook.dao.UserDAO;
import com.tripbook.dto.FriendDTO;
import com.tripbook.dto.GroupDTO;
import com.tripbook.dto.NoticeDTO;
import com.tripbook.dto.UserDTO;

@Service
public class GroupServiceImpl implements GroupService {
	@Autowired
	private GroupDAO groupDAO;
	@Autowired
	private GroupMemberDAO groupMemberDAO;
	@Autowired
	private NoticeDAO noticeDAO;
	@Autowired
	private FriendDAO friendDAO;
	@Autowired
	private UserDAO userDAO;
	
	@Override
	public int create(String groupName, String userId, String[] friendId) {
		groupDAO.insertGroup(groupName);
		GroupDTO groupDTO = groupDAO.selectGroupByName(groupName);
		Map<String,Object> map = new HashMap<>();
		map.put("friendId", userId);
		map.put("groupNo", groupDTO.getGroupNo());
		groupMemberDAO.insertGroupMember(map);
		int result = 0;
		for(String str:friendId){
			result = noticeDAO.insertNotice(new NoticeDTO("1", userId, str,groupDTO.getGroupNo()+""));
		}
		return result;
	}
	@Override
	public int acceptGroup(int noticeNo) {
		NoticeDTO notice = noticeDAO.selectNoticeById(noticeNo);
		if(notice!=null){
			Map<String,Object> map = new HashMap<>();
			map.put("groupNo", notice.getContent());
			map.put("friendId", notice.getReceiver());
			groupMemberDAO.insertGroupMember(map);
			return noticeDAO.deleteNoticeByNo(noticeNo);
		}
		return 0;
	}

	@Override
	public int rejectGroup(int noticeNo) {
		NoticeDTO notice = noticeDAO.selectNoticeById(noticeNo);
		if(notice!=null){
			return noticeDAO.deleteNoticeByNo(noticeNo);
		}
		return 0;
	}
	@Override
	public List<GroupDTO> selectGroupList(String userId) {
		List<Integer> list = groupMemberDAO.selectGroupMember(userId);
		List<GroupDTO> resultList = new ArrayList<>();
		for(int groupNo:list){
			resultList.add(groupDAO.selectGroupByNo(groupNo));
		}
		return resultList;
	}
	@Override
	public int addGroupMember(int groupNo, String userId, String[] friendId) {
		int result = 0;
		for(String str:friendId){
			result = noticeDAO.insertNotice(new NoticeDTO("1", userId, str,groupNo+""));
		}
		return result;
	}
	@Override
	public List<UserDTO> selectGroupMember(int groupNo, String userId) {
		Map<String,Object> map = new HashMap<>();
		map.put("groupNo", groupNo);
		map.put("userId", userId);
		return groupMemberDAO.selectGroupMemberByNo(map);
	}
	@Override
	public GroupDTO selectGroup(int groupNo) {
		return groupDAO.selectGroupByNo(groupNo);
	}
	@Override
	public int deleteGroupMember(int groupNo, String userId) {
		Map<String,Object> map = new HashMap<>();
		map.put("groupNo", groupNo);
		map.put("friendId", userId);
		return groupMemberDAO.deleteGroupMember(map);
	}
	@Override
	public List<UserDTO> selectNotGroupMember(int groupNo, String userId, String state) {
		Map<String,String> friendMap = new HashMap<>();
		friendMap.put("userId", userId);
		friendMap.put("state", state);
		Map<String,Object> map = new HashMap<>();
		map.put("groupNo", groupNo);
		map.put("userId", userId);
		List<FriendDTO> friendList = friendDAO.selectFriend(friendMap);
		List<UserDTO> memberList = groupMemberDAO.selectGroupMemberByNo(map);
		List<UserDTO> userList = null;
	
		if(friendList!=null){
			userList = new ArrayList<>();
			for(FriendDTO f:friendList){
				int check = 0;
				for(UserDTO u:memberList){
					if(!f.getFriendId1().equals(userId)){
						if(f.getFriendId1().equals(u)){
							check++;
						}
					}
					else{
						if(f.getFriendId2().equals(u)){
							check++;
						}
					}
				}
				if(check==0){
					userList.add(userDAO.selectUser(f.getFriendId1()));
				}
			}
		}
		return userList;
	}
	
}
