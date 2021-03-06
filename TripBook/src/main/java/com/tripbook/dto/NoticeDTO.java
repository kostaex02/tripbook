package com.tripbook.dto;

public class NoticeDTO {
	private int noticeNo;
	private String state;
	private String sender;
	private String receiver;
	private String sendDate;
	private String content;
	private String checkState;
	private String fileName;
	private String name;
	
	
	public NoticeDTO() {
		super();
	}
	public NoticeDTO(String state, String sender, String receiver) {
		super();
		this.state = state;
		this.sender = sender;
		this.receiver = receiver;
	}
	public NoticeDTO(String state, String sender, String receiver, String content) {
		super();
		this.state = state;
		this.sender = sender;
		this.receiver = receiver;
		this.content = content;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getSendDate() {
		return sendDate;
	}
	public void setSendDate(String sendDate) {
		this.sendDate = sendDate;
	}
	public String getCheckState() {
		return checkState;
	}
	public void setCheckState(String checkState) {
		this.checkState = checkState;
	}
	@Override
	public String toString() {
		return "NoticeDTO [noticeNo=" + noticeNo + ", state=" + state + ", sender=" + sender + ", receiver=" + receiver
				+ ", sendDate=" + sendDate + ", content=" + content + ", checkState=" + checkState + ", fileName="
				+ fileName + ", name=" + name + "]";
	}
	
}
