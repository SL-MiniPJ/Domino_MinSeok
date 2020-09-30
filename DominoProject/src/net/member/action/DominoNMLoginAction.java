package net.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.member.db.MemberBean;
import net.member.db.MemberDAO;
import net.member.db.NonMemberBean;

public class DominoNMLoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		MemberDAO memberdao = new MemberDAO();
		NonMemberBean nonmemberbean = new NonMemberBean();
		
		boolean check = false;
		
		String phone = request.getParameter("hp1")+"-"
					 + request.getParameter("hp2")+"-"
					 + request.getParameter("hp3");
		
		nonmemberbean.setNonmember_name(request.getParameter("name"));
		nonmemberbean.setNonmember_phone(phone);

		//��ȸ�� �����ϱ� ���� �ĺ��� ����
		HttpSession session = request.getSession();
		session.setAttribute("isNonmember", true);
		session.setAttribute("nmembername", request.getParameter("name"));
	
		
		check = memberdao.nonmemberJoin(nonmemberbean);
		
		if(check==true) {
			System.out.println("��ȸ�� �α��� ����");
		}
		else {
			System.out.println("��ȸ�� �α��� ����");
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('��ȸ�� ��� ����!');");
			out.println("location.href='./Login.me';");
			out.println("</script>");
			out.close();
			return null;
		}

		
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("../Main.do");
		return forward;
	}

}
