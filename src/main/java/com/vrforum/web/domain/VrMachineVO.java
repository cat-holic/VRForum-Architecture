package com.vrforum.web.domain;

public class VrMachineVO {
	private int idx;
	private String name;
	private int price;
	private String filePath;
	
	public VrMachineVO() {
		this.filePath = "/resources/img/vrMachine/";
	}
	
	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath += filePath;
	}

	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
}
