package test.page;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import test.academy.academyDao;
import test.academy.academyDto;

@Controller
public class acaPaging {

	@Autowired
	academyDao dao;
	
	@RequestMapping("/menu/academy.com")
	 public ModelAndView academy(
	   @RequestParam(value="page",defaultValue="1") String page) 
	 {
	
	  //페이징 처리
	  List<academyDto> list=dao.getAlldatas();
	  int totalcount;
	  int limit;
	  int currentpage;
	  int totalpage;
	  
	  PageCount pc;
	  String pageShow;
	  
	  totalcount=dao.getCount();
	  limit=3;
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
	  pageShow=pc.ShowPaging(currentpage, "academy.com", "");
	  
	  ModelAndView view=new ModelAndView();
	  view.addObject("acalist",list);
	  view.addObject("pageShow",pageShow);
	  int number=totalcount-(currentpage-1)*limit;
	  view.addObject("number",number);  
	  view.setViewName("/1/board/academy");
	  return view;
	  
	 }
	
}
