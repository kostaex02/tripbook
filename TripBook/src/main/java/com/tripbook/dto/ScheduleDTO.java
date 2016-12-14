package com.tripbook.dto;

public class ScheduleDTO {
	private int scheduleNo;
	private String subject;
	private String startDate;
	private String endDate;
	private String writeDate;
	private String state;
	private String writer;
	
	@Override
	public String toString() {
		return "ScheduleDTO [scheduleNo=" + scheduleNo + ", subject=" + subject + ", startDate=" + startDate
				+ ", endDate=" + endDate + ", writeDate=" + writeDate + ", state=" + state + ", writer=" + writer + "]";
	}
	
	public ScheduleDTO() {
		super();
	}

	public int getScheduleNo() {
		return scheduleNo;
	}
	public void setScheduleNo(int scheduleNo) {
		this.scheduleNo = scheduleNo;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	
}
