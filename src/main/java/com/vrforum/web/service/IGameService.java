package com.vrforum.web.service;

import java.util.List;

import com.vrforum.web.domain.GameVO;

public interface IGameService {
	public GameVO selectVO(int idx) throws Exception;
	public List<GameVO> gameList() throws Exception;
	public List<GameVO> searchGames(String keyword) throws Exception;
}
