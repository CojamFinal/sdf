package test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import test.lecture.lectureDao;
import test.lecture.lectureDto;

@Controller
public class LectureController {

	@Autowired
	private lectureDao lecturedao;

	/*@RequestMapping("/menu/lecture.com")
	public ModelAndView lecture() {
		ModelAndView model=new ModelAndView();
		List<lectureDto> list=lecturedao.getAlldatas();
		model.addObject("list",list);
		model.setViewName("/1/board/lecture");
		return model;
	}*/

	@RequestMapping(value="/menu/lectureread.com",method=RequestMethod.POST)
	public ModelAndView lectureRead(@ModelAttribute lectureDto lecturedto) {
		ModelAndView view=new ModelAndView();
		lecturedao.insertLecture(lecturedto);
		view.setViewName("redirect:lecture.com");
		return view;
	}

	@RequestMapping("/menu/lecWriteForm.com")
	public String lecWriteForm(){
		return "/1/board/lecWriteForm";
	} 
	
	

}
