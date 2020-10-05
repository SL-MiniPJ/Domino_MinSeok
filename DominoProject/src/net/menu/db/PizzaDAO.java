package net.menu.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import net.store.db.StoreBean;

public class PizzaDAO {
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;

	public PizzaDAO() {
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			con = ds.getConnection();
		} catch (Exception ex) {
			System.out.println("DB 연결 실패 : " + ex);
			return;
		}
	}
	
	
	//피자 추가
	public boolean pizzaAdd(PizzaBean bean) throws Exception {
		
		System.out.println("pizzaAdd 함수 들어옴");

		int result = 0;

		try {
			String sql = "INSERT INTO pizza(pizza_code, pizza_name, pizza_image, pizza_price)"
					+ "VALUES(pizza_SEQ.NEXTVAL,?,?,?)";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getPizza_name());
			pstmt.setBytes(2, bean.getPizza_image());
			pstmt.setInt(3, bean.getPizza_price());

			result = pstmt.executeUpdate();
			if (result == 0)
				return false;
			System.out.println("여기는 PizzaDAO의 pizzaAdd : 등록 성공!");
			return true;

		} catch (Exception ex) {
			System.out.println("pizzaAdd 에러 : " + ex);
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
	

}
