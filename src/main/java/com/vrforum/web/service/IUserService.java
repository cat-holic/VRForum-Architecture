package com.vrforum.web.service;

import com.vrforum.web.domain.UserVO;
import com.vrforum.web.domain.UserVrVO;

public interface IUserService {
	public UserVO login(UserVO userVO) throws Exception;
	public void signUp(UserVO userVO) throws Exception;
}
