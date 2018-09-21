package test.page;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import test.sites.SitesDao;
import test.sites.SitesDto;

@Controller
public class sitesPaging {

	@Autowired
	SitesDao dao;
	
	@RequestMapping("/menu/sites.com")
	 public ModelAndView SiteGo(
	   @RequestParam(value="page",defaultValue="1") String page) 
	 {
	
	  //페이징 처리
	  List<SitesDto> list=dao.getAllDatas();
	  int totalcount;
	  int limit;
	  int currentpage;
	  int totalpage;
	  
	  PageCount pc;
	  String pageShow;
	  
	  totalcount=dao.getTotalCount();
	  limit=10;
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
	  pageShow=pc.ShowPaging(currentpage, "sites.com", "");
	  
	  ModelAndView view=new ModelAndView();
	  view.addObject("siteslist",list);
	  view.addObject("pageShow",pageShow);
	  int number=totalcount-(currentpage-1)*limit;
	  view.addObject("number",number);  
	  view.setViewName("/1/view/sitesmain");
	  return view;
	  
	 }
	
}
