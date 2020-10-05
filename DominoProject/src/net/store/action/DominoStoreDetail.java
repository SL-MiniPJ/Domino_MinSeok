package net.store.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.store.action.*;
import net.store.db.*;

public class DominoStoreDetail implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	      StoreDAO storedao=new StoreDAO();
	      StoreBean bean = null;
	      
	      bean = storedao.getStoreDetail(Integer.parseInt(request.getParameter("store_code")));
	      request.setAttribute("storedetail", bean);
	      
	      ActionForward forward= new ActionForward();
	         forward.setRedirect(false);
	         forward.setPath("./adminStoreDetail.jsp");
	         return forward;
	    }
	 }
