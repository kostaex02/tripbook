package com.tripbook.dao;

import java.util.List;
import java.util.Map;

import com.tripbook.dto.ScheduleDTO;

public interface ScheduleDAO {
	/**
	 * ���� ���
	 */
	int addSchedule(ScheduleDTO scheduleDTO);

	/**
	 * ���� ���
	 */
	List<ScheduleDTO> selectSchedule(Map<String, Object> map);
	
	/**
	 * ���� ����
	 */
	int deleteSchedule(int scheduleNo);
	
	/**
	 * ���� ����
	 */
	ScheduleDTO selectScheduleByNo(int scheduleNo);
	
	/**
	 * ���� ����
	 */
	int updateSchedule(ScheduleDTO scheduleDTO);
	
	/**
	 * �ۼ��ڷ� ���� �˻�
	 */
	List<Integer> selectScheduleNoByWriter(String writer);
	
	/**
	 * �ϴ�� ���
	 */
	List<ScheduleDTO> selectBiography(Map<String, Object> map);
}
