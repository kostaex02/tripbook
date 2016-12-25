package com.tripbook.dao;

import java.util.List;

import com.tripbook.dto.KeywordDTO;

public interface KeywordDAO {
	/**
	 * 게시물 등록시 키워드 저장
	 */
	int insertKeyword(KeywordDTO keywordDTO);

	/**
	 * 키워드에 해당하는 일정 출력
	 */
	List<Integer> selectKeyword(String keyword);
}
