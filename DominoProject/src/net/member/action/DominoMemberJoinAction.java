package net.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.member.action.ActionForward;
import net.member.db.MemberBean;
import net.member.db.MemberDAO;

public class DominoMemberJoinAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		MemberDAO memberdao = new MemberDAO();
		MemberBean memberbean = new MemberBean();
		
		boolean check = false;
		
		
		String address = request.getParameter("sample4_postcode") + " "
						+ request.getParameter("sample4_roadAddress") + " "
						+ request.getParameter("sample4_detailAddress") + " "
						+ request.getParameter("sample4_extraAddress");
		
		
		String birthday = request.getParameter("byear")+"/"
						+ request.getParameter("bmonth")+"/"
						+ request.getParameter("bday");
		
		String phone = request.getParameter("tel1")+"-"
					 + request.getParameter("tel2")+"-"
					 + request.getParameter("tel3");
		
		memberbean.setMember_id(request.getParameter("inputId"));
		memberbean.setMember_pw(request.getParameter("inputPw"));
		memberbean.setMember_mail(request.getParameter("email"));
		memberbean.setMember_name(request.getParameter("inputName"));
		memberbean.setMember_phone(phone);
		memberbean.setMember_birthday(birthday);
		memberbean.setMember_address(address);
		
		//ȸ������ �Ϸ��������� ���� ���� ���� ���θ� ������ ������ ����
		request.setAttribute("joinChk", "Access");
	
		
		check = memberdao.memberJoin(memberbean);
		
		if(check==true) {
			System.out.println("ȸ������ ����");
		}
		else {
			System.out.println("ȸ������ ����");
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('ȸ�����Կ� �����߽��ϴ�.');");
			out.println("location.href='./JoinForm.me';");
			out.println("</script>");
			out.close();
			return null;
		}

		
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./joinComplete.jsp");
		return forward;
	}

}
