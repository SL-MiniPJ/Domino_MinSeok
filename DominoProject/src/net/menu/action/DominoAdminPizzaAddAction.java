package net.menu.action;

import java.io.File;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import net.menu.db.*;

public class DominoAdminPizzaAddAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ActionForward forward = new ActionForward();
		PizzaBean pizzabean = new PizzaBean();
		PizzaDAO pizzadao = new PizzaDAO();
		
		 String uploadPath=request.getRealPath("pizzaupload");
		 System.out.println("DominoAdminPizzaAddAction ����");
		 System.out.println("���ε����� ��� : " + uploadPath);
		 
		 
		   int size = 10*1024*1024;
		   
		   String pizza_name="";
		   int pizza_price;
		   //String filename="";
		   
		   File file = null;
		   byte[] bufs = null;
		   boolean check = false;
		   
		   try{
		      MultipartRequest multi=new MultipartRequest(request,
		                     uploadPath,
		                     size, 
		                     "UTF-8",
		            new DefaultFileRenamePolicy());

		      pizza_name=multi.getParameter("pizza_name");
		      pizza_price=Integer.parseInt(multi.getParameter("pizza_price"));
		      file = multi.getFile("filename");
		      
		      bufs = FileUtils.readFileToByteArray(file);
		      		      
		   }catch(Exception e){
			   System.out.println("���� �޾ƿ��� ����,,");
		      e.printStackTrace();
		      return null;
		   }
		   
		   pizzabean.setPizza_name(pizza_name);
		   pizzabean.setPizza_price(pizza_price);
		   pizzabean.setPizza_image(bufs);
		   
		   check = pizzadao.pizzaAdd(pizzabean);
		   
		   if(check == true) {
			   System.out.println("pizzadao�� ���� �����ϱ� ����");
		   } else {
			   System.out.println("pizzadao���� pizzaAdd ����");
		   }
		   
		   
		   forward.setRedirect(false);
		   forward.setPath("AdminPizzaAddComplete.menu");
		   return forward;
		
	}

}
