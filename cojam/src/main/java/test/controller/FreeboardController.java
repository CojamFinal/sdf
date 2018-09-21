package test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import test.freeboard.freeboardDao;
import test.freeboard.freeboardDto;

@Controller
public class FreeboardController {

	@Autowired
	private freeboardDao freeboarddao;

	/*@RequestMapping("/menu/freeboard.com")
	public ModelAndView freeboard() {
		ModelAndView model=new ModelAndView();
		List<freeboardDto> list=freeboarddao.getAlldatas();
		model.addObject("freelist",list);
		model.setViewName("/1/board/freeboard");
		return model;
	}*/
	
	@RequestMapping("/menu/freeContent.com")
	public ModelAndView freeboardContent(@RequestParam int seq) {
		ModelAndView model=new ModelAndView();
		freeboardDto dto=freeboarddao.selectseqfree(seq);
		model.addObject("dto",dto);
		model.setViewName("/1/board/freeContent");
		return model;
	}
	
	@RequestMapping("/menu/delete.com")
	public ModelAndView freeboardDelete(@RequestParam int seq) {
		ModelAndView model=new ModelAndView();
		freeboardDto dto=freeboarddao.delete(seq);
		model.addObject("dto",dto);
		model.setViewName("redirect:freeboard.com");
		return model;
	}

	@RequestMapping(value="/menu/freeboardread.com",method=RequestMethod.POST)
	public ModelAndView freeboardRead(@ModelAttribute freeboardDto freeboarddto) {
		ModelAndView view=new ModelAndView();
		freeboarddao.insertFreeboard(freeboarddto);
		view.setViewName("redirect:freeboard.com");
		return view;
	}

	@RequestMapping("/menu/freeWriteForm.com")
	public String freeWriteForm() {
		return "/1/board/freeWriteForm";
	} 

}