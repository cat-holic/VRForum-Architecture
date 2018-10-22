package com.vrforum.web;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.vrforum.web.controller.MainController;
import com.vrforum.web.domain.UserVO;
import com.vrforum.web.domain.VrMachineVO;
import com.vrforum.web.mapper.UserMapper;
import com.vrforum.web.mapper.VrInfoMapper;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations={
				"classpath:/context/mybatis-context.xml"
		})
public class TestMapper {
//	private static final Logger logger = LoggerFactory.getLogger(TestMapper.class);
//	@Autowired
//	private UserMapper mapper;
	
//	@Test
//	public void insert() throws Exception{
////		User user = mapper.selectUser();
////		System.out.println(user.getId() +" -- "+ user.getPassword());
//		UserVO user = new UserVO();
//		user.setUserId("test7");
//		user.setPassword("test7");
//		mapper.insertUser(user);
//		System.out.println("성공");
//	}
	
	@Inject
	private VrInfoMapper infoMapper;
	
	@Test
	public void select() throws Exception{
		System.out.println("실행");
		try {
			System.out.println(infoMapper.selectIdx());
		}catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}
}
