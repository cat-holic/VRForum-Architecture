package com.vrforum.web.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.vrforum.web.domain.VrMachineVO;

@Mapper
public interface VrInfoMapper {
	public List<VrMachineVO> selectVrMachines() throws Exception;
	public Integer selectIdx() throws Exception;
}
