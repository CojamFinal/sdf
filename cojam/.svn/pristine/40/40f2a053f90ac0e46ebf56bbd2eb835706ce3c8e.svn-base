package test.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import test.license.SpringFileWriter;
import test.license.lDao;
import test.license.lDto;

@Controller
public class LicenseController {

	@Autowired
	private lDao ldao;

	/*@RequestMapping("/menu/license.com")
	public ModelAndView license() {
		ModelAndView model=new ModelAndView();
		List<lDto> list=ldao.getAlldatas();
		model.addObject("lists",list);
		model.setViewName("/1/board/license");
		return model;
	}*/

	@RequestMapping(value="/menu/licenseread.com",method=RequestMethod.POST)
	public ModelAndView dataRead(@ModelAttribute lDto dto,@RequestParam("photo")
								MultipartFile photo, HttpServletRequest request) {
		ModelAndView view=new ModelAndView();
		String path=request.getSession().getServletContext().getRealPath("/save");
		System.out.println(path);
		SpringFileWriter writer=new SpringFileWriter();
		writer.writeFile(photo, path, photo.getOriginalFilename());
		dto.setLc_imgname(photo.getOriginalFilename());
		ldao.insertlc(dto);
		view.setViewName("redirect:license.com");
		return view;
	}

	@RequestMapping("/menu/licWriteForm.com")
	public String licWriteForm(HttpSession session) {
		return "/1/board/licWriteForm";
	}

}
