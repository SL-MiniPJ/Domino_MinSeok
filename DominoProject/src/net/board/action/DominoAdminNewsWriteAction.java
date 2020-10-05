package net.board.action;

import java.io.File;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import net.board.action.*;
import net.board.db.*;

public class DominoAdminNewsWriteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ActionForward forward = new ActionForward();
		NewsBean newsbean = new NewsBean();
		NewsDAO newsdao = new NewsDAO();
		
		 String uploadPath=request.getRealPath("newsupload");
		 System.out.println("DominoAdminNewsWriteAction 들어옴");
		 System.out.println("업로드폴더 경로 : " + uploadPath);
		 
		 
		   int size = 10*1024*1024;
		   
		   String title="";
		   String bulletin="";
		   String filename = "";
		   boolean check = false;
		   
		   
		   try{
		      MultipartRequest multi=new MultipartRequest(request,
		                     uploadPath,
		                     size, 
		                     "UTF-8",
		            new DefaultFileRenamePolicy());

		      title=multi.getParameter("news_title");
		      bulletin=multi.getParameter("news_bulletin");
		      
		      Enumeration files=multi.getFileNames();
		      
		      String file =(String)files.nextElement();
		      filename=multi.getFilesystemName(file);

		      		      
		   }catch(Exception e){
			   System.out.println("파일 받아오기 실패,,");
		      e.printStackTrace();
		      return null;
		   }
		   
		   newsbean.setTitle(title);
		   newsbean.setBulletin(bulletin);
		   newsbean.setAdd_file(filename);
		   
		   check = newsdao.newsWrite(newsbean);
		   
		   if(check == true) {
			   System.out.println("newsdao로 들어가서 저장하기 성공");
		   } else {
			   System.out.println("newsdao에서 newsWrite 실패");
		   }
		   
		   
		   forward.setRedirect(true);
		   forward.setPath("AdminNewsList.bo");
		   return forward;
		
	}

}
