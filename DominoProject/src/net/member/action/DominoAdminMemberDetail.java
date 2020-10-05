package net.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.member.db.*;

public class DominoAdminMemberDetail implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	     MemberDAO memberdao=new MemberDAO();
	      MemberBean bean = null;
	      
	      bean = memberdao.getMemberDetail(request.getParameter("member_id"));
	      request.setAttribute("memberdetail", bean);
	      
	      ActionForward forward= new ActionForward();
	         forward.setRedirect(false);
	         forward.setPath("./adminMemberDetail.jsp");
	         return forward;
	    }
	 }
