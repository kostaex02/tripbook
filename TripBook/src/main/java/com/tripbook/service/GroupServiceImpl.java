package com.tripbook.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tripbook.dao.GroupDAO;
import com.tripbook.dao.GroupMemberDAO;
import com.tripbook.dao.NoticeDAO;
import com.tripbook.dto.GroupDTO;
import com.tripbook.dto.NoticeDTO;

@Service
public class GroupServiceImpl implements GroupService {
	@Autowired
	private GroupDAO groupDAO;
	@Autowired
	private GroupMemberDAO groupMemberDAO;
	@Autowired
	private NoticeDAO noticeDAO;
	
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
			result = noticeDAO.insertNotice(new NoticeDTO("1", userId, str));
		}
		return result;
	}
/*	@Override
	public int acceptFriend(int noticeNo) {
		NoticeDTO notice = noticeDAO.selectNoticeById(noticeNo);
		if(notice!=null){
			Map<String,String> map = new HashMap<>();
			map.put("userId", notice.getSender());
			map.put("friendId", notice.getReceiver());
			friendDAO.updateFriend(map);
			return noticeDAO.deleteNoticeByNo(noticeNo);
		}
		return 0;
	}

	@Override
	public int rejectFriend(int noticeNo) {
		NoticeDTO notice = noticeDAO.selectNoticeById(noticeNo);
		if(notice!=null){
			Map<String,String> map = new HashMap<>();
			map.put("userId", notice.getSender());
			map.put("friendId", notice.getReceiver());
			friendDAO.deleteFriend(map);
			return noticeDAO.deleteNoticeByNo(noticeNo);
		}
		return 0;
	}*/
	@Override
	public int acceptGroup(int noticeNo) {
		NoticeDTO notice = noticeDAO.selectNoticeById(noticeNo);
		if(notice!=null){
			Map<String,Object> map = new HashMap<>();
			map.put("groupNo", notice.getNoticeNo());
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

}
