package com.tripbook.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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

}
