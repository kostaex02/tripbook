package com.tripbook.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tripbook.dto.BoardPictureDTO;

@Repository
public class BoardPictureDAOImpl implements BoardPictureDAO {
	@Autowired
	private SqlSession session;
	@Override
	public int insertBoardPicture(BoardPictureDTO boardPictureDTO) {
		return session.insert("boardPictureMapper.insertBoardPicture", boardPictureDTO);
	}
	@Override
	public List<BoardPictureDTO> selectBoardPictureByBoardNo(int boardNo) {
		return session.selectList("boardPictureMapper.selectBoardPictureByBoardNo", boardNo);
	}
	
}
