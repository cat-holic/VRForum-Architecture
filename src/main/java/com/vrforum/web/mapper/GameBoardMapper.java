package com.vrforum.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.vrforum.web.domain.BoardPageVO;
import com.vrforum.web.domain.GameBoardVO;

@Mapper
public interface GameBoardMapper {
	public int insertBoard(GameBoardVO gameBoardVO) throws Exception;

	public List<GameBoardVO> selectGameBoardVOs(@Param("gameCategory") int gameCategory,
			@Param("boardCategory") String boardCategory) throws Exception;

	public GameBoardVO selectGameBoardVO(@Param("gameCategory") int gameCategory,
			@Param("boardCategory") String boardCategory,
			@Param("sno") int sno) throws Exception;

	public int deleteGameBoard(@Param("gameCategory") int gameCategory,
			@Param("boardCategory") String boardCategory,
			@Param("sno") int sno) throws Exception;

	public int updateGameBoard(@Param("gameCategory") int gameCategory,
			@Param("boardCategory") String boardCategory,
			GameBoardVO gameBoardVO) throws Exception;

	public int countBoardNum(
			@Param("gameCategory") int gameCategory,
			@Param("boardCategory") String boardCategory) throws Exception;
}
