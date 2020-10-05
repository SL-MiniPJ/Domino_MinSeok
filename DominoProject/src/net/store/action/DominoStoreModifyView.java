package net.store.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.store.db.StoreBean;
import net.store.db.StoreDAO;

public class DominoStoreModifyView implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	      StoreDAO storedao=new StoreDAO();
	      StoreBean bean = null;
	      
	      bean = storedao.getStoreDetail(Integer.parseInt(request.getParameter("store_code")));
	      request.setAttribute("storedetail", bean);
	      
	      ActionForward forward= new ActionForward();
	         forward.setRedirect(false);
	         forward.setPath("./adminStoreModifyForm.jsp");
	         return forward;
	    }
	 }
