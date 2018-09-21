package test.seminar;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import org.springframework.stereotype.Repository;

import test.CommonDao;

@Repository
public class SeminarDao extends CommonDao {
	public void insertSeminarData(SeminarDto dto) {
		dto.setContent(dto.getContent().replace("\n", "<br>"));
		getSqlSession().insert("insertSeminarData",dto);
	}
	
	public List<SeminarDto> getAllDatas() {
		System.out.println(getSqlSession().selectList("SelectAll"));
		return getSqlSession().selectList("SelectAll");
	}
	public void Delete(String seq) {
		getSqlSession().delete("Delete",seq);
	}
	
	public int TotalCount() {
		return getSqlSession().selectOne("TotalCounts");
	}
	public void Update(SeminarDto dto) {
		getSqlSession().update("Update",dto);
	}
	public List<SeminarDto> getMainList(){
		return getSqlSession().selectList("getSeminarMainList");
	}
	
	public List<SeminarDto> getSearchedDatas(SeminarDto dto) { 
		String sql ="select * from seminar where ";
		String hashtag = "";
		String date ="";
		String keyword = "";
		if (dto.getKeyword() != null) {
			keyword = dto.getKeyword().trim();
		}

		hashtag += "skills like '%"+keyword+"%' ";

		if (dto.getSkills()!=null) {
			StringTokenizer st = new StringTokenizer(dto.getSkills(), ",");
			while (st.hasMoreTokens()) {
				hashtag += "AND skills like '%"+st.nextToken()+"%' ";
			}
		}	

	

		if (dto.getStartday() != null && dto.getEndday() != null) {
			date = "AND startday between "+dto.getStartday()+"and "+dto.getEndday()+"AND endday between "+dto.getStartday()+"and "+dto.getEndday();
		}

		sql = sql + hashtag;

		if (dto.getLocation()!= "") {
			sql += "AND location like '%"+dto.getLocation()+"%' ";
		}

		if (dto.getKeyword()!= null) {
			sql += "AND skills like '%"+hashtag+"%' AND '%"+keyword+"%' AND location like '%"+keyword+"%'";
		}

		if(dto.getLocation()=="" && dto.getCategory()==null && dto.getSkills() ==null && dto.getKeyword() !=null) {
			sql = "select * from seminar where skills like '%"+keyword+"%' OR category like '%"+keyword+"%' OR location like '%"+keyword+"%'";
		}

		System.out.println("sql="+sql);
		Map<String,String> map = new HashMap<>();
		map.put("sql", sql);

		return getSqlSession().selectList("SelectSearched", map);
	}
	
	public List<SeminarDto> getList(int start,int end) {
		  HashMap <String,Object>map=new HashMap<String,Object>();
		  System.out.println(start+"ddd"+end);
		  map.put("start", start);
		  map.put("end", end);
		  List<SeminarDto> list=getSqlSession().selectList("semiselectDatas",map);
		  return list;
		 }
	
	public List<SeminarDto> getSearchList(int start,int end, SeminarDto dto) {
		
		String sql ="select * from seminar where ";
		String hashtag = "";
		String date ="";
		String keyword = "";
		if (dto.getKeyword() != null) {
			keyword = dto.getKeyword().trim();
		}

		hashtag += "hashtag like '%"+keyword+"%' ";

		if (dto.getHashtag()!=null) {
			StringTokenizer st = new StringTokenizer(dto.getHashtag(), ",");
			while (st.hasMoreTokens()) {
				hashtag += "AND hashtag like '%"+st.nextToken()+"%' ";
			}
		}	

		if (dto.getStartday() != null && dto.getEndday() != null) {
			date = "AND startday between "+dto.getStartday()+"and "+dto.getEndday()+"AND endday between "+dto.getStartday()+"and "+dto.getEndday();
		}

		sql = sql + hashtag;

		if (dto.getLocation()!= "") {
			sql += "AND location like '%"+dto.getLocation()+"%' ";
		}

		if (dto.getKeyword()!= null) {
			sql += "AND hashtag like '%"+keyword+"%'"+"AND location like '%"+keyword+"%'";
		}

		if(dto.getLocation()=="" && dto.getCategory()==null && dto.getSkills() ==null && dto.getKeyword() !=null) {
			sql = "select * from seminar where hashtag like '%"+keyword+"%' OR location like '%"+keyword+"%'"+" OR title like '%"+keyword+"%'";
		}

			System.out.println("sql="+sql);
			Map<String,Object> map = new HashMap<>();
			System.out.println(start+"d"+end);
			map.put("sql", sql);
			map.put("start", start);
			map.put("end", end);
		  
		  List<SeminarDto> list=getSqlSession().selectList("SelectSearched",map);
		  return list;
		 }
	
		public List<SeminarDto> getViewDatas(String seq){
			
			return getSqlSession().selectList("getViewDatas",seq);
		}

}
