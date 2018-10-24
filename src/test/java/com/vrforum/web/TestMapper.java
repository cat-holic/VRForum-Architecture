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
import org.springframework.test.context.web.WebAppConfiguration;

import com.vrforum.web.controller.MainController;
import com.vrforum.web.domain.GameBoardVO;
import com.vrforum.web.domain.UserVO;
import com.vrforum.web.domain.VrMachineVO;
import com.vrforum.web.mapper.GameBoardMapper;
import com.vrforum.web.mapper.UserMapper;
import com.vrforum.web.mapper.VrInfoMapper;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations={
				"classpath:/context/mybatis-context.xml",
				"file:src/main/webapp/WEB-INF/spring/**/*.xml"
		})
@WebAppConfiguration
public class TestMapper {
	@Autowired
	private GameBoardMapper gameBoardMapper;
	
	@Test
	public void testSelect()throws Exception{
		System.out.println(gameBoardMapper.countBoardNum(1, "tip"));
		List<GameBoardVO> gameBoardVOs = gameBoardMapper.selectGameBoardVOs(1, "tip");
		for(GameBoardVO item : gameBoardVOs) {
			System.out.println(item.toString());
		}
		System.out.println();
		
	}
	
}
