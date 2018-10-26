package com.vrforum.web.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.vrforum.web.domain.GameBoardVO;
import com.vrforum.web.mapper.GameBoardMapper;

@Service
public class GameBoardService implements IGameBoardService {
	
	@Inject
	GameBoardMapper mapper;
	
	@Override
	public int insertBoard(GameBoardVO gameBoardVO) throws Exception {
		return mapper.insertBoard(gameBoardVO);
	}

	@Override
	public List<GameBoardVO> selectBoards(int gameCategory, String boardCategory) throws Exception{
		return mapper.selectGameBoardVOs(gameCategory, boardCategory);
	}

	@Override
	public GameBoardVO selectBoard(int gameCategory, String boardCategory, int sno) throws Exception {
		return mapper.selectGameBoardVO(gameCategory, boardCategory, sno);
	}

	@Override
	public int deleteBoard(int gameCategory, String boardCategory, int sno) throws Exception {
		return mapper.deleteGameBoard(gameCategory, boardCategory, sno);
	}

	@Override
	public int updateBoard(int gameCategory, String boardCategory, GameBoardVO gameBoardVO) throws Exception {
		return mapper.updateGameBoard(gameCategory, boardCategory, gameBoardVO);
	}

	@Override
	public int countBoardNum(int gameCategory, String boardCategory) throws Exception {
		return mapper.countBoardNum(gameCategory, boardCategory);
	}

}
