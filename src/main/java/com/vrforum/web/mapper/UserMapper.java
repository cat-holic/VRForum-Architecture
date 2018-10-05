package com.vrforum.web.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.vrforum.web.domain.UserVO;

@Mapper
public interface UserMapper {
	public UserVO selectUser() throws Exception;
	public UserVO selectUserinfo(UserVO userVO) throws Exception;
	public void insertUser(UserVO userVO) throws Exception;
}
