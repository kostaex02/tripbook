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
import com.tripbook.dao.KeywordDAO;
import com.tripbook.dao.ScheduleDAO;
import com.tripbook.dto.BoardDTO;
import com.tripbook.dto.FriendDTO;
import com.tripbook.dto.KeywordDTO;
import com.tripbook.dto.ScheduleDTO;

@Service
public class BoardServiceImpl implements BoardService{
	@Autowired
	private BoardDAO boardDAO;
	@Autowired
	private FriendDAO friendDAO;
	@Autowired
	private GroupMemberDAO groupMemberDAO;
	@Autowired
	private KeywordDAO keywordDAO;
	@Autowired
	private ScheduleDAO scheduleDAO;
	
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
		System.out.println(map);
		return boardDAO.selectBoard(map);
	}

	@Override
	public int insertBoard(BoardDTO boardDTO, String keyword, String address) {
		int boardNo = 0;
		if(boardDTO.getScheduleNo()>0){
			boardDAO.insertScheduleBoard(boardDTO);
			if(keyword!=null&&!keyword.equals("")){
				String [] keywords = address.split(" ");
				keywordDAO.insertKeyword(new KeywordDTO(keyword, boardDTO.getScheduleNo()));
				for(String str:keywords){
					keywordDAO.insertKeyword(new KeywordDTO(str, boardDTO.getScheduleNo()));
				}
			}
		}else{
			boardDAO.insertBoard(boardDTO);
		}
		boardNo = boardDAO.selectBoardById(boardDTO.getWriter());
		
		return boardNo;
	}

	@Override
	public int insertEditScheduleBoard(BoardDTO boardDTO, ScheduleDTO scheduleDTO, String keyword, String address) {
		scheduleDAO.addSchedule(scheduleDTO);
		int schedultNo = scheduleDAO.selectScheduleNoByWriter(scheduleDTO.getWriter()).get(0);
		boardDTO.setScheduleNo(schedultNo);
		return insertBoard(boardDTO, keyword, address);
	}


}
