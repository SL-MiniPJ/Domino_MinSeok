package net.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.db.NewsDAO;

public class DominoAdminNewsDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		NewsDAO newsdao = new NewsDAO();
		boolean check = false;
		int list_num = Integer.parseInt(request.getParameter("list_num"));
		
		check = newsdao.newsDelete(list_num);
		
		if(check == false) {
			System.out.println("뉴스 삭제 실패");
			return null;
		}
		
		forward.setRedirect(true);
		forward.setPath("AdminNewsList.bo");
		return forward;
	}

}
