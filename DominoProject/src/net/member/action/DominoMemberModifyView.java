package net.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.member.db.MemberBean;
import net.member.db.MemberDAO;

public class DominoMemberModifyView implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		MemberDAO memberdao=new MemberDAO();
	      MemberBean bean = null;
	      
	      bean = memberdao.getMemberDetail(request.getParameter("loginId"));
	      request.setAttribute("memberDetail", bean);
	      
	      ActionForward forward= new ActionForward();
	         forward.setRedirect(false);
	         forward.setPath("./memberModifyForm.jsp");
	         return forward;
	    }
	 }