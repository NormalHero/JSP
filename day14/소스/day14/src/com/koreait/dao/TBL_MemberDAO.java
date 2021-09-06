package com.koreait.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.beans.TBL_MemberBeans;
import com.koreait.mybatis.SqlMapConfig;

public class TBL_MemberDAO {
	
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public TBL_MemberDAO() {
		// 데이터베이스는 바로 실제 DB에 적용되는것이 아니고
		// commit을 해야 적용이 된다. 
		// true를 넘겨주면 SQL문 실행시 자동으로 commit(오토커밋)이 일어난다.
		sqlsession = factory.openSession(true);
	}
	
	public boolean join(TBL_MemberBeans member) {
		boolean result = false;
		// 취미부분 제외
	  	if(sqlsession.insert("Member.join", member) == 1) {
	  		result = true;
	  	}
		
		return result;
	}
	
	public TBL_MemberBeans login(String userid, String userpw) {
		HashMap<String, String> datas = new HashMap<>();
		datas.put("userid", userid);
		datas.put("userpw", userpw);
		
		TBL_MemberBeans member = sqlsession.selectOne("Member.login",datas);
		return member;
	}
	
	public boolean checkId(String userid) {
		boolean result = false;
		
		int cnt = 0;
		cnt = sqlsession.selectOne("Member.checkid",userid);
		if( cnt == 1 ) {
			result = true;
		}
		
		return result;
	}
	
	public TBL_MemberBeans serchById(String userid) {
		return (TBL_MemberBeans)sqlsession.selectOne("Member.serchById", userid);
	}
	
	public List<TBL_MemberBeans> getList() {
		List<TBL_MemberBeans> result =  sqlsession.selectList("Member.getList");
		return result;
	}
	
	
	
	
	
/*	
	Context context;
	DataSource dataSource;
	Connection conn;
	PreparedStatement pstm;
	ResultSet rs;
	
	public boolean join(TBL_MemberBeans member) {
		String sql = "INSERT INTO TBL_MEMEBER VALUES(?,?,?,?,?,?)";
		int result = 0;
		
		try {
			context = new InitialContext(null);
			dataSource = (DataSource)context.lookup("java:comp/env/jdbc/oracle");
			conn = dataSource.getConnection();

//			conn = DBConnection.getConnection();
			
			pstm = conn.prepareStatement(sql);
			System.out.println(member.getUserid());
			System.out.println(member.getUserpw());
			System.out.println(member.getUsername());
			System.out.println(member.getUsergender());
			System.out.println(member.getUserphone());
			
			pstm.setString(1, member.getUserid());
			pstm.setString(2, member.getUserpw());
			pstm.setString(3, member.getUsername());
			pstm.setString(4, member.getUsergender());
			pstm.setString(5, member.getUserphone());
			
			// 취미 : ["등산하기", "게임", "영화감상"] -> 등산하기,게임,영화감상
			String[] hobbys = member.getUserhobby();
			String userhobby = "";
			userhobby += hobbys[0];
			for(int i = 1; i<hobbys.length; i++) {
				userhobby += "," + hobbys[i];
			}
			
			// 등산하기,게임,영화감상
			pstm.setString(6, userhobby);
			
			result = pstm.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (NamingException e) {
			e.printStackTrace();
		}
		
		if(result != 0) {
			// 성공
			return true;
		} else {
			// 실패
			return false;
		}
		
	}
	
	// 수정 전
//	public boolean login(String userid, String userpw) {
//		boolean flag = false;
//		// "SELECT * FROM TBL_MEMEBER WHERE USERID='apple' AND USERPW='abcd1234';
//		String sql = "SELECT * FROM TBL_MEMEBER WHERE USERID=? AND USERPW=?";
//		TBL_MemberBeans member = null;
//		
//		try {
//			
//			conn = DBConnection.getConnection();
//			pstm = conn.prepareStatement(sql);
//			
//			pstm.setString(1, userid);
//			pstm.setString(2, userpw);
//			
//			rs = pstm.executeQuery();
//			
//			if(rs.next()){
//				flag = true;
//			}
//			
//		}catch(SQLException e) {
//			e.printStackTrace();
//		}
//		return flag;
//	}
	
	//수정 후
	public TBL_MemberBeans login(String userid, String userpw) {
		// "SELECT * FROM TBL_MEMEBER WHERE USERID='apple' AND USERPW='abcd1234';
		String sql = "SELECT * FROM TBL_MEMEBER WHERE USERID=? AND USERPW=?";
		TBL_MemberBeans member = null;
		
		try {
			context = new InitialContext(null);
			dataSource = (DataSource)context.lookup("java:comp/env/jdbc/oracle");
			conn = dataSource.getConnection();
			
//			conn = DBConnection.getConnection();
			pstm = conn.prepareStatement(sql);
			
			pstm.setString(1, userid);
			pstm.setString(2, userpw);
			
			rs = pstm.executeQuery();
			
			if(rs.next()){
				member = new TBL_MemberBeans();
				member.setUserid(rs.getString(1));
				member.setUserpw(rs.getString(2));
				member.setUsername(rs.getString(3));
				member.setUsergender(rs.getString(4));
				member.setUserphone(rs.getString(5));
				member.setUserhobby(rs.getString(6).split(","));
				
				System.out.println(member.getUserid()); 
				System.out.println(member.getUserpw()); 
				System.out.println(member.getUsername()); 
				System.out.println(member.getUsergender()); 
				System.out.println(member.getUserphone()); 
				System.out.println(member.getUserhobby()); 
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return member;
	}
	
	public boolean checkId(String userid) {
		boolean result = false;
		String sql = "SELECT COUNT(*) FROM TBL_MEMEBER WHERE USERID=?";
		
		try {
			context = new InitialContext(null);
			dataSource = (DataSource)context.lookup("java:comp/env/jdbc/oracle");
			conn = dataSource.getConnection();
			
//			conn = DBConnection.getConnection();
			pstm = conn.prepareStatement(sql);
			
			pstm.setString(1, userid);
			rs = pstm.executeQuery();
			
			if(rs.next()) {
				if(rs.getInt(1) == 1) {
					result = true;
				}
			}
			
		}catch( SQLException e ) {
			e.printStackTrace();
		} catch (NamingException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
*/	
	
}


































