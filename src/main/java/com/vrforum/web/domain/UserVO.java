package com.vrforum.web.domain;

public class UserVO {
	private String userId;
	private String nickname;
	
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	private String password;
	private boolean hasVr;
	private String vr;
	
	public boolean isHasVr() {
		return hasVr;
	}
	public void setHasVr(boolean hasVr) {
		this.hasVr = hasVr;
	}
	public String getVr() {
		return vr;
	}
	public void setVr(String vr) {
		this.vr = vr;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean loginChk() {
		if (userId != null && userId != "") {
			return true;
		}
		return false;
	}
}
