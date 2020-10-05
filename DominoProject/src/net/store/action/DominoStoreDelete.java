package net.store.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.store.action.*;
import net.store.db.*;

public class DominoStoreDelete implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");

		ActionForward forward = new ActionForward();

		boolean result = false;
		int store_code = Integer.parseInt(request.getParameter("store_code"));

		StoreDAO storedao = new StoreDAO();


		result = storedao.storeDelete(store_code);
		if (result == false) {
			System.out.println("매장 삭제 실패");
			return null;
		}

		System.out.println("매장 삭제 성공");
		forward.setRedirect(true);
		forward.setPath("./AdminStoreList.st");
		return forward;
	}
}