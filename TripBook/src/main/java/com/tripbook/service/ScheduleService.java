package com.tripbook.service;

import java.util.List;

import com.tripbook.dto.ScheduleDTO;

public interface ScheduleService {
	/**
	 * ������ �Է�
	 */
	int addSchedule(ScheduleDTO scheduleDTO);
	
	/**
	 * �޷¿� ��������ϴ� ����!
	 */
	List<ScheduleDTO> selectSchedule(String userId);
	
	/**
	 * �޷¿� ����Ǿ��ִ� ������ ����
	 */
	int deleteSchedule(int scheduleNo, String userId);
	
	/**
	 * ������ ����
	 */
	int updateSchedule(int scheduleNo, String startDate, String endDate, String userId);
}
