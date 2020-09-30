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
		
		//id, pw 받아옴
		String inputId = request.getParameter("id");
		String inputPw = request.getParameter("passwd");

		boolean usercheck = false;

		// 비밀번호 확인
		usercheck = memberdao.isUser(inputId, inputPw);

		//비밀번호 틀린 경우
		if (usercheck == false) {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('아이디나 비밀번호가 잘못되었습니다.');");
			out.println("location.href='./Login.me';");
			out.println("</script>");
			out.close();
			return null;
		}
		
		//회원 코드 받아온다.
		int loginCode = memberdao.getMemberCode(inputId);
		
		//세션 영역에 아이디와 회원코드 저장
		HttpSession session = request.getSession();
		session.setAttribute("loginId", inputId);
		session.setAttribute("loginCode", loginCode);

		//경로 지정
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("../Main.do");
		return forward;
	}
}
