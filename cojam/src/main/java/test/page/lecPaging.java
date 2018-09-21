package test.page;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import test.lecture.lectureDao;
import test.lecture.lectureDto;

@Controller
public class lecPaging {

	@Autowired
	lectureDao dao;
	
	@RequestMapping("/menu/lecture.com")
	 public ModelAndView lecture(
	   @RequestParam(value="page",defaultValue="1") String page) 
	 {
	
	  //페이징 처리
	  List<lectureDto> list=dao.getAlldatas();
	  int totalcount;
	  int limit;
	  int currentpage;
	  int totalpage;
	  
	  PageCount pc;
	  String pageShow;
	  
	  totalcount=dao.getCount();
	  limit=2;
	  currentpage=1;
	  if(page!=null)
	  {
	   currentpage=Integer.parseInt(page);
	  }
	  totalpage=(int)Math.ceil((double)totalcount/limit);
	  int start=(currentpage-1)*limit;
	  
	  list=dao.getList(start, limit);
	  System.out.println("list size:"+list.size());
	  pc=new PageCount(5, limit, totalpage);
	  pageShow=pc.ShowPaging(currentpage, "lecture.com", "");
	  
	  ModelAndView view=new ModelAndView();
	  view.addObject("leclist",list);
	  view.addObject("pageShow",pageShow);
	  int number=totalcount-(currentpage-1)*limit;
	  view.addObject("number",number);  
	  view.setViewName("/1/board/lecture");
	  return view;
	  
	 }
	
}
