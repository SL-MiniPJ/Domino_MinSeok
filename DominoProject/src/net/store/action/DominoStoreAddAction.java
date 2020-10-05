package net.store.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.store.action.*;
import net.store.db.*;

public class DominoStoreAddAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		StoreDAO storedao = new StoreDAO();
		StoreBean storebean = new StoreBean();
		
		boolean check = false;
		
		
		String address = request.getParameter("sample4_postcode") + " "
						+ request.getParameter("sample4_roadAddress") + " "
						+ request.getParameter("sample4_detailAddress") + " "
						+ request.getParameter("sample4_extraAddress");
		
		String phone = request.getParameter("tel1")+"-"
				 + request.getParameter("tel2")+"-"
				 + request.getParameter("tel3");
		
		storebean.setStore_name(request.getParameter("inputStoreName"));
		storebean.setStore_address(address);
		storebean.setStore_location(request.getParameter("inputStoreLocation"));
		storebean.setStore_phone(phone);
		storebean.setStore_opening(request.getParameter("inputStoreOpening"));
		
		if(request.getParameter("inputStorePark") == null)
			storebean.setStore_park("-");
		else
			storebean.setStore_park(request.getParameter("inputStorePark"));
		
		if(request.getParameter("inputStoreOther") == null)
			storebean.setStore_other("-");
		else
			storebean.setStore_other(request.getParameter("inputStoreOther"));
		
		if(request.getParameter("inputStoreOnline") == null)
			storebean.setStore_online(0);
		else
			storebean.setStore_online(Integer.parseInt(request.getParameter("inputStoreOnline")));
		
		if(request.getParameter("inputStoreOffline") == null)
			storebean.setStore_offline(0);
		else
			
			storebean.setStore_offline(Integer.parseInt(request.getParameter("inputStoreOffline")));
		if(request.getParameter("inputStoreSale") == null)
			storebean.setStore_sale(0);
		else
			storebean.setStore_sale(Integer.parseInt(request.getParameter("inputStoreSale")));
		
		check = storedao.storeAdd(storebean);
		
		if(check==true) {
			System.out.println("매장등록 성공");
		}
		else {
			System.out.println("매장등록 실패");
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('매장등록에 실패했습니다.');");
			out.println("location.href='./AdminStoreAddView';");
			out.println("</script>");
			out.close();
			return null;
		}

		
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("./AdminStoreList.st");
		return forward;
	}

}
