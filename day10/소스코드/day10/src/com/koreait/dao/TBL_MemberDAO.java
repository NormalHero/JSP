package com.koreait.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.koreait.beans.TBL_MemberBeans;

public class TBL_MemberDAO {
	Connection conn;
	PreparedStatement pstm;
	ResultSet rs;
	
	public boolean join(TBL_MemberBeans member) {
		String sql = "INSERT INTO TBL_MEMEBER VALUES(?,?,?,?,?,?)";
		int result = 0;
		
		try {
			conn = DBConnection.getConnection();
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
			conn = DBConnection.getConnection();
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
		}
		return member;
	}
	
}











