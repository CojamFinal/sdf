package test.page;

public class PageCount {
	private int link=10;
	private int limit=10;
	private int totalpage=0;
	private String FirstImage="";
	private String BeforeImage="";
	private String NextImage="";
	private String LastImage="";
	
	//한 블럭안에 보여질 페이지 갯수,한페이지안에 보여질 게시글갯수,전체 페이지수
	public PageCount(int Link,int Limit,int TotalPage)
	{
		link=Link;
		limit=Limit;
		totalpage=TotalPage;
	}
	//가변인자는 jdk 1.4	부터 가능
	//페이지 앞뒤로 붙는 처음,이전,다음,마지막 부분을 이미지파일로 처리
	public void SetImage(String ... Params)
	{
		int Size=Params.length;
		if(Size==0) return;
		else
		{
			if(Size==2) 
			{
				BeforeImage=Params[0];
				NextImage=Params[1];
			}
			else
			{
				FirstImage=Params[0];
				BeforeImage=Params[1];
				NextImage=Params[2];
				LastImage=Params[3];
			}	
		}
	}
	//사용법 : 현재페이지,링크 url(예:sawonlist.do)
	//,추가 파라메타(맨처음&는 빼고), 처음,이전,다음,마지막 이미지파일(생략, 2개, 4개로만 입력)
	public String ShowPaging(int pagelink,String pagename,String OtherParam,String ... ButtonImage)
	{
		SetImage(ButtonImage);
		StringBuffer sb=new StringBuffer();
		int CurPage=0;
		if((pagelink%link)>0) //페이지수가  link 보다 큰 경우
		{
			if(pagelink>link) CurPage=(int)(pagelink/link)*link+1;
			else CurPage=1;
		}
		else CurPage=pagelink-(link-1);
		int bPage=CurPage-1;
		sb.append("<table><tr><td><table width='100%' border='0' cellpadding='0' cellspacing='0' align='center' ><tr>");
		if(totalpage>limit)
		{
			sb.append("<td width='50'>");
			if(pagelink!=1) 
			{
				sb.append("<a href='");
				sb.append(pagename);
				sb.append("?page=1&");
				sb.append(OtherParam);
				sb.append("' class='sub_base'>");
			}
			//이미지파일 삽입
			if(FirstImage.equals(""))
			{
				sb.append("처음");
			}
			else
			{
				sb.append("<img src='");
				sb.append(FirstImage);
				sb.append("' border='0' align='absmiddle' />&nbsp;처음");
			}
			if(pagelink!=1)				{
				sb.append("</a>");
			}
			sb.append("&nbsp;&nbsp;&nbsp;</td><td width='50' >");
			
			//이전페이지설정
			if(pagelink>link)
			{
				sb.append("<a href='");
				sb.append(pagename);
				sb.append("?page=");
				sb.append(bPage);
				sb.append("&");
				sb.append(OtherParam);
				sb.append("' class='sub_base'>");
			}
			//이미지파일 삽입
			if(BeforeImage.equals(""))
			{
				sb.append("이전");
			}
			else
			{
				sb.append("<img src='");
				sb.append(BeforeImage);
				sb.append("' border='0' align='absmiddle' />&nbsp;이전");
			}
			if(pagelink>link)
			{
				sb.append("</a>");
			}
			sb.append("&nbsp;&nbsp;&nbsp;</td>");
		}
		sb.append("<td align='center'>");
		int cPage=0;
		for(cPage=CurPage;cPage<CurPage+link;cPage++)
		{
			if(cPage>totalpage) break;
			if(cPage==pagelink) 
			{
				sb.append("<font color='red'>");
				sb.append(cPage);
				sb.append("</font>&nbsp;&nbsp;");
			}
			else
			{
				sb.append("<a href='");
				sb.append(pagename);
				sb.append("?page=");
				sb.append(cPage);
				sb.append("&");
				sb.append(OtherParam);
				sb.append("' class='sub_base'>");
				sb.append(cPage);
				sb.append("</a>&nbsp;&nbsp;");
			}
		}
		sb.append("</td>");
		if(totalpage>limit)
		{
			sb.append("<td width='50'>");
			if(totalpage>pagelink)
			{
				sb.append("<a href='");
				sb.append(pagename);
				sb.append("?page=");
				sb.append(cPage);
				sb.append("&");
				sb.append(OtherParam);
				sb.append("' class='sub_base'>");
			}
			//이미지파일 삽입
			if(NextImage.equals(""))
			{
				sb.append("다음");
			}
			else
			{
				sb.append("<img src='");
				sb.append(NextImage);
				sb.append("' border='0' align='absmiddle' />&nbsp;다음");
			}
			if(totalpage>pagelink)
			{
				sb.append("</a>");
			}
			sb.append("&nbsp;&nbsp;&nbsp;</td><td width='50' >");
			if(pagelink!=totalpage)
			{
				//if(pagelink!=1) 
				{
					sb.append("<a href='");
					sb.append(pagename);
					sb.append("?page=");
					sb.append(totalpage);
					sb.append("&");
					sb.append(OtherParam);
					sb.append("' class='sub_base'>");
				}
				//이미지파일 삽입
				if(LastImage.equals(""))
				{
					sb.append("마지막");
				}
				else
				{
					sb.append("<img src='");
					sb.append(LastImage);
					sb.append("' border='0' align='absmiddle' />");
				}
				if(pagelink!=totalpage)
				{
					sb.append("</a>");
				}
				sb.append("&nbsp;</td>");
			}
		}
		sb.append("</tr></table></td></tr></table>");
		return sb.toString();
	}
	
}
