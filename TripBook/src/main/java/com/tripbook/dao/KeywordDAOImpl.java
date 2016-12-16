package com.tripbook.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tripbook.dto.KeywordDTO;

@Repository
public class KeywordDAOImpl implements KeywordDAO {
	@Autowired
	private SqlSession session;
	
	@Override
	public int insertKeyword(KeywordDTO keywordDTO) {
		return session.insert("keywordMapper.insertKeyword", keywordDTO);
	}

}
