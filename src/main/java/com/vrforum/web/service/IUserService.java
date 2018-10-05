package com.vrforum.web.service;

import com.vrforum.web.domain.UserVO;

public interface IUserService {
	public UserVO login(UserVO userVO) throws Exception;
}
