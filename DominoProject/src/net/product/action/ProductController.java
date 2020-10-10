package net.product.action;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ProductController extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {

	private void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 웹 페이지의 주소
		String RequestURI = request.getRequestURI();

		// 다이나믹 웹 프로젝트 명 까지의 주소
		String contaxtPath = request.getContextPath();

		// 웹 페이지의 주소에서 다이나믹 웹 프로젝트 명 까지의 주소를 잘라내고 남은 것을 command에 저장.
		String command = RequestURI.substring(contaxtPath.length());
		
		System.out.println("현재 주소 : " + RequestURI);

		// 접근 경로 및 전송 방식을 전달할 용도
		ActionForward forward  = null;
		Action action = null;


		if(command.equals("/web.dominos.co.kr/admin/Product.pro")){ // 쓰읍.. 여기서 시작하면 조회 불가
			// 메인 페이지
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("product_List.jsp");

		}else if(command.equals("/web.dominos.co.kr/admin/PizzaAddAction.pro")) {
			// 피자 추가
			action = new PizzaAddAction();
			System.out.println("controller");
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}

		}else if(command.equals("/web.dominos.co.kr/admin/SideAddAction.pro")) {
			// 사이드 추가
			action = new SideAddAction();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}

		}else if(command.equals("/web.dominos.co.kr/admin/DoughAddAction.pro")) {
			// 도우 추가
			action = new DoughAddAction();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}

		}else if(command.equals("/web.dominos.co.kr/admin/ToppingAddAction.pro")) {
			// 토핑 추가
			action = new ToppingAddAction();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}

		}else if(command.equals("/web.dominos.co.kr/admin/OtherAddAction.pro")) {
			// 음료/기타 추가
			action = new OtherAddAction();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}			


		}else if(command.equals("/web.dominos.co.kr/admin/PizzaListAction.pro")) {
			// 피자 목록
			action = new PizzaListAction();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}

		}else if(command.equals("/web.dominos.co.kr/admin/SideListAction.pro")) {
			// 사이드 목록
			action = new SideListAction();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}

		}else if(command.equals("/web.dominos.co.kr/admin/DoughListAction.pro")) {
			// 도우 목록
			action = new DoughListAction();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}

		}else if(command.equals("/web.dominos.co.kr/admin/ToppingListAction.pro")) {
			// 토핑 목록
			action = new ToppingListAction();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}

		}else if(command.equals("/web.dominos.co.kr/admin/OtherListAction.pro")) {
			// 음료/기타 목록
			action = new OtherListAction();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}

		}else if(command.equals("/web.dominos.co.kr/admin/PizzaDeleteAction.pro")) {
			// 피자 삭제
			action = new PizzaDeleteAction();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}

		}else if(command.equals("/web.dominos.co.kr/admin/SideDeleteAction.pro")) {
			// 사이드 삭제
			action = new SideDeleteAction();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}

		}else if(command.equals("/web.dominos.co.kr/admin/DoughDeleteAction.pro")) {
			// 도우 삭제
			action = new DoughDeleteAction();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}

		}else if(command.equals("/web.dominos.co.kr/admin/ToppingDeleteAction.pro")) {
			// 토핑 삭제
			action = new ToppingDeleteAction();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}

		}else if(command.equals("/web.dominos.co.kr/admin/OtherDeleteAction.pro")) {
			// 음료/기타 삭제
			action = new OtherDeleteAction();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		else if(command.equals("/web.dominos.co.kr/goods/MenuListPizza.pro")) {
			// 메뉴 리스트 보기
			System.out.println("MenuListPizza.pro 들어옴");
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("menuListPizza.jsp");
		}
		
		else if(command.equals("/web.dominos.co.kr/goods/MenuListSide.pro")) {
			// 메뉴 리스트 보기
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("menuListSide.jsp");
		}
		
		else if(command.equals("/web.dominos.co.kr/goods/MenuListOther.pro")) {
			// 메뉴 리스트 보기
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("menuListOther.jsp");
		}
		
		else if(command.equals("/web.dominos.co.kr/goods/PizzaDetail.pro")) {
			// 피자 상세
			System.out.println("PizzaDetail.pro 들어옴");
			action = new PizzaDetail();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		// 월별 통계 추가
		else if(command.equals("/web.dominos.co.kr/admin/AdminMonthStatistic.pro")) {
			// 메뉴 리스트 보기
			System.out.println("AdminMonthStatistic.pro 들어옴");
			action = new DominoAdminMonthStatistic();
			try{
				forward = action.execute(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		
		
	
	


		if(forward.isRedirect()){
			// isRedirect = false : Forward
			response.sendRedirect(forward.getPath());
		}else{
			// isRedirect = true : sendRedirect
			RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
			dispatcher.forward(request, response);
		}
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
}
