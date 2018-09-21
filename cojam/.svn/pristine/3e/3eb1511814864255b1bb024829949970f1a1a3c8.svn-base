package test.academy;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import test.CommonDao;


@Repository
public class academyDao extends CommonDao {
	
	public List<academyDto> getAlldatas() {
		List<academyDto> list=getSqlSession().selectList("academyAlldata");
		return list;
	}
	
	public void insertAcademy(academyDto dto) {
		getSqlSession().insert("academyInsert", dto);
	}
	public List<academyDto> getList(int start,int end) {
		  HashMap <String,Object>map=new HashMap<String,Object>();
		  map.put("start", start);
		  map.put("end", end);
		  List<academyDto> list=getSqlSession().selectList("acaselectDatas",map);
		  return list;
		 }
		
		public int getCount() {
			return getSqlSession().selectOne("acagetCount");
		}
}
