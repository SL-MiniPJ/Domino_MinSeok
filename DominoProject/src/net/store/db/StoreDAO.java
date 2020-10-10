package net.store.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import net.store.db.*;
import net.store.action.*;

public class StoreDAO {
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;

	public StoreDAO() {
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			con = ds.getConnection();
		} catch (Exception ex) {
			System.out.println("DB 연결 실패 : " + ex);
			return;
		}
	}
	
	//매장 수 계산
	public int getStoreCount() {
		int x= 0;
			
		try{
			pstmt=con.prepareStatement("select count(*) from store");
			rs = pstmt.executeQuery();
				
			if(rs.next()){
				x=rs.getInt(1);
			}
		}catch(Exception ex){
			System.out.println("getStoreCount 에러: " + ex);			
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return x;
	}

	// 매장등록
	public boolean storeAdd(StoreBean bean) throws Exception {

		int result = 0;

		try {
			String sql = "INSERT INTO store(store_code, store_name, store_address, store_location, store_phone, store_opening, store_park, "
					+ "store_other, store_online, store_offline, store_sale)"
					+ "VALUES(store_SEQ.NEXTVAL,?,?,?,?,?,?,?,?,?,?)";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getStore_name());
			pstmt.setString(2, bean.getStore_address());
			pstmt.setString(3, bean.getStore_location());
			pstmt.setString(4, bean.getStore_phone());
			pstmt.setString(5, bean.getStore_opening());
			pstmt.setString(6, bean.getStore_park());
			pstmt.setString(7, bean.getStore_other());
			pstmt.setInt(8, bean.getStore_online());
			pstmt.setInt(9, bean.getStore_offline());
			pstmt.setInt(10, bean.getStore_sale());

			result = pstmt.executeUpdate();
			if (result == 0)
				return false;
			return true;

		} catch (Exception ex) {
			System.out.println("storeAdd 에러 : " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
		}
		return false;

	}
	
	// 매장 리스트 받아오기
	public List getStoreList(){
		
		String store_list_sql="select * from store order by store_code";
		
		List list = new ArrayList();
		

		try{
			pstmt = con.prepareStatement(store_list_sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				StoreBean bean = new StoreBean();
				bean.setStore_address(rs.getString("store_address"));
				bean.setStore_code(rs.getInt("store_code"));
				bean.setStore_location(rs.getString("store_location"));
				bean.setStore_name(rs.getString("store_name"));
				bean.setStore_offline(rs.getInt("store_offline"));
				bean.setStore_online(rs.getInt("store_online"));
				bean.setStore_opening(rs.getString("store_opening"));
				bean.setStore_other(rs.getString("store_other"));
				bean.setStore_park(rs.getString("store_park"));
				bean.setStore_phone(rs.getString("store_phone"));
				bean.setStore_sale(rs.getInt("store_sale"));
				list.add(bean);
			}
			
			return list;
		}catch(Exception ex){
			System.out.println("getStoreList 에러 : " + ex);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return null;
	}
	
	// 매장 세부 내용 받아오기
	public StoreBean getStoreDetail(int store_code) throws Exception{
		StoreBean bean = null;
		try{
			pstmt = con.prepareStatement(
					"select * from store where store_code = ?");
			pstmt.setInt(1, store_code);
			
			rs= pstmt.executeQuery();
			
			if(rs.next()){
				bean = new StoreBean();
				bean.setStore_address(rs.getString("store_address"));
				bean.setStore_code(rs.getInt("store_code"));
				bean.setStore_location(rs.getString("store_location"));
				bean.setStore_name(rs.getString("store_name"));
				bean.setStore_offline(rs.getInt("store_offline"));
				bean.setStore_online(rs.getInt("store_online"));
				bean.setStore_opening(rs.getString("store_opening"));
				bean.setStore_other(rs.getString("store_other"));
				bean.setStore_park(rs.getString("store_park"));
				bean.setStore_phone(rs.getString("store_phone"));
				bean.setStore_sale(rs.getInt("store_sale"));
				
			}
			return bean;
		}catch(Exception ex){
			System.out.println("getStoreDetail 에러 : " + ex);
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt !=null)try{pstmt.close();}catch(SQLException ex){}
		}
		return null;
	}
	
	// 매장 삭제
	public boolean storeDelete(int store_code){
		String store_delete_sql="delete from store where store_code=?";
			
		int result=0;
			
		try{
			pstmt=con.prepareStatement(store_delete_sql);
			pstmt.setInt(1, store_code);
			result=pstmt.executeUpdate();
			if(result==0)return false;
				
			return true;
		}catch(Exception ex){
			System.out.println("storeDelete 에러 : "+ex);
		}finally{
			try{
				if(pstmt!=null)pstmt.close();
			}catch(Exception ex) {}
		}
			
		return false;
	}
	
	//매장 정보 수정
	public boolean storeModify(StoreBean bean, int store_code) throws Exception{
		System.out.println("함수 들어옴");
		
		String sql = "update store set store_name=?, store_address=?, store_location=?, store_phone=?,"
				+ "store_opening=?, store_park=?, "
				+ "store_other=?, store_online=?, store_offline=?, store_sale=?"
				+ "where store_code=?";
			
		try{
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, bean.getStore_name());
			pstmt.setString(2, bean.getStore_address());
			pstmt.setString(3, bean.getStore_location());
			pstmt.setString(4, bean.getStore_phone());
			pstmt.setString(5, bean.getStore_opening());
			pstmt.setString(6, bean.getStore_park());
			pstmt.setString(7, bean.getStore_other());
			pstmt.setInt(8, bean.getStore_online());
			pstmt.setInt(9, bean.getStore_offline());
			pstmt.setInt(10, bean.getStore_sale());
			pstmt.setInt(11, store_code);
			
			
			pstmt.executeUpdate();
			return true;
		}catch(Exception ex){
			System.out.println("storeModify 에러 : " + ex);
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
			}
		return false;
	}
	
	public StoreBean getStoreAddress(String store_name) throws Exception{
        StoreBean bean = null;
        try{
           pstmt = con.prepareStatement(
                 "select * from store where store_name = ?");
           pstmt.setString(1, store_name);
           
           rs= pstmt.executeQuery();
           
           if(rs.next()){
              bean = new StoreBean();
              bean.setStore_address(rs.getString("store_address"));
              bean.setStore_location(rs.getString("store_location"));
              bean.setStore_name(rs.getString("store_name"));
              
           }
           return bean;
        }catch(Exception ex){
           System.out.println("getStoreDetail 에러 : " + ex);
        }finally{
           if(rs!=null)try{rs.close();}catch(SQLException ex){}
           if(pstmt !=null)try{pstmt.close();}catch(SQLException ex){}
        }
        return null;
     }

}
