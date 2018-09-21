package test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import test.sites.SitesDao;

@Controller
public class SitesController {
	@Autowired
	SitesDao sitesdao;
	
	/*@RequestMapping("/menu/sites.com")
	ModelAndView SiteGo() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("datas", sitesdao.getAllDatas());
		mav.setViewName("/1/view/sitesmain");
		return mav;
	}*/

}
