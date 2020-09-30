package net.member.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import net.member.db.*;

public class MemberDAO {

	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;

	public MemberDAO() {
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			con = ds.getConnection();
		} catch (Exception ex) {
			System.out.println("DB 연결 실패 : " + ex);
			return;
		}
	}

	// 아이디와 비밀번호 확인
	public boolean isUser(String id, String pw) {
		String member_sql = "select member_pw from member_list where member_id=?";
		try {
			pstmt = con.prepareStatement(member_sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {

				if (pw.equals((String)rs.getString(1))) {
					return true;
				}
			}
			
		} catch (SQLException ex) {
			System.out.println("isUser 에러 : " + ex);
			return false;
		}
		return false;
	}
	
	//회원가입
	public boolean memberJoin(MemberBean bean) throws Exception {
		
		int result = 0;
		
		try{
		String sql = "INSERT INTO member_list(member_code, member_id, member_pw, member_name, member_mail,"
				+ " member_phone, member_birthday, member_address) "
				+ "VALUES(member_list_SEQ.NEXTVAL,?,?,?,?,?,?,?)";
		
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, bean.getMember_id());
		pstmt.setString(2, bean.getMember_pw());
		pstmt.setString(3, bean.getMember_name());
		pstmt.setString(4, bean.getMember_mail());
		pstmt.setString(5, bean.getMember_phone());
		pstmt.setString(6, bean.getMember_birthday());
		pstmt.setString(7, bean.getMember_address());
		
		result=pstmt.executeUpdate();
		if(result == 0) return false;
		return true;
		
		}catch(Exception ex){
			System.out.println("meberJoin 에러 : "+ex);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return false;
		
	}
	
	//비회원 처리
	public boolean nonmemberJoin(NonMemberBean bean) throws Exception {
		
		int result = 0;
		
		try{
		String sql = "INSERT INTO nonmember_list(nonmember_code, nonmember_name, nonmember_phone) "
				+ "VALUES(nonmember_list_SEQ.NEXTVAL,?,?)";
		
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, bean.getNonmember_name());
		pstmt.setString(2, bean.getNonmember_phone());
		
		result=pstmt.executeUpdate();
		if(result == 0) return false;
		return true;
		
		}catch(Exception ex){
			System.out.println("nonmeberJoin 에러 : "+ex);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return false;
		
	}
	
	public int getMemberCode(String id) throws Exception{
		try {
			pstmt = con.prepareStatement("select member_code from member_list where member_id = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				return rs.getInt("member_code");
			}
		}catch(Exception ex){
			System.out.println("getMemberDetail 에러 : " + ex);
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt !=null)try{pstmt.close();}catch(SQLException ex){}
		}
		return -1;
	}
	
	// 회원 세부 내용 받아오기
	public MemberBean getMemberDetail(String id) throws Exception{
		MemberBean bean = null;
		try{
			pstmt = con.prepareStatement("select * from member_list where member_id = ?");
			pstmt.setString(1, id);
			
			rs= pstmt.executeQuery();
			
			if(rs.next()){
				bean = new MemberBean();
				bean.setMember_code(rs.getInt("member_code"));
				bean.setMember_id(rs.getString("member_id"));
				bean.setMember_pw(rs.getString("member_pw"));
				bean.setMember_name(rs.getString("member_name"));
				bean.setMember_mail(rs.getString("member_mail"));
				bean.setMember_phone(rs.getString("member_phone"));
				bean.setMember_birthday(rs.getString("member_birthday"));
				bean.setMember_address(rs.getString("member_address"));
				bean.setMember_rank(rs.getString("member_rank"));
				
			}
			return bean;
		}catch(Exception ex){
			System.out.println("getMemberDetail 에러 : " + ex);
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt !=null)try{pstmt.close();}catch(SQLException ex){}
		}
		return null;
	}
	/*
	//회원 수 계산
	public int getListCount() {
		int x= 0;
		
		try{
			pstmt=con.prepareStatement("select count(*) from member");
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				x=rs.getInt(1);
			}
		}catch(Exception ex){
			System.out.println("getListCount 에러: " + ex);			
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return x;
	}
	
	//회원 목록 받아오기
	public List getMemberList(){
		
		String member_list_sql="select * from Member";
		
		List list = new ArrayList();
		

		try{
			pstmt = con.prepareStatement(member_list_sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				MemberBean bean = new MemberBean();
				bean.setAddress(rs.getString("address"));
				bean.setBirthday(rs.getString("birthday"));
				bean.setChk(rs.getString("chk"));
				bean.setId(rs.getString("id"));
				bean.setMail(rs.getString("mail"));
				bean.setName(rs.getString("name"));
				bean.setPw(rs.getString("pw"));
				bean.setUser_no(rs.getInt("user_no"));
				list.add(bean);
			}
			
			return list;
		}catch(Exception ex){
			System.out.println("getMemberList 에러 : " + ex);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return null;
	}
	
	// 회원 삭제
	public boolean memberDelete(String id){
		String member_delete_sql="delete from member where id=?";
		
		int result=0;
		
		try{
			pstmt=con.prepareStatement(member_delete_sql);
			pstmt.setString(1, id);
			result=pstmt.executeUpdate();
			if(result==0)return false;
			
			return true;
		}catch(Exception ex){
			System.out.println("memberDelete 에러 : "+ex);
		}finally{
			try{
				if(pstmt!=null)pstmt.close();
			}catch(Exception ex) {}
		}
		
		return false;
	}
	*/
}
