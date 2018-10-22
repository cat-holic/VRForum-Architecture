package com.vrforum.web.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.vrforum.web.domain.GameVO;
import com.vrforum.web.mapper.GameMapper;

@Service
public class GameService implements IGameService {
	@Inject
	GameMapper mapper;
	
	@Override
	public GameVO selectVO(int idx) throws Exception {
		GameVO gameVO = mapper.selectVO(idx);
		return gameVO;
	}

	@Override
	public List<GameVO> gameList() throws Exception {
		List<GameVO> gameVOs = mapper.selectVOs();
		return gameVOs;
	}

	@Override
	public List<GameVO> searchGames(String keyword) throws Exception {
		List<GameVO> gameVOs = mapper.selectSearchVOs(keyword);
		return gameVOs;
	}

}
