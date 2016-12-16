package com.tripbook.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tripbook.dto.BoardDTO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	@Autowired
	private SqlSession session;
	
	@Override
	public List<BoardDTO> selectBoard(Map<String, Object> map) {
		return session.selectList("boardMapper.selectBoard", map);
	}

	@Override
	public int insertBoard(BoardDTO boardDTO) {
		return session.insert("boardMapper.insertBoard",boardDTO);
	}

	@Override
	public int selectBoardById(String writer) {
		List<Integer> list = session.selectList("boardMapper.selectBoardById", writer);
		return list.get(0);
	}

}
