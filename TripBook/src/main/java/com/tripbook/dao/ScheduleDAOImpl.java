package com.tripbook.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tripbook.dto.BoardDTO;
import com.tripbook.dto.ScheduleDTO;

@Repository
public class ScheduleDAOImpl implements ScheduleDAO{
	@Autowired
	private SqlSession session;
	
	@Override
	public int addSchedule(ScheduleDTO scheduleDTO) {
		return session.insert("scheduleMapper.insertSchedule", scheduleDTO);
	}

	@Override
	public List<ScheduleDTO> selectSchedule(Map<String, Object> map) {
		return session.selectList("scheduleMapper.selectSchedule",map);
	}

	@Override
	public int deleteSchedule(int scheduleNo) {
		return session.delete("scheduleMapper.deleteSchedule", scheduleNo);
	}

	@Override
	public ScheduleDTO selectScheduleByNo(int scheduleNo) {
		return session.selectOne("scheduleMapper.selectScheduleByNo",scheduleNo);
	}

	@Override
	public int updateSchedule(ScheduleDTO scheduleDTO) {
		return session.update("scheduleMapper.updateSchedule", scheduleDTO);
	}

	@Override
	public List<Integer> selectScheduleNoByWriter(String writer) {
		return session.selectList("scheduleMapper.selectScheduleNoByWriter", writer);
	}

}
