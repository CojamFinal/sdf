package test.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import test.academy.academyDao;
import test.academy.academyDto;
import test.license.SpringFileWriter;

@Controller
public class AcademyController {

	@Autowired
	private academyDao academydao;

	/*@RequestMapping("/menu/academy.com")
	public ModelAndView academy() {
		ModelAndView model=new ModelAndView();
		List<academyDto> list=academydao.getAlldatas();
		model.addObject("acadlist",list);
		model.setViewName("/1/board/academy");
		return model;
	}*/

	@RequestMapping(value="/menu/academyread.com",method=RequestMethod.POST)
	public ModelAndView academyRead(@ModelAttribute academyDto dto,@RequestParam("ac_photo")
	MultipartFile ac_photo, HttpServletRequest request) {
		ModelAndView view=new ModelAndView();
		String path=request.getSession().getServletContext().getRealPath("/save1");
		SpringFileWriter writer=new SpringFileWriter();
		writer.writeFile(ac_photo, path, ac_photo.getOriginalFilename());
		dto.setAcademy_geogra(ac_photo.getOriginalFilename());
		academydao.insertAcademy(dto);
		view.setViewName("redirect:academy.com");
		return view;
	}
	

	@RequestMapping("/menu/acadWriteForm.com")
	public String acadWriteForm() {
		return "/1/board/acadWriteForm";
	} 

}
