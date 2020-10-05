package net.store.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.store.action.*;
import net.store.db.*;

public class DominoStoreList implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		StoreDAO Storedao=new StoreDAO();
	      List storelist=new ArrayList();
	      int storecount = 0;
	       

	      storelist = Storedao.getStoreList(); //리스트를 받아옴.
	      storecount = Storedao.getStoreCount(); //리스트 개수를 받아옴.
	      

	      request.setAttribute("storecount", storecount); //매장 수.
	      request.setAttribute("storelist", storelist);
	      
	      ActionForward forward= new ActionForward();
	         forward.setRedirect(false);
	         forward.setPath("./adminStoreList.jsp");
	         return forward;
	    }
	 }
