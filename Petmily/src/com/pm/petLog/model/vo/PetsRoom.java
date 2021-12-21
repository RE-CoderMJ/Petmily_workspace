package com.pm.petLog.model.vo;

public class PetsRoom {
	private int memNo;
	private String pProfileImg;
	private String roomName;
	private String bio;
	
	public PetsRoom() {}

	public PetsRoom(int memNo, String pProfileImg, String roomName, String bio) {
		super();
		this.memNo = memNo;
		this.pProfileImg = pProfileImg;
		this.roomName = roomName;
		this.bio = bio;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getpProfileImg() {
		return pProfileImg;
	}

	public void setpProfileImg(String pProfileImg) {
		this.pProfileImg = pProfileImg;
	}

	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

	public String getBio() {
		return bio;
	}

	public void setBio(String bio) {
		this.bio = bio;
	}

	@Override
	public String toString() {
		return "PetsRoom [memNo=" + memNo + ", pProfileImg=" + pProfileImg + ", roomName=" + roomName + ", bio=" + bio
				+ "]";
	}
	
	
}
