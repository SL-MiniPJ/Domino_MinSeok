package net.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.member.action.ActionForward;
import net.member.db.MemberDAO;

public class DominoMemberLoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		MemberDAO memberdao = new MemberDAO();
		
		//id, pw �޾ƿ�
		String inputId = request.getParameter("id");
		String inputPw = request.getParameter("passwd");

		boolean usercheck = false;

		// ��й�ȣ Ȯ��
		usercheck = memberdao.isUser(inputId, inputPw);

		//��й�ȣ Ʋ�� ���
		if (usercheck == false) {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('���̵� ��й�ȣ�� �߸��Ǿ����ϴ�.');");
			out.println("location.href='./Login.me';");
			out.println("</script>");
			out.close();
			return null;
		}
		
		//ȸ�� �ڵ� �޾ƿ´�.
		int loginCode = memberdao.getMemberCode(inputId);
		
		//���� ������ ���̵�� ȸ���ڵ� ����
		HttpSession session = request.getSession();
		session.setAttribute("loginId", inputId);
		session.setAttribute("loginCode", loginCode);

		//��� ����
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("../Main.do");
		return forward;
	}
}
