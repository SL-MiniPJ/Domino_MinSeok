package net.board.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.action.*;

/**
 * Servlet implementation class DominoBoardFrontController
 */
@WebServlet("/DominoBoardFrontController")
public class DominoBoardFrontController extends HttpServlet {
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


		// 현재 주소 확인하기
		System.out.println("현재 주소 : " + RequestURI);
		
		ActionForward forward = null;
		Action action = null;

		if(command.equals("/web.dominos.co.kr/admin/AdminNewsList.bo")) {
			action = new DominoAdminNewsList();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		else if(command.equals("/web.dominos.co.kr/admin/AdminNewsDetail.bo")) {
			action = new DominoAdminNewsDetail();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		else if(command.equals("/web.dominos.co.kr/admin/AdminNewsWriteView.bo")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./adminNewsWriteView.jsp");
		}
		
		else if(command.equals("/web.dominos.co.kr/admin/AdminNewsWriteAction.bo")) {
			action = new DominoAdminNewsWriteAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		else if(command.equals("/web.dominos.co.kr/admin/AdminNewsDeleteAction.bo")) {
			action = new DominoAdminNewsDeleteAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		
		/*
		else if(command.equals("/web.dominos.co.kr/admin/AdminStoreAddView.st")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./adminStoreAddForm.jsp");
		}
		*/
		
		

		//---------------------------------------------------------------------------------------//
		if (forward.isRedirect()) {
			response.sendRedirect(forward.getPath());
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
			dispatcher.forward(request, response);
		}
		
	}
	
}