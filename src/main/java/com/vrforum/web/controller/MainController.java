package com.vrforum.web.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.vrforum.web.domain.UserVO;
import com.vrforum.web.domain.UserVrVO;
import com.vrforum.web.service.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {
	@Inject
	UserService userDAO;

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);
		return "home";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> loginPost(@RequestBody UserVO userVO, HttpSession session) {
		UserVO resultUserVO;
		Map<String, Object> data = new HashMap<>();
		try {
			if (session.getAttribute("loginedUser") != null) {
				resultUserVO = (UserVO)session.getAttribute("loginedUser");
				logger.debug("로그인 실패 id: " + resultUserVO.getUserId() + "로그인 되어있음");
				data.put("result", false);
			} else {
				resultUserVO = userDAO.login(userVO);
				session.setAttribute("loginedUser", resultUserVO);
				data.put("result", true);
				logger.debug("로그인 성공  id: " + resultUserVO.getUserId());
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug("찾을수 없음 : " + e.toString());
			data.put("result", false);
			data.put("msg", e.toString());
		}
		return data;
	}

	@RequestMapping(value = "logout")
	public @ResponseBody Map<String, Object> logout(HttpSession session, String msg) {
		Map<String, Object> data = new HashMap<>();
		logger.debug(msg);
		try {
			session.removeAttribute("loginedUser");
			data.put("result", true);
		} catch (IllegalStateException e) {
			data.put("result", false);
		}
		return data;
	}

	@RequestMapping(value = "/signUp", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> signUp(@RequestBody UserVrVO userVrVO,
			HttpSession session) throws Exception {
		Map<String, Object> resultData = new HashMap<>();
		
		if(userVrVO.getUserId() == null) {
			logger.debug("아이디 값 없음");
			resultData.put("result", false);
			resultData.put("msg", "입력된 데이터 없음");
		}else {
			logger.debug(userVrVO.toString());
			userDAO.signUp(userVrVO);
			resultData.put("result", true);
			session.setAttribute("loginedUser", userDAO.login(userVrVO));
		}
		
		return resultData;
	}

	@RequestMapping("test")
	public String test() {
		return "gnb/test";
	}
}
