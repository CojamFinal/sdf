package test.sites;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import test.CommonDao;


@Repository
public class SitesDao extends CommonDao {
	
	public List<SitesDto> getAllDatas() {
		return getSqlSession().selectList("getAllDatas");	
	}
	
	public int getTotalCount() {
		return getSqlSession().selectOne("getTotalCount");
	}
	
	public List<SitesDto> getList(int start,int end) {
		  HashMap <String,Object>map=new HashMap<String,Object>();
		  map.put("start", start);
		  map.put("end", end);
		  List<SitesDto> list=getSqlSession().selectList("sitesselectDatas",map);
		  return list;
		 }
	
}
