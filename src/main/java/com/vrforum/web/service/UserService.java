package com.vrforum.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vrforum.web.domain.UserVO;
import com.vrforum.web.domain.UserVrVO;
import com.vrforum.web.mapper.UserMapper;

@Service
public class UserService implements IUserService {
	@Autowired
	UserMapper mapper;

	@Override
	public UserVO login(UserVO userVO) throws Exception {
		UserVO resultUserVO = mapper.selectUserinfo(userVO);
		if (resultUserVO != null) {
			return resultUserVO;
		} else
			return null;
	}

	@Override
	public void signUp(UserVO userVO) throws Exception {
		mapper.insertUser(userVO);
		if (((UserVrVO) userVO).isUserHasVr()) {
			mapper.insertUserVr((UserVrVO) userVO);
		}
	}
}
