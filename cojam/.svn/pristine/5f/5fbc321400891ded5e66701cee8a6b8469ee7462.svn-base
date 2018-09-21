package test.controller;



import java.util.List;
import java.util.Vector;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import test.page.PageCount;
import test.seminar.SeminarDao;
import test.seminar.SeminarDto;

@Controller
public class SeminarController {
	
	@Autowired
	SeminarDao seminardao;
	
	@RequestMapping("/seminarupdateform.com")
	public ModelAndView UpdateFormGo(String seq) {
		ModelAndView mav = new ModelAndView();
		List<SeminarDto> list = new Vector<>();
		list = seminardao.getViewDatas(seq);
		for (SeminarDto dto : list) {
			dto.setContent(dto.getContent().replaceAll("<br>", "\n"));
		}
		
		mav.addObject("datas",list);
		mav.setViewName("/1/view/seminarupdate");
		return mav;
	}
	
	@RequestMapping("/seminarupdate.com")
	public ModelAndView Update(SeminarDto dto) {
		ModelAndView mav = new ModelAndView();
		dto.setContent(dto.getContent().replaceAll("\n", "<br>"));
		seminardao.Update(dto);
		mav.addObject("datas",seminardao.getViewDatas(dto.getSeq()));
		mav.setViewName("/1/view/seminarview");
		return mav;
	}
	
	
	@RequestMapping("/seminardelete.com")
	public String delete(String seq) {
		seminardao.Delete(seq);
		return "redirect:/menu/seminarmain.com";
	}
	
	@RequestMapping("/seminarwriteform.com")
	public ModelAndView SeminarWriteForm() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("/1/view/seminarwrite");
		return mav;
	}
	@RequestMapping("/seminarwrite.com")
	public String SeminarWrite(SeminarDto dto) {
		seminardao.insertSeminarData(dto);
		return "redirect:/menu/seminarmain.com";
	}
	@RequestMapping("/seminarview.com")
	public ModelAndView SeminarView(String seq) {
		ModelAndView mav = new ModelAndView();
		
		System.out.println(seq);
		mav.addObject("datas",seminardao.getViewDatas(seq));
		
		mav.setViewName("/1/view/seminarview");
		return mav;
	}

	@RequestMapping("/menu/seminarmain.com")
	 public ModelAndView mainGo(
	   @RequestParam(value="page",defaultValue="1") String page
	   ) {
		
	  List<SeminarDto> list=seminardao.getAllDatas();
	  int totalcount;
	  int limit;
	  int currentpage;
	  int totalpage;
	  
	  PageCount pc;
	  String pageShow;
	  
	  totalcount=seminardao.TotalCount();
	  limit=15;
	  currentpage=1;
	  if(page!=null)
	  {
	   currentpage=Integer.parseInt(page);
	  }
	  totalpage=(int)Math.ceil((double)totalcount/limit);
	  int start=(currentpage-1)*limit;
	  
	  list=seminardao.getList(start, limit);
	  System.out.println("list size:"+list.size());
	  pc=new PageCount(5, limit, totalpage);
	  pageShow=pc.ShowPaging(currentpage, "seminarmain.com", "");
	  
	  ModelAndView view=new ModelAndView();
	  view.addObject("semilist",list);
	  view.addObject("pageShow",pageShow);
	  int number=totalcount-(currentpage-1)*limit;
	  view.addObject("number",number);  
	  view.setViewName("/1/view/seminar");
	  return view;	  
	 }
}
