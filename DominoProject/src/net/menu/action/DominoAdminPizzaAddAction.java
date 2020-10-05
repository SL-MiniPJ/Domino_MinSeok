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
		 System.out.println("DominoAdminPizzaAddAction 들어옴");
		 System.out.println("업로드폴더 경로 : " + uploadPath);
		 
		 
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
			   System.out.println("파일 받아오기 실패,,");
		      e.printStackTrace();
		      return null;
		   }
		   
		   pizzabean.setPizza_name(pizza_name);
		   pizzabean.setPizza_price(pizza_price);
		   pizzabean.setPizza_image(bufs);
		   
		   check = pizzadao.pizzaAdd(pizzabean);
		   
		   if(check == true) {
			   System.out.println("pizzadao로 들어가서 저장하기 성공");
		   } else {
			   System.out.println("pizzadao에서 pizzaAdd 실패");
		   }
		   
		   
		   forward.setRedirect(false);
		   forward.setPath("AdminPizzaAddComplete.menu");
		   return forward;
		
	}

}
