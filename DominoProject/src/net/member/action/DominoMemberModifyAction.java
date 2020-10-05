package net.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.member.action.*;
import net.member.db.*;

public class DominoMemberModifyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		MemberDAO memberdao = new MemberDAO();
		MemberBean memberbean = new MemberBean();
		
		boolean check = false;
		
		String member_id = request.getParameter("loginId");
		System.out.println(member_id);
		System.out.println(request.getRequestURL());
		System.out.println(request.getRequestURI());
		
		String address = request.getParameter("sample4_postcode") + " "
						+ request.getParameter("sample4_roadAddress") + " "
						+ request.getParameter("sample4_detailAddress") + " "
						+ request.getParameter("sample4_extraAddress");
		
		String phone = request.getParameter("tel1")+"-"
				 + request.getParameter("tel2")+"-"
				 + request.getParameter("tel3");
		
		memberbean.setMember_pw(request.getParameter("inputPw"));
		memberbean.setMember_phone(phone);
		memberbean.setMember_address(address);
	
		check = memberdao.memberModify(memberbean, member_id);
		
		if(check==true) {
			System.out.println("정보수정 성공");
		}
		else {
			System.out.println("정보수정 실패");
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('정보수정에 실패했습니다.');");
			out.println("location.href='./MemberPage.me';");
			out.println("</script>");
			out.close();
			return null;
		}

		
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("./MemberPage.me?loginId=" + member_id);
		return forward;
	}

}
