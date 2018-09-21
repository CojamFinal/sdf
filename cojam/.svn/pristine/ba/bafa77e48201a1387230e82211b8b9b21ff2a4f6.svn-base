package test.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import test.user.UserDao;
import test.user.UserDto;

@Controller
public class LoginJoinController {

	@Autowired
	UserDao userdao;

	@RequestMapping("/join.com")
	ModelAndView GoJoinForm() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/1/view/join");
		return mav;
	}

	@RequestMapping("/login.com")
	ModelAndView GoLoginForm() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/1/view/login");
		return mav;
	}

	@ResponseBody
	@RequestMapping(value ="/overlapIdCheck.com", method = RequestMethod.POST)
	public String OverlapCheck(HttpServletRequest request, Model model){
		String id = request.getParameter("id");
		int rowcount = userdao.overlapCheck(id);
		return String.valueOf(rowcount);
	}

	@RequestMapping (value ="/joinOk.com", method = RequestMethod.POST)
	ModelAndView JoinOk(UserDto dto) {
		userdao.joinOk(dto);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main.tiles");
		return mav;
	}

	@ResponseBody
	@RequestMapping(value ="/login.com", method = RequestMethod.POST)
	String login(String id, String password, HttpSession session) {
		String bool = "0";
		if (userdao.login(id, password) == true) {
			bool ="1";
			session.setAttribute("id", id);
		}
		return bool;
	}

	@RequestMapping("/logout.com")
	String logOut(HttpSession session) {
		session.removeAttribute("id");
		return "/1/layout/body";
	}

}
