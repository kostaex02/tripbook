package com.tripbook.dao;

import java.util.List;

import com.tripbook.dto.KeywordDTO;

public interface KeywordDAO {
	/**
	 * �Խù� ��Ͻ� Ű���� ����
	 */
	int insertKeyword(KeywordDTO keywordDTO);

	/**
	 * Ű���忡 �ش��ϴ� ���� ���
	 */
	List<Integer> selectKeyword(String keyword);
}
