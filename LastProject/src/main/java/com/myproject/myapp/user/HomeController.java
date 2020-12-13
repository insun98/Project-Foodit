package com.myproject.myapp.user;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	@RequestMapping(value="/yangdeok", method=RequestMethod.GET)
	public String moveToYangdeok() {
		return "yangdeok";
	}
	@RequestMapping(value="/new", method=RequestMethod.GET)
	public String moveToHome() {
		return "home";
	}
	@RequestMapping(value="/board/new", method=RequestMethod.GET)
	public String moveToHome1() {
		return "home";
	}
	@RequestMapping(value="/yongildae", method=RequestMethod.GET)
	public String moveToYengildae() {
		return "yongildae";
	}
	@RequestMapping(value="/beobwon", method=RequestMethod.GET)
	public String moveToBeobWon() {
		return "beobwon";
	}
	
	@RequestMapping(value="/board/yongildae", method=RequestMethod.GET)
	public String moveToYengildae2() {
		return "yongildae";
	}
	@RequestMapping(value="/board/beobwon", method=RequestMethod.GET)
	public String moveToBeobWon2() {
		return "beobwon";
	}
	@RequestMapping(value="/board/yangdeok", method=RequestMethod.GET)
	public String moveToYangdeok2() {
		return "yangdeok";
	}
	@RequestMapping(value="/login/signup", method=RequestMethod.GET)
	public String moveToSignin() {
		return "addform";
	}
	@RequestMapping(value="/login/add_ok.jsp", method=RequestMethod.GET)
	public String moveToSignup() {
		return "add_ok";
	}
	@RequestMapping(value="/board/login/logout")
	public String logout1(HttpSession session) {
		session.invalidate();
		return "redirect:/login/login";
	}
}
