package com.vrforum.web.mapper;

import com.vrforum.web.domain.UserVO;

public interface UserMapper {
	public UserVO selectUser() throws Exception;
	public UserVO selectUserinfo() throws Exception;
	public void insertUser(UserVO userVO) throws Exception;
}
