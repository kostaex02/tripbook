package com.tripbook.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tripbook.dao.FriendDAO;
import com.tripbook.dao.GroupMemberDAO;
import com.tripbook.dao.ScheduleDAO;
import com.tripbook.dto.FriendDTO;
import com.tripbook.dto.ScheduleDTO;

@Service
public class ScheduleServiceImpl implements ScheduleService {
	@Autowired
	private ScheduleDAO scheduleDAO;
	@Autowired
	private FriendDAO friendDAO;
	@Autowired
	private GroupMemberDAO groupMemberDAO;
	
	@Override
	public int addSchedule(ScheduleDTO scheduleDTO) {
		return scheduleDAO.addSchedule(scheduleDTO);
	}

	@Override
	public List<ScheduleDTO> selectSchedule(String userId) {
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
		
		return scheduleDAO.selectSchedule(map);
	}

	@Override
	public int deleteSchedule(int scheduleNo,String userId) {
		ScheduleDTO scheduleDTO = scheduleDAO.selectScheduleByNo(scheduleNo);

		if(Integer.parseInt(scheduleDTO.getState())>2||scheduleDTO.getWriter().equals(userId)){
			return scheduleDAO.deleteSchedule(scheduleNo);
		}else{
			return 0;
		}
	}

	@Override
	public int updateSchedule(int scheduleNo, String startDate, String endDate, String userId) {
		ScheduleDTO scheduleDTO = scheduleDAO.selectScheduleByNo(scheduleNo);
		
		if(Integer.parseInt(scheduleDTO.getState())>2||scheduleDTO.getWriter().equals(userId)){
			scheduleDTO.setStartDate(startDate);
			scheduleDTO.setEndDate(endDate);
			return scheduleDAO.updateSchedule(scheduleDTO);
		}else{
			return 0;
		}
	}

	@Override
	public ScheduleDTO selectScheduleByNo(int scheduleNo) {
		return scheduleDAO.selectScheduleByNo(scheduleNo);
	}

	@Override
	public List<ScheduleDTO> selectBiography(String userId) {
		List<Integer> list = groupMemberDAO.selectGroupMember(userId);	
		Map<String,Object> map = new HashMap<>();
		map.put("userId", userId);
		map.put("groupList", list);
		return scheduleDAO.selectBiography(map);
	}

	@Override
	public List<ScheduleDTO> selectFriendBiography(String userId, String friendId, String state) {
		List<Integer> list = groupMemberDAO.selectGroupMember(userId);
		List<Integer> friendList = groupMemberDAO.selectGroupMember(friendId);
		List<Integer> friendGroupList = new ArrayList<>();
		for(int userGroupNo:list){
			for(int friendGroupNo:friendList){
				if(userGroupNo==friendGroupNo){
					friendGroupList.add(friendGroupNo);
				}
			}
		}
		Map<String, Object> map = new HashMap<>();
		map.put("friendId", friendId);
		map.put("groupList", friendGroupList);
		if(state!=null&&state.equals("1")){
			return scheduleDAO.selectFriendBiography(map);
		}else{
			return scheduleDAO.selectNotFriendBiography(map);
		}
	}

}
