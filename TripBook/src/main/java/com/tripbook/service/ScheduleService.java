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
	
	/**
	 * ������ ��ȣ�� ������ �˻�
	 */
	ScheduleDTO selectScheduleByNo(int scheduleNo);
	
	/**
	 * �ϴ�� �ڽ� ����Ʈ ���
	 */
	List<ScheduleDTO> selectBiography(String userId);
	
	/**
	 * �ϴ�� ģ�� ����Ʈ ���
	 */
	List<ScheduleDTO> selectFriendBiography(String userId, String friendId, String state);
	
	/**
	 * ���� �˻�
	 */
	List<ScheduleDTO> searchBiography(String keyword);
}
