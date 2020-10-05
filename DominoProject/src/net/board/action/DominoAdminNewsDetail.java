package net.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.board.db.*;

public class DominoAdminNewsDetail implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("DominoAdminNewsDetail µé¾î¿È");
		
		ActionForward forward= new ActionForward();
		NewsDAO newsdao = new NewsDAO();
		NewsBean newsbean = new NewsBean();
		
		int list_num = Integer.parseInt(request.getParameter("num"));
		newsbean = newsdao.getNewsDetail(list_num);
		
		request.setAttribute("newsbean", newsbean);
		
		forward.setRedirect(false);
		forward.setPath("adminNewsDetail.jsp");
		return forward;
		
	}

}
