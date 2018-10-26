package com.vrforum.web.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.vrforum.web.domain.GameBoardVO;

public interface IGameBoardService {
	int insertBoard(GameBoardVO gameBoardVO) throws Exception;
	
	List<GameBoardVO> selectBoards(@Param("gameCategory") int gameCategory,
			@Param("boardCategory") String boardCategory) throws Exception;
	
	GameBoardVO selectBoard(@Param("gameCategory") int gameCategory,
			@Param("boardCategory") String boardCategory,
			@Param("sno") int sno) throws Exception;
	
	int deleteBoard(@Param("gameCategory") int gameCategory,
			@Param("boardCategory") String boardCategory,
			@Param("sno") int sno) throws Exception;
	
	public int updateBoard(@Param("gameCategory") int gameCategory,
		@Param("boardCategory") String boardCategory,
		GameBoardVO gameBoardVO) throws Exception;
	
	public int countBoardNum(
		@Param("gameCategory") int gameCategory,
		@Param("boardCategory") String boardCategory) throws Exception;


}
