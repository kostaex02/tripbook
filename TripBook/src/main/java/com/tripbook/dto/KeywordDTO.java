package com.tripbook.dto;

public class KeywordDTO {
	private int keywordNo;
	private String keyword;
	private int scheduleNo;
	public int getKeywordNo() {
		return keywordNo;
	}
	public void setKeywordNo(int keywordNo) {
		this.keywordNo = keywordNo;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public int getScheduleNo() {
		return scheduleNo;
	}
	public void setScheduleNo(int scheduleNo) {
		this.scheduleNo = scheduleNo;
	}
	public KeywordDTO(String keyword, int scheduleNo) {
		super();
		this.keyword = keyword;
		this.scheduleNo = scheduleNo;
	}
	public KeywordDTO() {
		super();
	}
	
}
