package com.tripbook.dto;

public class GroupDTO {
	private int groupNo;
	private String groupName;
	public int getGroupNo() {
		return groupNo;
	}
	public void setGroupNo(int groupNo) {
		this.groupNo = groupNo;
	}
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	@Override
	public String toString() {
		return "GroupDTO [groupNo=" + groupNo + ", groupName=" + groupName + "]";
	}
	
}
