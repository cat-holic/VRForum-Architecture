package com.vrforum.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.vrforum.web.domain.GameVO;


@Mapper
public interface GameMapper {
	public GameVO selectVO(int idx) throws Exception;
	public List<GameVO> selectVOs() throws Exception;
	public List<GameVO> selectSearchVOs(@Param("keyword") String keyword) throws Exception;
}
