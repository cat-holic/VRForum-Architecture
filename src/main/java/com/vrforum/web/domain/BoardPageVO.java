package com.vrforum.web.domain;

public class BoardPageVO {
	private int currentPage;
	private int startPage;
	private int endPage;
	private int totalPage;
	private int totalBoardCount;
	private int boardListNum;
	private int displayPageNum;
	private int searchKeyword;
	private int searchType;
	private boolean prev;
	private boolean next;
	

	public BoardPageVO() {
		this.currentPage = 1;
		this.boardListNum = 20;
		this.displayPageNum = 10;
	}
	
	public int getTotalBoardCount() {
		return totalBoardCount;
	}

	public void setTotalBoardCount(int totalBoardCount) {
		this.totalBoardCount = totalBoardCount;
		calcPage();
	}
	
	private void calcPage() {
		this.endPage = (int)(Math.ceil(this.getCurrentPage() /
				(double)this.displayPageNum) * this.displayPageNum);
		this.startPage = this.endPage - this.displayPageNum + 1;
		
		int tempEndPage = (int)(Math.ceil(this.totalBoardCount /
				(double)this.boardListNum));
		
		if(endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		
		prev = startPage == 1 ? false : true;
		next = endPage * boardListNum >= totalBoardCount ? false : true;
		
	}
	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		if(currentPage <= 0 ) {
			this.currentPage = 1;
			return;
		}
		this.currentPage = currentPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}


	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getBoardListNum() {
		return boardListNum;
	}

	public void setBoardListNum(int boardListNum) {
		if(boardListNum <= 20 || boardListNum >= 100) {
			this.boardListNum = 20;
			return;
		}
		this.boardListNum = boardListNum;
		
	}

	public int getSearchKeyword() {
		return searchKeyword;
	}

	public void setSearchKeyword(int searchKeyword) {
		this.searchKeyword = searchKeyword;
	}

	public int getSearchType() {
		return searchType;
	}

	public void setSearchType(int searchType) {
		this.searchType = searchType;
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}
	
	
	
}
