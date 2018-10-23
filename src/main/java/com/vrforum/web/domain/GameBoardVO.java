package com.vrforum.web.domain;

import java.util.Date;
import java.util.List;


public class GameBoardVO extends GameVO {
	private int sno;
	private String title;
	private String writer;
	private String contents;
	private int hit;
	private int recommend;
	private Date writeTime;
	private List<String> image;


	public int getSno() {
		return sno;
	}

	public void setSno(int sno) {
		this.sno = sno;
	}

	public List<String> getImage() {
		return image;
	}
	
	public void setImage(List<String> image) {
		this.image = image;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Date getWriteTime() {
		return writeTime;
	}
	public void setWriteTime(Date writeTime) {
		this.writeTime = writeTime;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public int getRecommend() {
		return recommend;
	}
	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}
	
	
}
