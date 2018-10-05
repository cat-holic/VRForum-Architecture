package com.vrforum.web;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.vrforum.web.domain.UserVO;
import com.vrforum.web.mapper.UserMapper;
import com.vrforum.web.service.IUserService;
import com.vrforum.web.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations={
				"classpath:/context/mybatis-context.xml"
		})
public class TestUser {
	@Autowired
	private UserMapper dao;
	
	@Test
	public void login() throws Exception{
		UserVO userVO = new UserVO();
		userVO.setUserId("test");
		userVO.setPassword("test");
		System.out.println(dao.selectUserinfo(userVO).getNickname());
	}
}
