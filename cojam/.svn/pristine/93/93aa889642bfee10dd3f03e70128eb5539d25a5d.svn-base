package test.user;


import org.springframework.stereotype.Repository;

import test.CommonDao;

@Repository
public class UserDao extends CommonDao {

	public int overlapCheck(String id) {
		return getSqlSession().selectOne("IdCount", id);
	}

	public void joinOk(UserDto dto) {
		getSqlSession().insert("joinOk", dto);
	}

	public boolean login(String id, String password) {
		boolean bool = false;
		System.out.println(id+ password);
		if (password.equals(getSqlSession().selectOne("login",id))){
			bool = true;
		}
		return bool;
	}
	
}
