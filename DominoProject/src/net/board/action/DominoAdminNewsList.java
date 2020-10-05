package net.board.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.action.*;
import net.board.db.*;

public class DominoAdminNewsList implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("DominoAdminNewsList 커맨드액션 들어옴");
		
		ActionForward forward = new ActionForward();
		NewsDAO newsdao = new NewsDAO();
		NewsBean newsbean = new NewsBean();
		List newslist=new ArrayList();
		
		int listcount = newsdao.getListCount();
		newslist = newsdao.getNewsList();
		
		request.setAttribute("newslist", newslist);
		request.setAttribute("listcount", listcount);
		
		forward.setRedirect(false);
		forward.setPath("./adminNewsList.jsp");
		return forward;
	}

}
