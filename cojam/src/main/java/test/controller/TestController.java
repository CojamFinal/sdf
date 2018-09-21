package test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import test.freeboard.freeboardDao;
import test.seminar.SeminarDao;

@Controller
public class TestController {
	@Autowired
	freeboardDao freeboarddao;
	@Autowired
	SeminarDao seminardao;
	
	@RequestMapping("/main.com")
	public String start( Model model){
		
		model.addAttribute("MainFreeboardList",freeboarddao.getMainList());
		model.addAttribute("MainSeminarList", seminardao.getMainList());
		return "main.tiles";
	}

}
