package com.vrforum.web;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.vrforum.web.domain.UserVO;
import com.vrforum.web.mapper.UserMapper;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations={
				"classpath:/context/mybatis-context.xml"
		})
public class TestMapper {
	@Autowired
	private UserMapper mapper;
	
	@Test
	public void insert() throws Exception{
//		User user = mapper.selectUser();
//		System.out.println(user.getId() +" -- "+ user.getPassword());
		UserVO user = new UserVO();
		user.setUserId("test");
		user.setPassword("test");
		user.setHasVr(false);
		mapper.insertUser(user);
	}
}
