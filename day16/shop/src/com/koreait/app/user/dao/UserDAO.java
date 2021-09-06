package com.koreait.app.user.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.mybatis.SqlMapConfig;

public class UserDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public UserDAO() {
		sqlsession = factory.openSession(true);
	}
	
	public boolean join(UserDTO user) {
		boolean result = false;
		
		if( sqlsession.insert("User.join", user) != 0 ) {
			result = true;
		}
		
		return result;
	}

	public boolean login(String userid, String userpw) {
		HashMap<String, String> datas = new HashMap<>();
		datas.put("userid", userid);
		datas.put("userpw", userpw);
		
		boolean result = false;
		
		if((Integer)sqlsession.selectOne("User.login",datas) == 1) {
			result = true;
		}
		
		return result;
	}

	public UserDTO getDatail(String login_id) {
		UserDTO user = (UserDTO)sqlsession.selectOne("User.getDetail", login_id);
		return user;
	}

	public boolean updateUser(UserDTO user) {
		boolean result = false;
		
		if(sqlsession.update("User.updateUser", user) != 0) {
			result = true;
		}
		
		return result;
	}
	
	
	
}













