package net.product.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ProductDAO {

	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;

	// Ŀ�ؼ� Ǯ (Connection Pool)
	public ProductDAO() {
		try{
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
		}catch(Exception e){
			System.out.println("DB ���� ���� : " + e);
			return;
		}
	}


	// pizza ���
	public boolean addPizza(ProductBean product) {

		int result1 = 0;
		int result2 = 0;
		int result3 = 0;
		String sql1 = "INSERT INTO pizza VALUES (pizza_seq.NEXTVAL,?,?,?)";
		String sql2 = "INSERT INTO nutrient_pizza VALUES "+
				"((select max(pizza_code) from pizza),?,?,?,?,?,?,?,?)";
		String sql3 = "INSERT INTO allergy_pizza VALUES ((select max(pizza_code) from pizza),?)";	

		try {
			// pizza
			pstmt = conn.prepareStatement(sql1);

			pstmt.setInt(1,product.getPizza_price());
			pstmt.setString(2,product.getPizza_name());
			pstmt.setString(3,product.getPizza_image());

			result1 = pstmt.executeUpdate();

			// pizza ���缺��
			pstmt = conn.prepareStatement(sql2);

			pstmt.setString(1,product.getStandard());
			pstmt.setInt(2,product.getWeight());
			pstmt.setInt(3,product.getTotal_weight());
			pstmt.setInt(4,product.getCalorie());
			pstmt.setInt(5,product.getProtein());
			pstmt.setInt(6,product.getSaturated_fat());
			pstmt.setInt(7,product.getSalt());
			pstmt.setInt(8,product.getSugars());

			result2 = pstmt.executeUpdate();

			// pizza �˷�����
			pstmt = conn.prepareStatement(sql3);

			pstmt.setString(1,product.getIngredient());

			result3 = pstmt.executeUpdate();

			if(result1==0 || result2==0 || result3==0) {
				return false;
			}
			System.out.println("pizza ��� ����");
			return true;

		}catch(Exception e){
			System.out.println("addPizza ���� : "+e);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException e){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException e){}

		}
		return false;
	}

	// ���� ��� ���� getPizzaList
	public List getPizzaList() {

		String sql = "SELECT  p.pizza_code, p.pizza_name, p.pizza_price, n.standard, n.weight, n.total_weight," + 
				"n.calorie, n.protein, n.saturated_fat, n.salt, n.sugars, p.pizza_image " + 
				"FROM pizza p, nutrient_pizza n "+
				"WHERE p.pizza_code=n.pizza_code(+) "+
				"ORDER BY p.pizza_code";

		List list = new ArrayList();

		try{
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while(rs.next()){
				ProductBean product = new ProductBean();

				product.setPizza_code(rs.getInt("pizza_code"));
				product.setPizza_name(rs.getString("pizza_name"));
				product.setPizza_price(rs.getInt("pizza_price"));
				product.setStandard(rs.getString("standard"));
				product.setWeight(rs.getInt("weight"));
				product.setTotal_weight(rs.getInt("total_weight"));
				product.setCalorie(rs.getInt("calorie"));
				product.setProtein(rs.getInt("protein"));
				product.setSaturated_fat(rs.getInt("saturated_fat"));
				product.setSalt(rs.getInt("salt"));
				product.setSugars(rs.getInt("sugars"));
				product.setPizza_image(rs.getString("pizza_image"));
				list.add(product);
			}

			return list;
		}catch(Exception e){
			System.out.println("getPizzaList ���� : " + e);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException e){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException e){}

		}
		return null;
	}

	// ���� ���� DeletePizza
	public boolean DeletePizza(int code) {

		int result1 = 0;
		int result2 = 0;
		int result3 = 0;
		String sql1 = "Delete FROM nutrient_pizza WHERE pizza_code=? ";
		String sql2 = "Delete FROM allergy_pizza WHERE pizza_code=? ";
		String sql3 = "Delete FROM pizza WHERE pizza_code=? ";

		try{
			// nutrient_pizza ����
			pstmt = conn.prepareStatement(sql1);
			pstmt.setInt(1, code);

			result1 = pstmt.executeUpdate();

			// allergy_pizza ����
			pstmt = conn.prepareStatement(sql2);
			pstmt.setInt(1, code);

			result2 = pstmt.executeUpdate();

			// pizza ����
			pstmt = conn.prepareStatement(sql3);
			pstmt.setInt(1, code);

			result3 = pstmt.executeUpdate();

			if(result1==0 || result2==0 || result3==0) {
				return false;
			}
			System.out.println("pizza ���� ����");
			return true;

		}catch(Exception e){
			System.out.println("DeletePizza ���� : "+e);
		}finally{
			try{
				if(pstmt!=null) {pstmt.close();}}catch(Exception e) {}

		}
		return false;
	}


	// side ���
	public boolean addSide(ProductBean product) {

		int result1 = 0;
		int result2 = 0;
		int result3 = 0;
		String sql1 = "INSERT INTO side VALUES (side_seq.NEXTVAL,?,?,?)";
		String sql2 = "INSERT INTO nutrient_side VALUES "+
				"((select max(side_code) from side),?,?,?,?,?,?)";
		String sql3 = "INSERT INTO allergy_side VALUES ((select max(side_code) from side),?)";	

		try {
			// side
			pstmt = conn.prepareStatement(sql1);

			pstmt.setString(1,product.getSide_name());
			pstmt.setString(2,product.getSide_image());
			pstmt.setInt(3,product.getSide_price());

			result1 = pstmt.executeUpdate();

			// side ���缺��
			pstmt = conn.prepareStatement(sql2);

			pstmt.setInt(1,product.getCalorie());
			pstmt.setInt(2,product.getProtein());
			pstmt.setInt(3,product.getTotal_weight());
			pstmt.setInt(4,product.getSaturated_fat());
			pstmt.setInt(5,product.getSalt());
			pstmt.setInt(6,product.getSugars());

			result2 = pstmt.executeUpdate();

			// side �˷�����
			pstmt = conn.prepareStatement(sql3);

			pstmt.setString(1,product.getIngredient());

			result3 = pstmt.executeUpdate();

			if(result1==0 || result2==0 || result3==0) {
				return false;
			}
			System.out.println("side ��� ����");
			return true;

		}catch(Exception e){
			System.out.println("addSide ���� : "+e);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException e){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException e){}

		}
		return false;
	}

	// Side ��� ���� getSideList
	public List getSideList() {

		String sql = "SELECT p.side_code, p.side_name, p.side_price, n.total_weight," + 
				"n.calorie, n.protein, n.saturated_fat, n.salt, n.sugars, p.side_image " + 
				"FROM side p, nutrient_side n "+
				"WHERE p.side_code=n.side_code(+) "+
				"ORDER BY p.side_code";

		List list = new ArrayList();

		try{
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while(rs.next()){
				ProductBean product = new ProductBean();

				product.setSide_code(rs.getInt("side_code"));
				product.setSide_name(rs.getString("side_name"));
				product.setSide_price(rs.getInt("side_price"));
				product.setTotal_weight(rs.getInt("total_weight"));
				product.setCalorie(rs.getInt("calorie"));
				product.setProtein(rs.getInt("protein"));
				product.setSaturated_fat(rs.getInt("saturated_fat"));
				product.setSalt(rs.getInt("salt"));
				product.setSugars(rs.getInt("sugars"));
				product.setSide_image(rs.getString("side_image"));
				list.add(product);
			}

			return list;
		}catch(Exception e){
			System.out.println("getSideList ���� : " + e);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException e){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException e){}

		}
		return null;
	}

	// ���̵� ���� DeletePizza
	public boolean DeleteSide(int code) {

		int result1 = 0;
		int result2 = 0;
		int result3 = 0;
		String sql1 = "Delete FROM nutrient_side WHERE side_code=? ";
		String sql2 = "Delete FROM allergy_side WHERE side_code=? ";
		String sql3 = "Delete FROM side WHERE side_code=? ";

		try{
			// nutrient_pizza ����
			pstmt = conn.prepareStatement(sql1);
			pstmt.setInt(1, code);

			result1 = pstmt.executeUpdate();

			// allergy_pizza ����
			pstmt = conn.prepareStatement(sql2);
			pstmt.setInt(1, code);

			result2 = pstmt.executeUpdate();

			// pizza ����
			pstmt = conn.prepareStatement(sql3);
			pstmt.setInt(1, code);

			result3 = pstmt.executeUpdate();

			if(result1==0 || result2==0 || result3==0) {
				return false;
			}
			System.out.println("side ���� ����");
			return true;

		}catch(Exception e){
			System.out.println("DeleteSide ���� : "+e);
		}finally{
			try{
				if(pstmt!=null) {pstmt.close();}}catch(Exception e) {}

		}
		return false;
	}


	// Dough ���
	public boolean addDough(ProductBean product) {

		int result1 = 0;
		String sql1 = "INSERT INTO dough VALUES (dough_seq.NEXTVAL,?,?,?)";

		try {
			// dough
			pstmt = conn.prepareStatement(sql1);

			pstmt.setString(1,product.getDough_name());
			pstmt.setString(2,product.getDough_image());
			pstmt.setInt(3,product.getDough_price());

			result1 = pstmt.executeUpdate();

			if(result1==0) {
				return false;
			}
			System.out.println("dough ��� ����");
			return true;

		}catch(Exception e){
			System.out.println("addSide ���� : "+e);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException e){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException e){}

		}
		return false;
	}

	// Dough ��� ���� getDoughList
	public List getDoughList() {

		String sql = "SELECT p.dough_code, p.dough_name, p.dough_price, p.dough_image "+
				"FROM dough p "+
				"ORDER BY p.dough_code";

		List list = new ArrayList();

		try{
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while(rs.next()){
				ProductBean product = new ProductBean();

				product.setDough_code(rs.getInt("dough_code"));
				product.setDough_name(rs.getString("dough_name"));
				product.setDough_price(rs.getInt("dough_price"));
				product.setDough_image(rs.getString("dough_image"));
				list.add(product);
			}

			return list;
		}catch(Exception e){
			System.out.println("getDoughList ���� : " + e);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException e){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException e){}

		}
		return null;
	}

	// ���� ���� DeletePizza
	public boolean DeleteDough(int code) {

		int result1 = 0;
		String sql1 = "Delete FROM dough WHERE dough_code=? ";

		try{
			System.out.println("DelDao1");
			// nutrient_pizza ����
			pstmt = conn.prepareStatement(sql1);
			pstmt.setInt(1, code);

			result1 = pstmt.executeUpdate();

			if(result1==0) {
				return false;
			}
			System.out.println("dough ���� ����");
			return true;

		}catch(Exception e){
			System.out.println("DeleteDough ���� : "+e);
		}finally{
			try{
				if(pstmt!=null) {pstmt.close();}}catch(Exception e) {}

		}
		return false;
	}



	// topping ���
	public boolean addTopping(ProductBean product) {

		int result1 = 0;
		String sql1 = "INSERT INTO Topping VALUES (topping_seq.NEXTVAL,?,?,?)";

		try {
			// Topping
			pstmt = conn.prepareStatement(sql1);

			pstmt.setString(1,product.getTopping_name());
			pstmt.setString(2,product.getTopping_image());
			pstmt.setInt(3,product.getTopping_price());

			result1 = pstmt.executeUpdate();

			if(result1==0) {
				return false;
			}
			System.out.println("Topping ��� ����");
			return true;

		}catch(Exception e){
			System.out.println("addTopping ���� : "+e);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException e){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException e){}

		}
		return false;
	}

	// Topping ��� ���� getToppingList
	public List getToppingList() {

		String sql = "SELECT p.topping_code, p.topping_name, p.topping_price, p.topping_image "+
				"FROM topping p "+
				"ORDER BY p.topping_name";

		List list = new ArrayList();

		try{
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while(rs.next()){
				ProductBean product = new ProductBean();
				
				product.setTopping_code(rs.getInt("topping_code"));
				product.setTopping_name(rs.getString("topping_name"));
				product.setTopping_price(rs.getInt("topping_price"));
				product.setTopping_image(rs.getString("topping_image"));
				list.add(product);
			}

			return list;
		}catch(Exception e){
			System.out.println("getToppingList ���� : " + e);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException e){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException e){}

		}
		return null;
	}

	// ���� ���� DeletePizza
	public boolean DeleteTopping(String code) {

		int result1 = 0;
		String sql1 = "Delete FROM topping WHERE topping_code=? ";

		try{
			// nutrient_pizza ����
			pstmt = conn.prepareStatement(sql1);
			pstmt.setString(1, code);

			result1 = pstmt.executeUpdate();

			if(result1==0) {
				return false;
			}
			System.out.println("topping ���� ����");
			return true;

		}catch(Exception e){
			System.out.println("DeleteTopping ���� : "+e);
		}finally{
			try{
				if(pstmt!=null) {pstmt.close();}}catch(Exception e) {}

		}
		return false;
	}


	// other ���
	public boolean addOther(ProductBean product) {

		int result1 = 0;
		int result2 = 0;
		int result3 = 0;
		String sql1 = "INSERT INTO other VALUES (other_seq.NEXTVAL,?,?,?)";
		String sql2 = "INSERT INTO nutrient_other VALUES "+
				"((select max(Other_code) from Other),?,?,?,?,?)";
		String sql3 = "INSERT INTO allergy_Other VALUES ((select max(other_code) from other),?)";	

		try {
			// Other
			pstmt = conn.prepareStatement(sql1);

			pstmt.setString(1,product.getOther_name());
			pstmt.setString(2,product.getOther_image());
			pstmt.setInt(3,product.getOther_price());

			result1 = pstmt.executeUpdate();

			// Other ���缺��
			pstmt = conn.prepareStatement(sql2);

			pstmt.setInt(1,product.getCalorie());
			pstmt.setInt(2,product.getProtein());
			pstmt.setInt(3,product.getSaturated_fat());
			pstmt.setInt(4,product.getSalt());
			pstmt.setInt(5,product.getSugars());

			result2 = pstmt.executeUpdate();

			// Other �˷�����
			pstmt = conn.prepareStatement(sql3);

			pstmt.setString(1,product.getIngredient());

			result3 = pstmt.executeUpdate();

			if(result1==0 || result2==0 || result3==0) {
				return false;
			}
			System.out.println("Other ��� ����");
			return true;

		}catch(Exception e){
			System.out.println("addOther ���� : "+e);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException e){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException e){}

		}
		return false;
	}

	// Other ��� ���� getOtherList
	public List getOtherList() {

		String sql = "SELECT p.other_code, p.other_name, p.other_price, " + 
				"n.calorie, n.protein, n.saturated_fat, n.salt, n.sugars, p.other_image " + 
				"FROM other p, nutrient_Other n "+
				"WHERE p.other_code=n.other_code(+) "+
				"ORDER BY p.other_code";

		List list = new ArrayList();

		try{
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while(rs.next()){
				ProductBean product = new ProductBean();

				product.setOther_code(rs.getInt("other_code"));
				product.setOther_name(rs.getString("other_name"));
				product.setOther_price(rs.getInt("other_price"));
				product.setCalorie(rs.getInt("calorie"));
				product.setProtein(rs.getInt("protein"));
				product.setSaturated_fat(rs.getInt("saturated_fat"));
				product.setSalt(rs.getInt("salt"));
				product.setSugars(rs.getInt("sugars"));
				product.setOther_image(rs.getString("other_image"));
				list.add(product);
			}

			return list;
		}catch(Exception e){
			System.out.println("getOtherList ���� : " + e);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException e){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException e){}

		}
		return null;
	}


	// ����/��Ÿ ���� DeleteOther
	public boolean DeleteOther(int code) {

		int result1 = 0;
		int result2 = 0;
		int result3 = 0;
		String sql1 = "Delete FROM nutrient_other WHERE other_code=? ";
		String sql2 = "Delete FROM allergy_other WHERE other_code=? ";
		String sql3 = "Delete FROM other WHERE other_code=? ";

		try{
			System.out.println("DelDao1");
			// nutrient_pizza ����
			pstmt = conn.prepareStatement(sql1);
			pstmt.setInt(1, code);

			result1 = pstmt.executeUpdate();

			System.out.println("DelDao2");
			// allergy_pizza ����
			pstmt = conn.prepareStatement(sql2);
			pstmt.setInt(1, code);

			result2 = pstmt.executeUpdate();

			System.out.println("DelDao3");
			// pizza ����
			pstmt = conn.prepareStatement(sql3);
			pstmt.setInt(1, code);

			result3 = pstmt.executeUpdate();

			if(result1==0 || result2==0 || result3==0) {
				return false;
			}
			System.out.println("other ���� ����");
			return true;

		}catch(Exception e){
			System.out.println("DeleteOther ���� : "+e);
		}finally{
			try{
				if(pstmt!=null) {pstmt.close();}}catch(Exception e) {}

		}
		return false;
	}


// �߰�

	// ���� �˷����� getPizzaAllergy
	public List getPizzaAllergy() {

		String sql = "SELECT  p.pizza_name, a.ingredient "+
				"FROM pizza p, allergy_pizza a "+
				"WHERE p.pizza_code=a.pizza_code(+) "+
				"ORDER BY p.pizza_code";

		List list = new ArrayList();

		try{
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while(rs.next()){
				ProductBean product = new ProductBean();

				product.setPizza_name(rs.getString("pizza_name"));
				product.setIngredient(rs.getString("ingredient"));
				list.add(product);
			}

			return list;
		}catch(Exception e){
			System.out.println("getPizzaAllergy ���� : " + e);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException e){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException e){}

		}
		return null;
	}

	// ���̵� �˷����� getSideAllergy
	public List getSideAllergy() {

		String sql = "SELECT  p.side_name, a.ingredient "+
				"FROM side p, allergy_side a "+
				"WHERE p.side_code=a.side_code(+) "+
				"ORDER BY p.side_code";

		List list = new ArrayList();

		try{
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while(rs.next()){
				ProductBean product = new ProductBean();

				product.setSide_name(rs.getString("side_name"));
				product.setIngredient(rs.getString("ingredient"));
				list.add(product);
			}

			return list;
		}catch(Exception e){
			System.out.println("getPizzaAllergy ���� : " + e);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException e){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException e){}

		}
		return null;
	}


	// ����/��Ÿ �˷����� getOtherAllergy
	public List getOtherAllergy() {

		String sql = "SELECT  p.other_name, a.ingredient "+
				"FROM other p, allergy_side a "+
				"WHERE p.side_other=a.other_code(+) "+
				"ORDER BY p.other_code";

		List list = new ArrayList();

		try{
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while(rs.next()){
				ProductBean product = new ProductBean();

				product.setOther_name(rs.getString("other_name"));
				product.setIngredient(rs.getString("ingredient"));
				list.add(product);
			}

			return list;
		}catch(Exception e){
			System.out.println("getPizzaAllergy ���� : " + e);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException e){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException e){}

		}
		return null;
	}
	
	public ProductBean getPizzaDetail(int code) throws Exception {
	      ProductBean bean = null;
	      try {
	         pstmt = conn.prepareStatement("select * from pizza where pizza_code = ?");
	         pstmt.setInt(1, code);

	         rs = pstmt.executeQuery();

	         if (rs.next()) {
	            bean = new ProductBean();
	            bean.setPizza_code(rs.getInt("pizza_code"));
	            bean.setPizza_image(rs.getString("pizza_image"));
	            bean.setPizza_name(rs.getString("pizza_name"));
	            bean.setPizza_price(rs.getInt("pizza_price"));
	         }
	         return bean;
	      } catch (Exception ex) {
	         System.out.println("getPizzaDetail ���� : " + ex);
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
	      return null;
	   }
	
	public List getMonthStatistic() throws Exception {
	      StatisticBean bean = null;
	      List list =  new ArrayList();
	      try {
	    	 
	    	 String sql = "select extract(month from o.order_date) as month, o.pizza_code, p.pizza_name, count(*)"
	    			 	+ " from user_order o, pizza p"
	    			 	+ " where o.pizza_code = p.pizza_code"
	    			 	+ " group by extract(month from o.order_date), o.pizza_code, p.pizza_name"
	    			 	+ " order by extract(month from o.order_date), count(*) desc";
	    	 
	    	 
	         pstmt = conn.prepareStatement(sql);
	         
	         rs = pstmt.executeQuery();
	         

	         while (rs.next()) {
	        	
	            bean = new StatisticBean();
	                        
				
				bean.setMonth(rs.getInt("month"));
				bean.setPizza_code(rs.getInt("pizza_code"));
				bean.setPizza_name(rs.getString("pizza_name"));
				bean.setCount(rs.getInt("count(*)"));
				list.add(bean);
				 

	         }
	         System.out.println("getMonthStatistic ����");
	         return list;
	         
	      } catch (Exception ex) {
	         System.out.println("getMonthStatistic ���� : " + ex);
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
	      return null;
	}
	
	public List getRank() throws Exception {
	      ProductBean bean = null;
	      List list =  new ArrayList();
	      try {
	    	 
	    	 String sql = "select rownum list, pizza_name, pizza_image from"
	    			 	+ " (select p.pizza_name, p.pizza_image, count(*)  from user_order o, pizza p"
	    			 	+ " where o.pizza_code = p.pizza_code"
	    			 	+ " group by p.pizza_name, p.pizza_image"
	    			 	+ " order by count(*) desc) where rownum <=3";
	    	 
	    	 
	         pstmt = conn.prepareStatement(sql);
	         
	         rs = pstmt.executeQuery();
	         

	         while (rs.next()) {
	        	
	            bean = new ProductBean();
	                        
				bean.setPizza_name(rs.getString("pizza_name"));
				bean.setPizza_image(rs.getString("pizza_image"));
				list.add(bean);
				 

	         }
	         System.out.println("getRank ����");
	         return list;
	         
	      } catch (Exception ex) {
	         System.out.println("getRank ���� : " + ex);
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
	
	      return null;
	
	

	}
}
