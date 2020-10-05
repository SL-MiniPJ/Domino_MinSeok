package net.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.member.db.*;

public class DominoAdminMemberDelete implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ActionForward forward = new ActionForward();
		MemberDAO memberdao = new MemberDAO();
		boolean result = false;
		String member_id = request.getParameter("member_id");
		
		result = memberdao.memberDelete(member_id);
		
		if (result == false) {
			System.out.println("ȸ�� ���� ����");
			return null;
		}

		System.out.println("ȸ�� ���� ����");
		forward.setRedirect(true);
		forward.setPath("./AdminMemberList.me");
		return forward;
		
	}

}
