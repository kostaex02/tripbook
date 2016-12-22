package com.tripbook.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tripbook.dto.ReplyDTO;

@Repository
public class ReplyDAOImpl implements ReplyDAO {
	@Autowired
	private SqlSession session;
	
	@Override
	public int insertReply(ReplyDTO replyDTO) {
		return session.insert("replyMapper.insertReply", replyDTO);
	}

	@Override
	public List<ReplyDTO> selectReplyByBoardNo(int boardNo) {
		return session.selectList("replyMapper.selectReplyByBoardNo", boardNo);
	}

}
