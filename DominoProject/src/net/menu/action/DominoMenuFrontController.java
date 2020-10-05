package net.menu.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.menu.action.*;


@WebServlet("/DominoMenuFrontController")
public class DominoMenuFrontController extends HttpServlet {
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

		if(command.equals("/web.dominos.co.kr/goods/MenuList.menu")) {
			action = new DominoMenuListView();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		else if(command.equals("/web.dominos.co.kr/admin/AdminPizzaAddForm.menu")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./adminPizzaAddForm.jsp");
		}
		
		else if(command.equals("/web.dominos.co.kr/admin/AdminPizzaAddAction.menu")) {
			action = new DominoAdminPizzaAddAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		else if(command.equals("/web.dominos.co.kr/admin/AdminPizzaAddComplete.menu")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./adminPizzaAddComplete.jsp");
		}
		
		/*
		else if(command.equals("/web.dominos.co.kr/admin/AdminStoreAddView.st")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./adminStoreAddForm.jsp");
		}
		*/
		
		
		
		

		//--------------------------------------------------------------------------------------------
		if (forward.isRedirect()) {
			response.sendRedirect(forward.getPath());
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
			dispatcher.forward(request, response);
		}
		
	}
	
}