package com.tripbook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tripbook.dao.ReplyDAO;
import com.tripbook.dto.ReplyDTO;

@Service
public class ReplyServiceImpl implements ReplyService {
	@Autowired
	private ReplyDAO replyDAO;
	
	@Override
	public List<ReplyDTO> insert(ReplyDTO replyDTO) {
		replyDAO.insertReply(replyDTO);
		return replyDAO.selectReplyByBoardNo(replyDTO.getBoardNo());
	}

}
