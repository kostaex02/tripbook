package com.tripbook.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tripbook.dto.BoardDTO;
import com.tripbook.dto.GradeDTO;

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

	@Override
	public int insertScheduleBoard(BoardDTO boardDTO) {
		return session.insert("boardMapper.insertScheduleBoard", boardDTO);
	}

	@Override
	public List<BoardDTO> selectDetailBiography(Map<String, Object> map) {
		return session.selectList("boardMapper.selectDetailBiography", map);
	}

	@Override
	public List<BoardDTO> selectBoardByAdmin() {
		return session.selectList("boardMapper.selectBoardByAdmin");
	}

	@Override
	public List<BoardDTO> selectNotFriendBoardList(Map<String,Object> map) {
		return session.selectList("boardMapper.selectNotFriendBoard",map);
	}

	@Override
	public List<BoardDTO> selectFriendBoardList(Map<String, Object> map) {
		return session.selectList("boardMapper.selectFriendBoard",map);
	}

	@Override
	public GradeDTO selectGrade(GradeDTO gradeDTO) {
		return session.selectOne("boardMapper.selectGrade", gradeDTO);
	}

	@Override
	public int insertGrade(GradeDTO gradeDTO) {
		return session.insert("boardMapper.insertGrade", gradeDTO);
	}

	@Override
	public int deleteGrade(GradeDTO gradeDTO) {
		return session.delete("boardMapper.deleteGrade", gradeDTO);
	}

}
