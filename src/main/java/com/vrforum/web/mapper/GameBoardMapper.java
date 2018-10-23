package com.vrforum.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.vrforum.web.domain.BoardPageVO;
import com.vrforum.web.domain.GameBoardVO;

@Mapper
public interface GameBoardMapper {
	public int insertBoard(GameBoardVO gameBoardVO) throws Exception;

	public List<GameBoardVO> selectGameBoardVOs() throws Exception;

	public GameBoardVO selectGameBoardVO(@Param("idx") int idx) throws Exception;

	public int deleteGameBoard(@Param("idx") int idx) throws Exception;

	public int updateGameBoard(GameBoardVO gameBoardVO) throws Exception;

	public int countBoardNum(
			@Param("game_categoy") int idx,
			@Param("board_category") String boardCategory) throws Exception;
}
