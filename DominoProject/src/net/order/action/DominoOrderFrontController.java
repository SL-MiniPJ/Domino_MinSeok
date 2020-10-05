package net.order.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.store.action.Action;
import net.store.action.ActionForward;
import net.store.action.DominoStoreAddAction;
import net.store.action.DominoStoreDelete;
import net.store.action.DominoStoreDetail;
import net.store.action.DominoStoreList;
import net.store.action.DominoStoreModifyAction;
import net.store.action.DominoStoreModifyView;


@WebServlet("/DominoOrderFrontController")
public class DominoOrderFrontController extends HttpServlet {
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

		if(command.equals("/web.dominos.co.kr/")) {
			action = new DominoStoreList();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}


		if (forward.isRedirect()) {
			response.sendRedirect(forward.getPath());
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
			dispatcher.forward(request, response);
		}
		
	}
	
}