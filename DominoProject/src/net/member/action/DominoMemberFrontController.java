package net.member.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.member.action.*;


@WebServlet("/DominoMemberFrontController")
public class DominoMemberFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doProcess(request, response);
	}

	private void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());


		// ���� �ּ� Ȯ���ϱ�
		System.out.println("���� �ּ� : " + RequestURI);
		
		ActionForward forward = null;
		Action action = null;

		if(command.equals("/web.dominos.co.kr/global/Login.me")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./login.jsp");
			
		}
		else if(command.equals("/web.dominos.co.kr/global/Logout.me")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./logout.jsp");
			
		}
		
		else if (command.equals("/web.dominos.co.kr/global/LoginAction.me")) {
			action = new DominoMemberLoginAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} 
		
		else if (command.equals("/web.dominos.co.kr/global/NMLoginAction.me")) {
			action = new DominoNMLoginAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				System.out.println("NMLoginAction ����");
				e.printStackTrace();
			}
		} 
		
		else if (command.equals("/web.dominos.co.kr/member/JoinForm.me")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./joinForm.jsp");
			
		} 
		
		else if (command.equals("/web.dominos.co.kr/member/JoinAction.me")) {
			action = new DominoMemberJoinAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		else if (command.equals("/web.dominos.co.kr/member/MemberPage.me")) {
			action = new DominoMemberDetail();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		} 
			
		/*
		
		else if (command.equals("/JoinAction.me")) {
			action = new DominoMemberJoinAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} 
		
		else if (command.equals("/MemberList.me")) {
			action = new DominoMemberListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} 
		
		else if (command.equals("/MemberInfo.me")) {
			action = new DominoMemberViewAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if (command.equals("/MemberDelete.me")) {
			action = new DominoMemberDeleteAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		*/


		if (forward.isRedirect()) {
			response.sendRedirect(forward.getPath());
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
			dispatcher.forward(request, response);
		}
		
	}
	
}
