package test.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

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
	
/*	@RequestMapping(value = "/testLogin")
	public String isComplete(HttpSession session) {
		return "/1/view/login";

	}*/
	@RequestMapping(value = "/callback")
	public String navLogin(HttpServletRequest request) throws Exception {	
		return "/1/view/callback";
	}	

	@RequestMapping(value = "/personalInfo")
	public void personalInfo(HttpServletRequest request) throws Exception {
	        String token = "access_token";// 네이버 로그인 접근 토큰; 여기에 복사한 토큰값을 넣어줍니다.
	        String header = "Bearer " + token; // Bearer 다음에 공백 추가
	        try {
	            String apiURL = "https://openapi.naver.com/v1/nid/me";
	            URL url = new URL(apiURL);
	            HttpURLConnection con = (HttpURLConnection)url.openConnection();
	            con.setRequestMethod("GET");
	            con.setRequestProperty("Authorization", header);
	            int responseCode = con.getResponseCode();
	            BufferedReader br;
	            if(responseCode==200) { // 정상 호출
	                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
	            } else {  // 에러 발생
	                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
	            }
	            String inputLine;
	            StringBuffer response = new StringBuffer();
	            while ((inputLine = br.readLine()) != null) {
	                response.append(inputLine);
	            }
	            br.close();
	            System.out.println(response.toString());
	        } catch (Exception e) {
	            System.out.println(e);
	        }
	}



}
