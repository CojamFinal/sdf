package test.page;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import test.seminar.SeminarDao;
import test.seminar.SeminarDto;

@Controller
public class semiPaging {

	@Autowired
	SeminarDao dao;
	
	
	@RequestMapping("/shearchedSeminarGo.com")
	 public ModelAndView searchGo(
	   @RequestParam(value="page",defaultValue="1") String page, SeminarDto dto) 
	 {
	  //페이징 처리
	  List<SeminarDto> list=dao.getAllDatas();
	  int totalcount;
	  int limit;
	  int currentpage;
	  int totalpage;

	  PageCount pc;
	  String pageShow;
	  
	  totalcount=dao.TotalCount();
	  limit=15;
	  currentpage=1;
	  if(page!=null)
	  {
	   currentpage=Integer.parseInt(page);
	  }
	  totalpage=(int)Math.ceil((double)totalcount/limit);
	  int start=(currentpage-1)*limit;
	  
	  list=dao.getSearchList(start, limit, dto);
	  System.out.println("list size:"+list.size());
	  pc=new PageCount(5, limit, totalpage);
	  pageShow=pc.ShowPaging(currentpage, "shearchedSeminarGo.com", "");
	  
	  ModelAndView view=new ModelAndView();
	  view.addObject("semilist",list);
	  view.addObject("pageShow",pageShow);
	  int number=totalcount-(currentpage-1)*limit;
	  view.addObject("number",number);  
	  view.setViewName("/1/view/searchedseminar");
	  return view;
	  
	 }
	
	
}
