package com.koreait.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.koreait.beans.MemberBean;

public class MemberDAO {
	Connection conn;
	PreparedStatement pstm;
	ResultSet rs;
	
	// 이름에 따른 나이 조회 결과
	public int getAge(String name) {
		int age = 0;
		String sql = "SELECT AGE FROM MEMBER WHERE NAME=?";
		
		try {
			conn = DBConnection.getConnection();
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, name);
			ResultSet rs = pstm.executeQuery();
			
			if(rs.next()) {
				age = rs.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return age;
	}
	
	// 전체조회
	public ArrayList<MemberBean> selectAll() {
		String sql = "SELECT * FROM MEMBER";
		ArrayList<MemberBean> result = new ArrayList<>();
		
		try {
			conn = DBConnection.getConnection();
			pstm = conn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			
			while(rs.next()) {
				MemberBean member = new MemberBean();
				member.setName(rs.getString(1));
				member.setAge(rs.getInt(2));
				result.add(member);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	
	
	
	
	
}












