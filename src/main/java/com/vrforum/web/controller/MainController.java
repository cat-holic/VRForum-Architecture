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
		
		model.addAttribute("serverTime", formattedDate );
		return "home";
	}
	
	
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public @ResponseBody Map<String, Object> loginPost(@RequestBody UserVO userVO, HttpSession session) {
		UserVO resultUserVO;
		Map<String, Object> data = new HashMap<>();
		try {
			resultUserVO = userDAO.login(userVO);
			if (resultUserVO != null) {
				session.setAttribute("loginUser", resultUserVO);
				data.put("result", true);
			}
			else {
				data.put("result", false);
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug("찾을수 없음 : "+e.toString());
			data.put("result", false);
			data.put("msg", e.toString());
		}
		return data;
	}
	
	@RequestMapping(value="/signUp", method=RequestMethod.GET)
	public String signUpGet() {
		return "signUp";
	}
	
	@RequestMapping(value="/signUp", method=RequestMethod.POST)
	public String signUpPost(UserVO userVO) throws Exception{
		return "redirect:/";
	}
	
	@RequestMapping("test")
	public String test() {
		return "gnb/test";
	}
}
